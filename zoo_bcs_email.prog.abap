*&---------------------------------------------------------------------*
*& Report  ZOO_BCS_EMAIL
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_bcs_email.



****Mail Objects
DATA: send_request TYPE REF TO cl_bcs,
      document     TYPE REF TO cl_document_bcs,
      sender       TYPE REF TO cl_sapuser_bcs,
      recipient    TYPE REF TO if_recipient_bcs.

DATA: l_mailtext TYPE soli_tab,
      l_mailhex  TYPE solix_tab,
      l_subject  TYPE so_obj_des.
FIELD-SYMBOLS: <wa_mail>  LIKE LINE OF l_mailtext,
               <wa_mailx> LIKE LINE OF l_mailhex.

****Create the Subject Line
l_subject =  'Hello World from Email'(sb1).

**** Create Persistent Send Request
send_request = cl_bcs=>create_persistent( ).

****Create the document Body
DATA body TYPE string.
DATA label TYPE string.
***Beginning of Table
CONCATENATE body `<table cellspacing="1" cellpadding="1" width="400" border="0">`
            INTO body.
CONCATENATE body `<tbody>` INTO body.

CONCATENATE body `<tr><td valign="top"><strong>`
            `Hello World!`
            `</strong></td><td>`
            `From my HTML Email Program` `</td></tr>`
            INTO body.
***End of Table
CONCATENATE body `</tbody></table><br><br>` INTO body.

l_mailtext = cl_document_bcs=>string_to_soli( body ).

document = cl_document_bcs=>create_document(
    i_type = 'HTM'
    i_text = l_mailtext
    i_subject = l_subject ).

****Add Document to Send Request
send_request->set_document( document ).

****Get the Sender Object from the Current Logged on User
sender = cl_sapuser_bcs=>create( sy-uname ).

****Add Sender to the Send Request
send_request->set_sender( sender ).

****Create recipient(s)
recipient = cl_cam_address_bcs=>create_internet_address(
  `thomas.jung@sap.com` ).
send_request->add_recipient( recipient ).

****Set the Send Immediately Flag
send_request->set_send_immediately( abap_true ).

****Send Document
send_request->send( ).
COMMIT WORK.

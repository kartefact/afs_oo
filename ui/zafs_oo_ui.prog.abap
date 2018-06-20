*&---------------------------------------------------------------------*
*& Report  ZAFS_OO_UI
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zafs_oo_ui.
DATA: controller TYPE REF TO zcl_dynp_ctrl_afs_oo.
DATA: ok_code TYPE syucomm.
DATA: sflight_wa TYPE sflight.
SELECT-OPTIONS: s_carrid FOR sflight_Wa-carrid OBLIGATORY.

START-OF-SELECTION.

   create object controller EXPORTING i_carrid = s_carrid[].
  call screen 100.

*&---------------------------------------------------------------------*
*&      Module  status_0100  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module status_0100 output.
  set pf-status 'MAIN'.
  set titlebar '100'.
endmodule.                 " status_0100  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  user_command_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module user_command_0100 input.
  controller->pai(
  exporting
     ok_code = ok_code ).
  clear ok_code.
endmodule.                 " user_command_0100  INPUT
*&---------------------------------------------------------------------*
*&      Module  pbo_0100  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module pbo_0100 output.
  controller->pbo( ).
endmodule.                 " pbo_0100  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  exit_dynp_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module exit_dynp_0100 input.
  case ok_code.
    when 'BACK' or 'CANC' or 'EXIT'.
      clear ok_code.
      controller->free_controls( ).
      leave to screen 0.
  endcase.
endmodule.                 " exit_dynp_0100  INPUT

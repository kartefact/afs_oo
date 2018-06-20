*&---------------------------------------------------------------------*
*& Report  ZOO_TUT_PERSIST_PROG1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tut_persist_prog2.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME.
PARAMETER:
  p_carrid TYPE sflight-carrid DEFAULT 'AA',
  p_connid TYPE sflight-connid DEFAULT '0017',
  p_fldate TYPE sflight-fldate DEFAULT '20080130'.
SELECTION-SCREEN END OF BLOCK b1.

DATA:
  lr_flight TYPE REF TO zcl_oo_tut_pers_sflight,
  seatsocc TYPE sflight-seatsocc,
  seatsmax TYPE sflight-seatsmax,
  seatsfree TYPE sflight-seatsocc,
  ierr TYPE REF TO cx_root,
  ierr2 TYPE REF TO cx_os_system_error,
  ierr3 TYPE REF TO cx_os_error.

TRY.

****Use the Agent Class to create an instance of our Persistent Class
    lr_flight = zca_oo_tut_pers_sflight=>agent->get_persistent(
       i_carrid = p_carrid
       i_connid = p_connid
       i_fldate = p_fldate ).

****Perform Calculations using our Get Methods instead of the attributes directly
    seatsfree = lr_flight->get_seatsmax( ) - lr_flight->get_seatsocc( ).
    seatsmax  = lr_flight->get_seatsmax( ).
    seatsocc  = lr_flight->get_seatsocc( ).

    WRITE: / 'Seats Free: '(001), seatsfree.
    WRITE: / 'Seats Max: '(002), seatsmax.
    WRITE: / 'Seats Occupied: '(003), seatsocc.

    IF seatsfree > 0.
      WRITE: / 'Now Booking a new Person'(004).
      seatsocc = lr_flight->get_seatsocc( ) + 1.
      lr_flight->set_seatsocc( seatsocc ).
      COMMIT WORK AND WAIT.

      lr_flight = zca_oo_tut_pers_sflight=>agent->get_persistent(
         i_carrid = p_carrid
         i_connid = p_connid
         i_fldate = p_fldate ).

      seatsfree = lr_flight->get_seatsmax( ) - lr_flight->get_seatsocc( ).
      seatsmax  = lr_flight->get_seatsmax( ).
      seatsocc  = lr_flight->get_seatsocc( ).

      WRITE: / 'Seats Free: '(001), seatsfree.
      WRITE: / 'Seats Max: '(002), seatsmax.
      WRITE: / 'Seats Occupied: '(003), seatsocc.
    ENDIF.

    DATA query_mng TYPE REF TO if_os_query_manager.
    DATA query_by_sflight TYPE REF TO if_os_query.
    query_mng = cl_os_system=>get_query_manager( ).
    query_by_sflight = query_mng->create_query(
                       i_filter = `CARRID = PAR1 AND CONNID = PAR2 AND FLDATE = PAR3` ).

    data lt_sbooks TYPE OSREFTAB.
    lt_sbooks = zca_oo_tut_pers_sbook=>agent->if_os_ca_persistency~get_persistent_by_query(
        i_query = query_by_sflight
        i_par1  = p_carrid
        i_par2  = p_connid
        i_par3  = p_fldate ).

    FIELD-SYMBOLS <Wa_sbook>.
    data lr_sbook type ref to zcl_oo_tut_pers_sbook.
    data booking_id type sbook-bookid.
    data cust_id    type sbook-customid.
    loop at lt_sbooks ASSIGNING <Wa_sbook>.
      lr_sbook ?= <Wa_sbook>.
      booking_id = lr_sbook->get_bookid( ).
      cust_id = lr_sbook->get_customid( ).
      WRITE: / 'Booking: '(005), booking_id, cust_id.
    endloop.

  CATCH cx_root INTO ierr.
    MESSAGE ierr TYPE 'I'.
ENDTRY.

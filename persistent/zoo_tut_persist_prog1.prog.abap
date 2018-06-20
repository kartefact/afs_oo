*&---------------------------------------------------------------------*
*& Report  ZOO_TUT_PERSIST_PROG1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tut_persist_prog1.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME.
PARAMETER:
  p_carrid TYPE sflight-carrid DEFAULT 'AA',
  p_connid TYPE sflight-connid DEFAULT '0017',
  p_fldate TYPE sflight-fldate DEFAULT '20080130'.
SELECTION-SCREEN END OF BLOCK b1.

DATA:
  my_flight TYPE REF TO zcl_oo_tut_pers_sflight,
  seatsocc TYPE sflight-seatsocc,
  seatsmax TYPE sflight-seatsmax,
  seatsfree TYPE sflight-seatsocc,
  ierr TYPE REF TO cx_root,
  ierr2 TYPE REF TO cx_os_system_error,
  ierr3 TYPE REF TO cx_os_error.

TRY.

****Use the Agent Class to create an instance of our Persistent Class
    my_flight = zca_oo_tut_pers_sflight=>agent->get_persistent(
       i_carrid = p_carrid
       i_connid = p_connid
       i_fldate = p_fldate ).

****Perform Calculations using our Get Methods instead of the attributes directly
    seatsfree = my_flight->get_seatsmax( ) - my_flight->get_seatsocc( ).
    seatsmax  = my_flight->get_seatsmax( ).
    seatsocc  = my_flight->get_seatsocc( ).

    WRITE: / 'Seats Free: '(001), seatsfree.
    WRITE: / 'Seats Max: '(002), seatsmax.
    WRITE: / 'Seats Occupied: '(003), seatsocc.

    IF seatsfree > 0.
      WRITE: / 'Now Booking a new Person'(004).
      seatsocc = my_flight->get_seatsocc( ) + 1.
      my_flight->set_seatsocc( seatsocc ).
      COMMIT WORK AND WAIT.

      CLEAR my_flight.
      my_flight = zca_oo_tut_pers_sflight=>agent->get_persistent(
         i_carrid = p_carrid
         i_connid = p_connid
         i_fldate = p_fldate ).

      seatsfree = my_flight->get_seatsmax( ) - my_flight->get_seatsocc( ).
      seatsmax  = my_flight->get_seatsmax( ).
      seatsocc  = my_flight->get_seatsocc( ).

      WRITE: / 'Seats Free: '(001), seatsfree.
      WRITE: / 'Seats Max: '(002), seatsmax.
      WRITE: / 'Seats Occupied: '(003), seatsocc.
    ENDIF.

  CATCH cx_root INTO ierr.
    MESSAGE ierr TYPE 'I'.
ENDTRY.

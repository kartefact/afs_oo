*&---------------------------------------------------------------------*
*& Report  ZOO_TUT_PERSIST_PROG1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tut_persist_prog4.


DATA:
  my_flight TYPE REF TO zcl_oo_tut_pers_sflight,
  ierr TYPE REF TO cx_root.
  TYPES tr_flight TYPE REF TO zcl_oo_tut_pers_sflight.
  DATA lt_flight TYPE STANDARD TABLE OF tr_flight.
  DATA wa_flight LIKE LINE OF lt_flight.

TRY.

    DATA it_source TYPE STANDARD TABLE OF sflight.
    FIELD-SYMBOLS <wa_source> LIKE LINE OF it_source.

    SELECT * FROM sflight INTO TABLE it_source.
    LOOP AT it_source ASSIGNING <wa_source>.
      my_flight = zca_oo_tut_pers_sflight=>agent->get_persistent(
         i_carrid = <wa_source>-carrid
         i_connid = <wa_source>-connid
         i_fldate = <wa_source>-fldate ).
        APPEND my_flight TO lt_flight.
    ENDLOOP.



  CATCH cx_root INTO ierr.
    MESSAGE ierr TYPE 'I'.
ENDTRY.

  data l_sflight type sflight.
  FIELD-SYMBOLS: <wa_flight> like line of lt_flight.
  data lt_bookings type zsbook_pers_table_type.
  data numbookings type i.
  LOOP AT lt_flight ASSIGNING <wa_flight>.
    l_sflight-carrid = <wa_flight>->get_carrid( ).
    l_sflight-connid = <wa_flight>->get_connid( ).
    l_sflight-fldate = <wa_flight>->get_fldate( ).
    l_sflight-price = <wa_flight>->get_price( ).
    l_sflight-currency = <wa_flight>->get_currency( ).
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
    WRITE: / 'Flight Price: ', l_sflight-price CURRENCY l_sflight-currency, l_sflight-currency.
    lt_bookings = <wa_flight>->get_bookings( ).
    numbookings = lines( lt_bookings ).
    write: / 'Number of Bookings: ', numbookings.
  ENDLOOP.

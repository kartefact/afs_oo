*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_5a.


START-OF-SELECTION.

  DATA l_price TYPE zcl_oo_tutorial_5=>t_cost.
  DATA l_sflight TYPE sflight.
  TYPES tr_flight TYPE REF TO zcl_oo_tutorial_5.
  DATA lt_flight TYPE STANDARD TABLE OF tr_flight.
  DATA wa_flight LIKE LINE OF lt_flight.
  FIELD-SYMBOLS <wa_flight> LIKE LINE OF lt_flight.
  DATA lr_exception TYPE REF TO zcx_oo_tutorial_5.

  DATA it_source TYPE STANDARD TABLE OF sflight.
  FIELD-SYMBOLS <wa_source> like line of it_source.

  SELECT * FROM sflight INTO TABLE it_source.
  LOOP AT it_source ASSIGNING <wa_source>.
    TRY.
        CLEAR wa_flight.
        CREATE OBJECT wa_flight
          EXPORTING
            i_carrid = <wa_source>-carrid
            i_connid = <wa_source>-connid
            i_fldate = <wa_source>-fldate.
        APPEND wa_flight TO lt_flight.
      CATCH zcx_oo_tutorial_5 INTO lr_exception.
        WRITE: / 'Invalid Input for', lr_exception->carrid.
    ENDTRY.
  ENDLOOP.


  LOOP AT lt_flight ASSIGNING <wa_flight>.
    l_sflight = <wa_flight>->get_flight_details( ).
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
    l_price = <wa_flight>->calculate_flight_price( ).
    WRITE: / 'Flight Price: ', l_price-price CURRENCY l_price-currency, l_price-currency.
  ENDLOOP.

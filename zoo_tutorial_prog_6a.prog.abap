*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_6a.


START-OF-SELECTION.

  DATA l_price TYPE zif_oo_tutorial_6=>t_cost.
  DATA l_sflight TYPE sflight.
  TYPES tr_flight TYPE REF TO zif_oo_tutorial_6. "zcl_oo_tutorial_6_base. "zif_oo_tutorial_6. "zcl_oo_tutorial_6_base.
  DATA lt_flight TYPE STANDARD TABLE OF tr_flight.
  DATA wa_flight LIKE LINE OF lt_flight.
  FIELD-SYMBOLS <wa_flight> LIKE LINE OF lt_flight.
  DATA lr_exception TYPE REF TO zcx_oo_tutorial_5.

  DATA it_source TYPE STANDARD TABLE OF sflight.
  FIELD-SYMBOLS <wa_source> LIKE LINE OF it_source.

  SELECT * FROM sflight INTO TABLE it_source.
  LOOP AT it_source ASSIGNING <wa_source>.
    TRY.
        CLEAR wa_flight.
*        create object wa_flight.
        wa_flight =  zcl_oo_tutorial_6_base=>get_flight_object(
             i_carrid = <wa_source>-carrid
             i_connid = <wa_source>-connid
             i_fldate = <wa_source>-fldate ).
        APPEND wa_flight TO lt_flight.
      CATCH zcx_oo_tutorial_5 INTO lr_exception.
        WRITE: / 'Invalid Input for', lr_exception->carrid.
    ENDTRY.
  ENDLOOP.


  DATA lr_747 TYPE REF TO zcl_oo_tutorial_6_747.
  DATA i_movies TYPE zcl_oo_tutorial_6_747=>tt_movies.
  FIELD-SYMBOLS <wa_movie> LIKE LINE OF i_movies.
  LOOP AT lt_flight ASSIGNING <wa_flight>.
    l_sflight = <wa_flight>->get_flight_details( ).
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate, l_sflight-planetype.
    l_price = <wa_flight>->calculate_flight_price( ).
    WRITE: / 'Flight Price: ', l_price-price CURRENCY l_price-currency, l_price-currency.
*   <wa_flight>->get_flight_object( ).

    IF l_sflight-planetype CS zcl_oo_tutorial_6_base=>e_planetype-b747.
      lr_747 ?= <wa_flight>.
*    <wa_flight>->get_inflight_movies( IMPORTING e_movies = i_movies ).
      lr_747->get_inflight_movies( IMPORTING e_movies = i_movies ).
      WRITE: / 'Movies:'.
      LOOP AT i_movies ASSIGNING <wa_movie>.
        WRITE: / <wa_movie>-movie_title, <wa_movie>-running_time.
      ENDLOOP.
    ENDIF.
    SKIP.
  ENDLOOP.

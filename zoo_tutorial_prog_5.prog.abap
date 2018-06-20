*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_5.


START-OF-SELECTION.

  DATA l_price TYPE zcl_oo_tutorial_5=>t_cost.
  DATA l_sflight TYPE sflight.
  DATA lr_flight TYPE REF TO zcl_oo_tutorial_5.
  DATA lr_exception TYPE REF TO zcx_oo_tutorial_5.
  DATA l_error TYPE string.

  TRY.
      CREATE OBJECT lr_flight
        EXPORTING
          i_carrid = 'AB'
          i_connid = '0017'
          i_fldate = '20080130'.

      l_sflight = lr_flight->get_flight_details( ).
      WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
      l_price = lr_flight->calculate_flight_price( ).
      WRITE: / 'Flight Price: ', l_price-price CURRENCY l_price-currency, l_price-currency.
    CATCH zcx_oo_tutorial_5 INTO lr_exception.
      WRITE: / 'Invalid Input for', lr_exception->carrid.
      l_error = lr_exception->if_message~get_text( ).
      WRITE: / l_error.
  ENDTRY.

  TRY.
      CREATE OBJECT lr_flight
        EXPORTING
          i_carrid = 'LH'
          i_connid = '0400'
          i_fldate = '20080202'.

      l_sflight = lr_flight->get_flight_details( ).
      WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
      l_price = lr_flight->calculate_flight_price( ).
      WRITE: / 'Flight Price: ', l_price-price CURRENCY l_price-currency, l_price-currency.
    CATCH zcx_oo_tutorial_5 INTO lr_exception.
      WRITE: / 'Invalid Input for', lr_exception->carrid.
  ENDTRY.

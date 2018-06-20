*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_4.


START-OF-SELECTION.

  DATA l_price TYPE zcl_oo_tutorial_4=>t_cost.
  data l_sflight type sflight.
  DATA lr_flight TYPE REF TO zcl_oo_tutorial_4.

  CREATE OBJECT lr_flight
    EXPORTING
      i_carrid       = 'AA'
      i_connid       = '0017'
      i_fldate       = '20080130'
    EXCEPTIONS
      invalid_flight = 1
      OTHERS         = 2.
  IF sy-subrc <> 0.
    WRITE: / 'Invalid Input'.
  ELSE.
    l_sflight = lr_flight->get_flight_details( ).
*    lr_flight->gs_sflight-price = '0.01'.
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
    l_price = lr_flight->calculate_flight_price( ).
    WRITE: / 'Flight Price: ', l_price-price CURRENCY l_price-currency, l_price-currency.
  ENDIF.

  CREATE OBJECT lr_flight
    EXPORTING
      i_carrid       = 'LH'
      i_connid       = '0400'
      i_fldate       = '20080202'
    EXCEPTIONS
      invalid_flight = 1
      OTHERS         = 2.
  IF sy-subrc <> 0.
    WRITE: / 'Invalid Input'.
  ELSE.
    l_sflight = lr_flight->get_flight_details( ).
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
    l_price = lr_flight->calculate_flight_price( ).
    WRITE: / 'Flight Price: ', l_price-price CURRENCY l_price-currency, l_price-currency.
  ENDIF.

*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_3.


START-OF-SELECTION.

  DATA l_price TYPE s_price.
  DATA l_currency TYPE s_currcode.
  data l_sflight type sflight.
  DATA lr_flight TYPE REF TO zcl_oo_tutorial_3.
  DATA lr_flight2 TYPE REF TO zcl_oo_tutorial_3.

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
    lr_flight->get_flight_details(
        IMPORTING e_sflight      = l_sflight ).

    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
    lr_flight->calculate_flight_price(
        IMPORTING
          e_price        = l_price
          e_currency     = l_currency ).
    WRITE: / 'Flight Price: ', l_price CURRENCY l_currency, l_currency.
  ENDIF.

  CREATE OBJECT lr_flight2
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
    lr_flight2->get_flight_details(
      IMPORTING e_sflight      = l_sflight ).

    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
    lr_flight2->calculate_flight_price(
        IMPORTING
          e_price        = l_price
          e_currency     = l_currency ).
    WRITE: / 'Flight Price: ', l_price CURRENCY l_currency, l_currency.
  ENDIF.

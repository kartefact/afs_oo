*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_2.


START-OF-SELECTION.

  DATA l_sflight TYPE sflight.
  CALL METHOD zcl_oo_tutorial_2=>get_flight_details
    EXPORTING
      i_carrid       = 'AA'
      i_connid       = '0017'
      i_fldate       = '20080130'
    IMPORTING
      e_sflight      = l_sflight
    EXCEPTIONS
      invalid_flight = 1
      OTHERS         = 2.
  IF sy-subrc <> 0.
    WRITE: / 'Invalid Input'.
  ELSE.
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
  ENDIF.

  DATA l_price TYPE s_price.
  DATA l_currency TYPE s_currcode.

  CALL METHOD zcl_oo_tutorial_2=>calculate_flight_price
    EXPORTING
      i_carrid       = 'AA'
      i_connid       = '0017'
      i_fldate       = '20080130'
    IMPORTING
      e_price        = l_price
      e_currency     = l_currency
    EXCEPTIONS
      invalid_flight = 1
      OTHERS         = 2.
  IF sy-subrc <> 0.
    WRITE: / 'Invalid Input'.
  ELSE.
    WRITE: / 'Flight Price: ', l_price CURRENCY l_currency, l_currency.
  ENDIF.

  zcl_oo_tutorial_2=>get_flight_details(
     EXPORTING
       i_carrid       = 'LH'
       i_connid       = '0400'
       i_fldate       = '20080202'
     IMPORTING
       e_sflight      = l_sflight
     EXCEPTIONS
       invalid_flight = 1
       OTHERS         = 2 ).
  IF sy-subrc <> 0.
    WRITE: / 'Invalid Input'.
  ELSE.
    WRITE: / l_sflight-carrid, l_sflight-connid, l_sflight-fldate.
  ENDIF.

  zcl_oo_tutorial_2=>calculate_flight_price(
   EXPORTING
     i_carrid       = 'LH'
     i_connid       = '0400'
     i_fldate       = '20080202'
   IMPORTING
     e_price        = l_price
     e_currency     = l_currency
   EXCEPTIONS
     invalid_flight = 1
     OTHERS         = 2 ).
  IF sy-subrc <> 0.
    WRITE: / 'Invalid Input'.
  ELSE.
    WRITE: / 'Flight Price: ', l_price CURRENCY l_currency, l_currency.
  ENDIF.

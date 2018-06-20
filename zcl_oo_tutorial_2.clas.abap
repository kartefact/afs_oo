class ZCL_OO_TUTORIAL_2 definition
  public
  final
  create public .

public section.
*"* public components of class ZCL_OO_TUTORIAL_2
*"* do not include other source files here!!!

  class-methods GET_FLIGHT_DETAILS
    importing
      !I_CARRID type S_CARR_ID
      !I_CONNID type S_CONN_ID
      !I_FLDATE type S_DATE
    exporting
      !E_SFLIGHT type SFLIGHT
    exceptions
      INVALID_FLIGHT .
  class-methods CALCULATE_FLIGHT_PRICE
    importing
      !I_CARRID type S_CARR_ID
      !I_CONNID type S_CONN_ID
      !I_FLDATE type S_DATE
    exporting
      !E_PRICE type S_PRICE
      !E_CURRENCY type S_CURRCODE
    exceptions
      INVALID_FLIGHT .
protected section.
*"* protected components of class ZCL_OO_TUTORIAL_2
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_OO_TUTORIAL_2
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_2 IMPLEMENTATION.


METHOD calculate_flight_price.
  DATA l_planetype TYPE s_planetye.

  SELECT SINGLE price currency planetype FROM sflight
     INTO (e_price, e_currency, l_planetype)
    WHERE carrid = i_carrid
      AND connid = i_connid
      AND fldate = i_fldate.
  IF sy-subrc ne 0.
    RAISE invalid_flight.
  ENDIF.

  case l_planetype.
    when '747-400'.
      e_price = e_price + 40.
    when 'A310-300'.
      e_price = e_price + 25.
    when others.
      e_price = e_price + 10.
  endcase.
ENDMETHOD.


METHOD get_flight_details.
  SELECT SINGLE * FROM sflight INTO e_sflight
    WHERE carrid = i_carrid
      AND connid = i_connid
      AND fldate = i_fldate.
  IF sy-subrc ne 0.
    RAISE invalid_flight.
  ENDIF.

ENDMETHOD.
ENDCLASS.

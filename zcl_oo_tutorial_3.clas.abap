class ZCL_OO_TUTORIAL_3 definition
  public
  final
  create public .

public section.
*"* public components of class ZCL_OO_TUTORIAL_3
*"* do not include other source files here!!!

  data GS_SFLIGHT type SFLIGHT .

  methods CONSTRUCTOR
    importing
      !I_CARRID type S_CARR_ID optional
      !I_CONNID type S_CONN_ID optional
      !I_FLDATE type S_DATE optional
    exceptions
      INVALID_FLIGHT .
  methods GET_FLIGHT_DETAILS
    exporting
      !E_SFLIGHT type SFLIGHT .
  methods CALCULATE_FLIGHT_PRICE
    exporting
      !E_PRICE type S_PRICE
      !E_CURRENCY type S_CURRCODE .
protected section.
*"* protected components of class ZCL_OO_TUTORIAL_3
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_OO_TUTORIAL_3
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_3 IMPLEMENTATION.


METHOD calculate_flight_price.

  e_price = me->gs_sflight-price.
  e_currency = me->gs_sflight-currency.

  CASE me->gs_sflight-planetype.
    WHEN '747-400'.
      e_price = e_price + 40.
    WHEN 'A310-300'.
      e_price = e_price + 25.
    WHEN OTHERS.
      e_price = e_price + 10.
  ENDCASE.
ENDMETHOD.


method CONSTRUCTOR.
  SELECT SINGLE * FROM sflight INTO me->gs_sflight
    WHERE carrid = i_carrid
      AND connid = i_connid
      AND fldate = i_fldate.
  IF sy-subrc ne 0.
    RAISE invalid_flight.
  ENDIF.
endmethod.


METHOD GET_FLIGHT_DETAILS.
  e_sflight = me->gs_sflight.

ENDMETHOD.
ENDCLASS.

class ZCL_OO_TUTORIAL_5 definition
  public
  final
  create public .

public section.
*"* public components of class ZCL_OO_TUTORIAL_5
*"* do not include other source files here!!!

  types:
    BEGIN OF t_cost,
        price TYPE s_price,
        currency TYPE s_currcode,
       END OF t_cost .

  methods CONSTRUCTOR
    importing
      !I_CARRID type S_CARR_ID optional
      !I_CONNID type S_CONN_ID optional
      !I_FLDATE type S_DATE optional
    raising
      ZCX_OO_TUTORIAL_5 .
  methods GET_FLIGHT_DETAILS
    returning
      value(R_SFLIGHT) type SFLIGHT .
  methods CALCULATE_FLIGHT_PRICE
    returning
      value(R_PRICE) type T_COST .
protected section.
*"* protected components of class ZCL_OO_TUTORIAL_5
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_OO_TUTORIAL_5
*"* do not include other source files here!!!

  data GS_SFLIGHT type SFLIGHT .
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_5 IMPLEMENTATION.


METHOD CALCULATE_FLIGHT_PRICE.

  r_price-price = me->gs_sflight-price.
  r_price-currency = me->gs_sflight-currency.

  CASE me->gs_sflight-planetype.
    WHEN '747-400'.
      r_price-price =  r_price-price + 40.
    WHEN 'A310-300'.
      r_price-price =  r_price-price + 25.
    WHEN OTHERS.
      r_price-price =  r_price-price + 10.
  ENDCASE.
ENDMETHOD.


METHOD constructor.
  SELECT SINGLE * FROM sflight INTO me->gs_sflight
    WHERE carrid = i_carrid
      AND connid = i_connid
      AND fldate = i_fldate.
  IF sy-subrc NE 0.
    RAISE EXCEPTION TYPE zcx_oo_tutorial_5
      EXPORTING
        textid = zcx_oo_tutorial_5=>flight_not_found
        carrid = i_carrid.
  ENDIF.
ENDMETHOD.


METHOD GET_FLIGHT_DETAILS.
  r_sflight = me->gs_sflight.

ENDMETHOD.
ENDCLASS.

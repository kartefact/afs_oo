class ZCL_OO_TUTORIAL_6_BASE definition
  public
  abstract
  create public .

public section.
*"* public components of class ZCL_OO_TUTORIAL_6_BASE
*"* do not include other source files here!!!

  interfaces ZIF_OO_TUTORIAL_6 .

  aliases CALCULATE_FLIGHT_PRICE
    for ZIF_OO_TUTORIAL_6~CALCULATE_FLIGHT_PRICE .
  aliases GET_FLIGHT_DETAILS
    for ZIF_OO_TUTORIAL_6~GET_FLIGHT_DETAILS .
  aliases T_COST
    for ZIF_OO_TUTORIAL_6~T_COST .

  constants:
    begin of E_PLANETYPE,
    b747 type char4 value '747',
    a310 type char4 value 'A310',
   end of e_planetype .

  methods CONSTRUCTOR
    importing
      !I_SFLIGHT type SFLIGHT .
  class-methods GET_FLIGHT_OBJECT
    importing
      !I_CARRID type S_CARR_ID
      !I_CONNID type S_CONN_ID
      !I_FLDATE type S_DATE
    returning
      value(R_FLIGHT) type ref to ZCL_OO_TUTORIAL_6_BASE
    raising
      ZCX_OO_TUTORIAL_5 .
protected section.
*"* protected components of class ZCL_OO_TUTORIAL_6_BASE
*"* do not include other source files here!!!

  data GS_SFLIGHT type SFLIGHT .
private section.
*"* private components of class ZCL_OO_TUTORIAL_6_BASE
*"* do not include other source files here!!!

  constants C_CLASS_BASE_NAME type STRING value 'ZCL_OO_TUTORIAL_6_'. "#EC NOTEXT
  constants C_CLASS_OTHER type STRING value 'OTHER'. "#EC NOTEXT
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_6_BASE IMPLEMENTATION.


METHOD constructor.
  me->gs_sflight = i_sflight.
ENDMETHOD.


METHOD get_flight_object.
  DATA l_sflight TYPE sflight.
  SELECT SINGLE * FROM sflight INTO l_sflight
    WHERE carrid = i_carrid
      AND connid = i_connid
      AND fldate = i_fldate.
  IF sy-subrc NE 0.
    RAISE EXCEPTION TYPE zcx_oo_tutorial_5
      EXPORTING
        textid = zcx_oo_tutorial_5=>flight_not_found
        carrid = i_carrid.
  ENDIF.

  DATA l_class_name TYPE string.
  IF l_sflight-planetype CS zcl_oo_tutorial_6_base=>e_planetype-b747.
    CONCATENATE zcl_oo_tutorial_6_base=>c_class_base_name
                zcl_oo_tutorial_6_base=>e_planetype-b747 INTO l_class_name.
  ELSEIF l_sflight-planetype CS zcl_oo_tutorial_6_base=>e_planetype-a310.
    CONCATENATE zcl_oo_tutorial_6_base=>c_class_base_name
                zcl_oo_tutorial_6_base=>e_planetype-a310 INTO l_class_name.
  ELSE.
    CONCATENATE zcl_oo_tutorial_6_base=>c_class_base_name
                zcl_oo_tutorial_6_base=>c_class_other INTO l_class_name.
  ENDIF.

  CREATE OBJECT r_flight TYPE (l_class_name)
    EXPORTING
      i_sflight = l_sflight.

ENDMETHOD.


METHOD ZIF_OO_TUTORIAL_6~CALCULATE_FLIGHT_PRICE.

  r_price-price = me->gs_sflight-price.
  r_price-currency = me->gs_sflight-currency.
  r_price-price =  r_price-price + 10.

ENDMETHOD.


METHOD ZIF_OO_TUTORIAL_6~GET_FLIGHT_DETAILS.
  r_sflight = me->gs_sflight.

ENDMETHOD.
ENDCLASS.

class ZCL_OO_TUTORIAL_6_A310 definition
  public
  inheriting from ZCL_OO_TUTORIAL_6_BASE
  final
  create protected

  global friends ZCL_OO_TUTORIAL_6_BASE .

public section.
*"* public components of class ZCL_OO_TUTORIAL_6_A310
*"* do not include other source files here!!!

  methods ZIF_OO_TUTORIAL_6~CALCULATE_FLIGHT_PRICE
    redefinition .
protected section.
*"* protected components of class ZCL_OO_TUTORIAL_6_A310
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_OO_TUTORIAL_6_A310
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_6_A310 IMPLEMENTATION.


METHOD ZIF_OO_TUTORIAL_6~CALCULATE_FLIGHT_PRICE.
  CALL METHOD super->calculate_flight_price
    RECEIVING
      r_price = r_price.

  r_price-price = r_price-price + 15.
ENDMETHOD.
ENDCLASS.

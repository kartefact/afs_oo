class ZCL_OO_TUT_PERS_SFLIGHT_A310 definition
  public
  inheriting from ZCL_OO_TUT_PERS_SFLIGHT
  final
  create protected

  global friends ZCB_OO_TUT_PERS_SFLIGHT_A310 .

public section.
*"* public components of class ZCL_OO_TUT_PERS_SFLIGHT_A310
*"* do not include other source files here!!!

  methods IF_OS_STATE~INIT
    redefinition .
  class CL_OS_SYSTEM definition load .
protected section.
*"* protected components of class ZCL_OO_TUT_PERS_SFLIGHT_A310
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_OO_TUT_PERS_SFLIGHT_A310
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUT_PERS_SFLIGHT_A310 IMPLEMENTATION.


method IF_OS_STATE~INIT.
  super->if_os_state~init( ).
  me->price = me->price + 15.
endmethod.
ENDCLASS.

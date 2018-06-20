class ZCA_OO_TUT_PERS_SFLIGHT_747 definition
  public
  inheriting from ZCB_OO_TUT_PERS_SFLIGHT_747
  final
  create private .

public section.
*"* public components of class ZCA_OO_TUT_PERS_SFLIGHT_747
*"* do not include other source files here!!!

  class-data AGENT type ref to ZCA_OO_TUT_PERS_SFLIGHT_747 read-only .

  class-methods CLASS_CONSTRUCTOR .
protected section.
*"* protected components of class ZCA_OO_TUT_PERS_SFLIGHT_747
*"* do not include other source files here!!!
private section.
*"* private components of class ZCA_OO_TUT_PERS_SFLIGHT_747
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCA_OO_TUT_PERS_SFLIGHT_747 IMPLEMENTATION.


method CLASS_CONSTRUCTOR.
***BUILD 090501
************************************************************************
* Purpose        : Initialize the 'class'.
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : Singleton is created.
*
* OO Exceptions  : -
*
* Implementation : -
*
************************************************************************
* Changelog:
* - 1999-09-20   : (OS) Initial Version
* - 2000-03-06   : (BGR) 2.0 modified REGISTER_CLASS_AGENT
************************************************************************
* GENERATED: Do not modify
************************************************************************

  create object AGENT.

  call method AGENT->REGISTER_CLASS_AGENT
    exporting
      I_CLASS_NAME          = 'ZCL_OO_TUT_PERS_SFLIGHT_747'
      I_CLASS_AGENT_NAME    = 'ZCA_OO_TUT_PERS_SFLIGHT_747'
      I_CLASS_GUID          = '001B7708C0801DDE9BB3736D6C48E5A7'
      I_CLASS_AGENT_GUID    = '001B7708C0801DDE9BB3736D6C4A65A7'
      I_AGENT               = AGENT
      I_STORAGE_LOCATION    = 'SFLIGHT'
      I_CLASS_AGENT_VERSION = '2.0'.

           "CLASS_CONSTRUCTOR
endmethod.
ENDCLASS.

class ZCA_OO_TUT_PERS_SBOOK definition
  public
  inheriting from ZCB_OO_TUT_PERS_SBOOK
  final
  create private .

public section.
*"* public components of class ZCA_OO_TUT_PERS_SBOOK
*"* do not include other source files here!!!

  class-data AGENT type ref to ZCA_OO_TUT_PERS_SBOOK read-only .

  class-methods CLASS_CONSTRUCTOR .
protected section.
*"* protected components of class ZCA_OO_TUT_PERS_SBOOK
*"* do not include other source files here!!!
private section.
*"* private components of class ZCA_OO_TUT_PERS_SBOOK
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCA_OO_TUT_PERS_SBOOK IMPLEMENTATION.


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
      I_CLASS_NAME          = 'ZCL_OO_TUT_PERS_SBOOK'
      I_CLASS_AGENT_NAME    = 'ZCA_OO_TUT_PERS_SBOOK'
      I_CLASS_GUID          = '001B7708C0801DDE9BB1ECB6159A25A7'
      I_CLASS_AGENT_GUID    = '001B7708C0801DDE9BB1ECB6159BA5A7'
      I_AGENT               = AGENT
      I_STORAGE_LOCATION    = 'SBOOK'
      I_CLASS_AGENT_VERSION = '2.0'.

           "CLASS_CONSTRUCTOR
endmethod.
ENDCLASS.

class ZCX_OO_TUTORIAL_5 definition
  public
  inheriting from CX_STATIC_CHECK
  final
  create public .

public section.
*"* public components of class ZCX_OO_TUTORIAL_5
*"* do not include other source files here!!!

  constants ZCX_OO_TUTORIAL_5 type SOTR_CONC value '001B7708C0801DDE98D30F27B5A8A5A7'. "#EC NOTEXT
  constants FLIGHT_NOT_FOUND type SOTR_CONC value '001B7708C0801DDE98D313E320A2E5A7'. "#EC NOTEXT
  data CARRID type S_CARR_ID .

  methods CONSTRUCTOR
    importing
      !TEXTID like TEXTID optional
      !PREVIOUS like PREVIOUS optional
      !CARRID type S_CARR_ID optional .
protected section.
*"* protected components of class ZCX_OO_TUTORIAL_5
*"* do not include other source files here!!!
private section.
*"* private components of class ZCX_OO_TUTORIAL_5
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCX_OO_TUTORIAL_5 IMPLEMENTATION.


method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
.
 IF textid IS INITIAL.
   me->textid = ZCX_OO_TUTORIAL_5 .
 ENDIF.
me->CARRID = CARRID .
endmethod.
ENDCLASS.

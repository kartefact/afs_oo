CLASS zcl_oo_tutorial_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*"* public components of class ZCL_OO_TUTORIAL_1
*"* do not include other source files here!!!

    TYPES:
      tt_itab TYPE STANDARD TABLE OF string .

    DATA a_variable TYPE tt_itab .

    METHODS constructor
      IMPORTING
        !i_id TYPE string .
    METHODS my_first_method
      IMPORTING
        !i_import1 TYPE string
      EXPORTING
        !e_export1 TYPE string
      EXCEPTIONS
        some_bad_happened .
  PROTECTED SECTION.
*"* protected components of class ZCL_OO_TUTORIAL_1
*"* do not include other source files here!!!
  PRIVATE SECTION.
*"* private components of class ZCL_OO_TUTORIAL_1
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_1 IMPLEMENTATION.


  METHOD constructor.
  ENDMETHOD.                    "CONSTRUCTOR


  METHOD my_first_method.
    e_export1 = i_import1.
  ENDMETHOD.                    "MY_FIRST_METHOD
ENDCLASS.

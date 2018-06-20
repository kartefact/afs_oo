*&---------------------------------------------------------------------*
*& Report  ZOO_TUTORIAL_PROG_1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  zoo_tutorial_prog_1.



*----------------------------------------------------------------------*
*       CLASS lcl_oo_tutorial_1 DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_oo_tutorial_1 DEFINITION.

  PUBLIC SECTION.
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

ENDCLASS.                    "lcl_oo_tutorial_1 DEFINITION



*----------------------------------------------------------------------*
*       CLASS ZCL_OO_TUTORIAL_1 IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_oo_tutorial_1 IMPLEMENTATION.

  METHOD constructor.
  ENDMETHOD.                    "CONSTRUCTOR

  METHOD my_first_method.
    e_export1 = i_import1.
  ENDMETHOD.                    "MY_FIRST_METHOD
ENDCLASS.                    "LCL_OO_TUTORIAL_1 IMPLEMENTATION

START-OF-SELECTION.


data i_object type ref to zcl_oo_tutorial_1.
create OBJECT i_object
  EXPORTING
    i_id = 'TEST'.

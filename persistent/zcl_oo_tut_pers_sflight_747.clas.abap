class ZCL_OO_TUT_PERS_SFLIGHT_747 definition
  public
  inheriting from ZCL_OO_TUT_PERS_SFLIGHT
  final
  create protected

  global friends ZCB_OO_TUT_PERS_SFLIGHT_747 .

public section.
*"* public components of class ZCL_OO_TUT_PERS_SFLIGHT_747
*"* do not include other source files here!!!

  methods GET_MOVIES
    returning
      value(RESULT) type ZSFLIGHT_747_MOVIES
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_MOVIES
    importing
      !I_MOVIES type ZSFLIGHT_747_MOVIES
    raising
      CX_OS_OBJECT_NOT_FOUND .

  methods IF_OS_STATE~INIT
    redefinition .
  class CL_OS_SYSTEM definition load .
protected section.
*"* protected components of class ZCL_OO_TUT_PERS_SFLIGHT_747
*"* do not include other source files here!!!

  data MOVIES type ZSFLIGHT_747_MOVIES .
private section.
*"* private components of class ZCL_OO_TUT_PERS_SFLIGHT_747
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUT_PERS_SFLIGHT_747 IMPLEMENTATION.


method GET_MOVIES.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute MOVIES
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : The object state is loaded, result is set
*
* OO Exceptions  : CX_OS_OBJECT_NOT_FOUND
*
* Implementation : -
*
************************************************************************
* Changelog:
* - 2000-03-14   : (BGR) Version 2.0
* - 2000-07-28   : (SB)  OO Exceptions
************************************************************************

* * Inform class agent and handle exceptions
  state_read_access.

  result = MOVIES.

           " GET_MOVIES
endmethod.


METHOD if_os_state~init.
  super->if_os_state~init( ).
  me->price = me->price + 35.

  FIELD-SYMBOLS <Wa_movies> like line of me->movies.
  APPEND INITIAL LINE TO me->movies ASSIGNING <Wa_movies>.
  <Wa_movies>-movie_title = `Transformers: Revenge of the Fallen`.
  <Wa_movies>-running_time = `150 min`.

   APPEND INITIAL LINE TO me->movies ASSIGNING <Wa_movies>.
  <Wa_movies>-movie_title = `The Hangover`.
  <Wa_movies>-running_time = `100 min`.
ENDMETHOD.


method SET_MOVIES.
***BUILD 090501
     " importing I_MOVIES
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute MOVIES
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : The object state is loaded, attribute is set
*
* OO Exceptions  : CX_OS_OBJECT_NOT_FOUND
*
* Implementation : -
*
************************************************************************
* Changelog:
* - 2000-03-14   : (BGR) Version 2.0
* - 2000-07-28   : (SB)  OO Exceptions
* - 2000-10-04   : (SB)  Namespaces
************************************************************************

* * Inform class agent and handle exceptions
  state_write_access.

  if ( I_MOVIES <> MOVIES ).

    MOVIES = I_MOVIES.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_MOVIES <> MOVIES )

           " GET_MOVIES
endmethod.
ENDCLASS.

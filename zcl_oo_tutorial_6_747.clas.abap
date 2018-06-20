class ZCL_OO_TUTORIAL_6_747 definition
  public
  inheriting from ZCL_OO_TUTORIAL_6_BASE
  final
  create protected

  global friends ZCL_OO_TUTORIAL_6_BASE .

public section.
*"* public components of class ZCL_OO_TUTORIAL_6_747
*"* do not include other source files here!!!

  types:
    begin of T_MOVIES,
          movie_title type char50,
          running_time type char10,
         end of t_movies .
  types:
    tt_movies type STANDARD TABLE OF T_MOVIES .

  methods CONSTRUCTOR
    importing
      !I_SFLIGHT type SFLIGHT .
  class ZCL_OO_TUTORIAL_6_747 definition load .
  methods GET_INFLIGHT_MOVIES
    exporting
      !E_MOVIES type ZCL_OO_TUTORIAL_6_747=>TT_MOVIES .

  methods ZIF_OO_TUTORIAL_6~CALCULATE_FLIGHT_PRICE
    redefinition .
protected section.
*"* protected components of class ZCL_OO_TUTORIAL_6_747
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_OO_TUTORIAL_6_747
*"* do not include other source files here!!!

  data GT_MOVIES type TT_MOVIES .
ENDCLASS.



CLASS ZCL_OO_TUTORIAL_6_747 IMPLEMENTATION.


method CONSTRUCTOR.
  super->CONSTRUCTOR(
      i_sflight = i_sflight ).

  FIELD-SYMBOLS <Wa_movies> like line of me->gt_movies.

  APPEND INITIAL LINE TO me->gt_movies ASSIGNING <Wa_movies>.
  <Wa_movies>-movie_title = `Transformers: Revenge of the Fallen`.
  <Wa_movies>-running_time = `150 min`.

   APPEND INITIAL LINE TO me->gt_movies ASSIGNING <Wa_movies>.
  <Wa_movies>-movie_title = `The Hangover`.
  <Wa_movies>-running_time = `100 min`.
endmethod.


method GET_INFLIGHT_MOVIES.
    e_movies = me->gt_movies.
endmethod.


METHOD ZIF_OO_TUTORIAL_6~CALCULATE_FLIGHT_PRICE.
  CALL METHOD super->calculate_flight_price
    RECEIVING
      r_price = r_price.

  r_price-price = r_price-price + 35.

ENDMETHOD.
ENDCLASS.

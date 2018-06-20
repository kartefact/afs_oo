class ZCL_DYNP_CTRL_AFS_OO definition
  public
  final
  create public .

public section.
*"* public components of class ZCL_DYNP_CTRL_AFS_OO
*"* do not include other source files here!!!

  types:
    BEGIN OF t_sflight,
         carrid        type sflight-carrid, "Airline Code
         connid        type sflight-connid, "Flight Connection Number
         fldate        type sflight-fldate, "Flight date
         price         type sflight-price, "Airfare
         currency      type sflight-currency, "Local currency of airline
         planetype     type sflight-planetype, "Aircraft Type
         seatsmax      type sflight-seatsmax, "Maximum capacity in economy class
         seatsocc      type sflight-seatsocc, "Occupied seats in economy class
       END   OF t_sflight .
  types:
    tt_sflight type STANDARD TABLE OF t_sflight .

  events DISPLAY_INFLIGHT_MOVIES .

  methods CONSTRUCTOR
    importing
      !I_CARRID type ZAFS_OO_CARRID_RANGE .
  methods FREE_CONTROLS .
  methods PAI
    importing
      !OK_CODE type SYUCOMM .
  methods PBO .
protected section.
*"* protected components of class ZCL_DYNP_CTRL_AFS_OO
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_DYNP_CTRL_AFS_OO
*"* do not include other source files here!!!

  data LT_SFLIGHT type TT_SFLIGHT .
  data GR_TABLE type ref to CL_SALV_TABLE .
  data GR_FUNCTIONS type ref to CL_SALV_FUNCTIONS .
  data GR_COLUMNS type ref to CL_SALV_COLUMNS_TABLE .
  data GR_COLUMN type ref to CL_SALV_COLUMN_TABLE .
  data GR_DSPSET type ref to CL_SALV_DISPLAY_SETTINGS .
  data GR_LAYOUT type ref to CL_SALV_LAYOUT .
  data GR_SELECTIONS type ref to CL_SALV_SELECTIONS .
  data GR_EVENTS type ref to CL_SALV_EVENTS_TABLE .
  data CUSTOM_CONTAINER type ref to CL_GUI_CUSTOM_CONTAINER .

  methods INITIALIZE_ALV .
  methods CREATE_CONTROLS .
  methods ON_ALV_DOUBLE_CLICK
    for event IF_SALV_EVENTS_ACTIONS_TABLE~DOUBLE_CLICK of CL_SALV_EVENTS_TABLE
    importing
      !ROW
      !COLUMN .
  methods SHOW_FLIGHT_POPUP
    for event DISPLAY_INFLIGHT_MOVIES of ZCL_DYNP_CTRL_AFS_OO .
ENDCLASS.



CLASS ZCL_DYNP_CTRL_AFS_OO IMPLEMENTATION.


method CONSTRUCTOR.
  select * from sflight into CORRESPONDING FIELDS OF TABLE me->lt_sflight
    where carrid in i_carrid.
endmethod.


method CREATE_CONTROLS.
 create object me->custom_container
    exporting
      container_name              = 'CONTAINER'.
  set handler
       me->show_flight_popup for me.
  me->initialize_alv( ).
endmethod.


METHOD free_controls.
  CLEAR gr_table.
  me->custom_container->free( ).
  CLEAR me->custom_container.
ENDMETHOD.


method INITIALIZE_ALV.

  try.
      cl_salv_table=>factory(
        exporting
          r_container    = me->custom_container
        importing
          r_salv_table   = gr_table
        changing
          t_table        = me->lt_sflight ).
    catch cx_salv_msg .
  endtry.


* Set functions
  gr_functions = gr_table->get_functions( ).
  gr_functions->set_all( abap_true ).


* Set column attributes
  gr_columns = gr_table->get_columns( ).
  gr_columns->set_key_fixation( abap_true ).

  try.
      gr_column ?= gr_columns->get_column(
             columnname = 'CARRID' ).
      gr_column->set_key( abap_true ).
    catch cx_salv_not_found.
  endtry.

  try.
      gr_column ?= gr_columns->get_column(
             columnname = 'SYLLABI' ).
      gr_column->set_visible( abap_false ).
    catch cx_salv_not_found.
  endtry.

* Set striped pattern
  gr_dspset = gr_table->get_display_settings( ).
  gr_dspset->set_striped_pattern( abap_true ).
  gr_dspset->set_list_header( 'Flight Results' ).

* Set the save layout
  data: key   type salv_s_layout_key.
  key-report = sy-repid.

  gr_layout = gr_table->get_layout( ).
  gr_layout->set_key( key ).
  gr_layout->set_save_restriction( ).
  gr_layout->set_default( abap_true ).

* Set the selection mode
  gr_selections =  gr_table->get_selections( ).
  gr_selections->set_selection_mode( gr_selections->single ).

* Set event handlers
  gr_events = gr_table->get_event( ).
  set handler
       me->on_alv_double_click for gr_events.

  gr_table->display( ).
endmethod.


METHOD on_alv_double_click.
  RAISE EVENT display_inflight_movies.
ENDMETHOD.


method PAI.
   case ok_code.
     when 'DSPMOVIE'.
       raise event display_inflight_movies.
   endcase.
endmethod.


method PBO.
  if me->custom_container is initial.
    me->create_controls( ).
  endif.
endmethod.


METHOD show_flight_popup.
  DATA: lr_dialog_table TYPE REF TO cl_salv_table.
  DATA: lr_selections   TYPE REF TO cl_salv_selections.
  DATA: lr_functions    TYPE REF TO cl_salv_functions.
  DATA: lr_columns      TYPE REF TO cl_salv_columns_table.
  DATA: lr_column       TYPE REF TO cl_salv_column_table.
  DATA: lt_rows   TYPE salv_t_row.
  DATA: ls_rows   TYPE i.
  DATA: lt_movies TYPE zcl_oo_tutorial_6_747=>tt_movies.
  FIELD-SYMBOLS <wa_sflight> LIKE LINE OF me->lt_sflight.

* Get the selection rows
  lr_selections = gr_table->get_selections( ).
  lt_rows = lr_selections->get_selected_rows( ).

* Read the selected row
  CHECK lt_rows IS NOT INITIAL.
  READ TABLE lt_rows INTO ls_rows INDEX 1.

  READ TABLE me->lt_sflight ASSIGNING <wa_sflight>
               INDEX ls_rows.
  DATA i_sflight TYPE REF TO zcl_oo_tutorial_6_base.
  DATA i_sflight_747 TYPE REF TO zcl_oo_tutorial_6_747.

  i_sflight = zcl_oo_tutorial_6_base=>get_flight_object(
      i_carrid = <wa_sflight>-carrid
      i_connid = <wa_sflight>-connid
      i_fldate = <wa_sflight>-fldate ).

  IF <wa_sflight>-planetype CS zcl_oo_tutorial_6_base=>e_planetype-b747.
    i_sflight_747 ?= i_sflight.
    i_sflight_747->get_inflight_movies(
      IMPORTING
        e_movies = lt_movies    ).
* Create instance of ALV Tool
    TRY.
        cl_salv_table=>factory(
           IMPORTING r_salv_table = lr_dialog_table
           CHANGING  t_table      = lt_movies ).
      CATCH cx_salv_msg .
    ENDTRY.
* Set column length for course description
    lr_columns = lr_dialog_table->get_columns( ).
    lr_columns->set_key_fixation( abap_true ).
    TRY.
        data s_text type SCRTEXT_L.
        s_text = 'Movie Title'.
        lr_column ?= lr_columns->get_column(
               columnname = 'MOVIE_TITLE' ).
        lr_column->set_long_text( s_text ).
        s_text = 'Running Time'.
        lr_column ?= lr_columns->get_column(
               columnname = 'RUNNING_TIME' ).
        lr_column->set_long_text( s_text ).
      CATCH cx_salv_not_found.
    ENDTRY.

* Set functions ALL
    lr_functions =  lr_dialog_table->get_functions( ).
    lr_functions->set_all( abap_true ).

* Set to popup display
    lr_dialog_table->set_screen_popup(
                  start_column = 1
                  end_column   = 70
                  start_line   = 1
                  end_line     = 20 ).
    lr_dialog_table->display( ).
  ELSE.
    MESSAGE `No In-Flight Movies Offered on this Flight` TYPE 'I'.
  ENDIF.
ENDMETHOD.
ENDCLASS.

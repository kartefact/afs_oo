class ZCL_BSP_CTRL_OO_MVC_DEFAULT definition
  public
  inheriting from CL_BSP_CONTROLLER2
  final
  create public .

public section.
*"* public components of class ZCL_BSP_CTRL_OO_MVC_DEFAULT
*"* do not include other source files here!!!

  data MODEL type ref to ZCL_BSP_MODEL_OO_MVC .

  methods DO_REQUEST
    redefinition .
protected section.
*"* protected components of class ZCL_BSP_CTRL_OO_MVC_DEFAULT
*"* do not include other source files here!!!

  methods DO_HANDLE_EVENT
    redefinition .
private section.
*"* private components of class ZCL_BSP_CTRL_OO_MVC_DEFAULT
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_BSP_CTRL_OO_MVC_DEFAULT IMPLEMENTATION.


method DO_HANDLE_EVENT.

   data: button_event type ref to cl_htmlb_event_button.
   check htmlb_event_ex is not initial.
   if htmlb_event_ex->event_server_name = 'onSubmit'.
     button_event ?= htmlb_event_ex.
     me->model->fill_sflight( ).
   endif.
endmethod.


METHOD do_request.
  DATA: view TYPE REF TO if_bsp_page.

  IF me->model IS INITIAL.
    me->model ?= create_model( model_id = 'M1'
                               class_name = 'ZCL_BSP_MODEL_OO_MVC' ).
  ENDIF.

* if input is available, dispatch this input to subcomponent.
* this call is only necessary for toplevel controllers.
* ( if this is not a toplevel controller or no input is present,
*   this call returns without any action)
  dispatch_input( ).

* if any of the controllers has requested a navigation,
* do not try to display, but leave current processing
  IF is_navigation_requested( ) IS NOT INITIAL.
    RETURN.
  ENDIF.

  view = create_view( view_name = 'default.bsp' ).
  view->set_attribute( name = 'MODEL' value = me->model ).
  call_view( view ).

ENDMETHOD.
ENDCLASS.

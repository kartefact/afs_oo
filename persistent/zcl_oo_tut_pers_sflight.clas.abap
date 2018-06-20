class ZCL_OO_TUT_PERS_SFLIGHT definition
  public
  create protected

  global friends ZCB_OO_TUT_PERS_SFLIGHT .

public section.
*"* public components of class ZCL_OO_TUT_PERS_SFLIGHT
*"* do not include other source files here!!!

  interfaces IF_OS_STATE .

  methods GET_BOOKINGS
    returning
      value(RESULT) type ZSBOOK_PERS_TABLE_TYPE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_BOOKINGS
    importing
      !I_BOOKINGS type ZSBOOK_PERS_TABLE_TYPE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SEATSOCC_F
    importing
      !I_SEATSOCC_F type S_SOCC_F
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SEATSOCC_B
    importing
      !I_SEATSOCC_B type S_SOCC_B
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SEATSOCC
    importing
      !I_SEATSOCC type S_SEATSOCC
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SEATSMAX_F
    importing
      !I_SEATSMAX_F type S_SMAX_F
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SEATSMAX_B
    importing
      !I_SEATSMAX_B type S_SMAX_B
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SEATSMAX
    importing
      !I_SEATSMAX type S_SEATSMAX
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_PRICE
    importing
      !I_PRICE type S_PRICE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_PLANETYPE
    importing
      !I_PLANETYPE type S_PLANETYE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_PAYMENTSUM
    importing
      !I_PAYMENTSUM type S_SUM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_CURRENCY
    importing
      !I_CURRENCY type S_CURRCODE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SEATSOCC_F
    returning
      value(RESULT) type S_SOCC_F
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SEATSOCC_B
    returning
      value(RESULT) type S_SOCC_B
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SEATSOCC
    returning
      value(RESULT) type S_SEATSOCC
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SEATSMAX_F
    returning
      value(RESULT) type S_SMAX_F
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SEATSMAX_B
    returning
      value(RESULT) type S_SMAX_B
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SEATSMAX
    returning
      value(RESULT) type S_SEATSMAX
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_PRICE
    returning
      value(RESULT) type S_PRICE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_PLANETYPE
    returning
      value(RESULT) type S_PLANETYE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_PAYMENTSUM
    returning
      value(RESULT) type S_SUM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_FLDATE
    returning
      value(RESULT) type S_DATE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CURRENCY
    returning
      value(RESULT) type S_CURRCODE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CONNID
    returning
      value(RESULT) type S_CONN_ID
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CARRID
    returning
      value(RESULT) type S_CARR_ID
    raising
      CX_OS_OBJECT_NOT_FOUND .
  class CL_OS_SYSTEM definition load .
protected section.
*"* protected components of class ZCL_OO_TUT_PERS_SFLIGHT
*"* do not include other source files here!!!

  data BOOKINGS type ZSBOOK_PERS_TABLE_TYPE .
  data CARRID type S_CARR_ID .
  data CONNID type S_CONN_ID .
  data CURRENCY type S_CURRCODE .
  data FLDATE type S_DATE .
  data PAYMENTSUM type S_SUM .
  data PLANETYPE type S_PLANETYE .
  data PRICE type S_PRICE .
  data SEATSMAX type S_SEATSMAX .
  data SEATSMAX_B type S_SMAX_B .
  data SEATSMAX_F type S_SMAX_F .
  data SEATSOCC type S_SEATSOCC .
  data SEATSOCC_B type S_SOCC_B .
  data SEATSOCC_F type S_SOCC_F .
private section.
*"* private components of class ZCL_OO_TUT_PERS_SFLIGHT
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUT_PERS_SFLIGHT IMPLEMENTATION.


method GET_BOOKINGS.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute BOOKINGS
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

  result = BOOKINGS.

           " GET_BOOKINGS
endmethod.


method GET_CARRID.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CARRID
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

  result = CARRID.

           " GET_CARRID
endmethod.


method GET_CONNID.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CONNID
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

  result = CONNID.

           " GET_CONNID
endmethod.


method GET_CURRENCY.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CURRENCY
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

  result = CURRENCY.

           " GET_CURRENCY
endmethod.


method GET_FLDATE.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute FLDATE
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

  result = FLDATE.

           " GET_FLDATE
endmethod.


method GET_PAYMENTSUM.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute PAYMENTSUM
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

  result = PAYMENTSUM.

           " GET_PAYMENTSUM
endmethod.


method GET_PLANETYPE.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute PLANETYPE
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

  result = PLANETYPE.

           " GET_PLANETYPE
endmethod.


method GET_PRICE.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute PRICE
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

  result = PRICE.

           " GET_PRICE
endmethod.


method GET_SEATSMAX.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SEATSMAX
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

  result = SEATSMAX.

           " GET_SEATSMAX
endmethod.


method GET_SEATSMAX_B.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SEATSMAX_B
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

  result = SEATSMAX_B.

           " GET_SEATSMAX_B
endmethod.


method GET_SEATSMAX_F.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SEATSMAX_F
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

  result = SEATSMAX_F.

           " GET_SEATSMAX_F
endmethod.


method GET_SEATSOCC.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SEATSOCC
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

  result = SEATSOCC.

           " GET_SEATSOCC
endmethod.


method GET_SEATSOCC_B.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SEATSOCC_B
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

  result = SEATSOCC_B.

           " GET_SEATSOCC_B
endmethod.


method GET_SEATSOCC_F.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SEATSOCC_F
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

  result = SEATSOCC_F.

           " GET_SEATSOCC_F
endmethod.


method IF_OS_STATE~GET.
***BUILD 090501
     " returning result type ref to object
************************************************************************
* Purpose        : Get state.
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : -
*
* OO Exceptions  : -
*
* Implementation : -
*
************************************************************************
* Changelog:
* - 2000-03-07   : (BGR) Initial Version 2.0
************************************************************************
* GENERATED: Do not modify
************************************************************************

  data: STATE_OBJECT type ref to CL_OS_STATE.

  create object STATE_OBJECT.
  call method STATE_OBJECT->SET_STATE_FROM_OBJECT( ME ).
  result = STATE_OBJECT.

endmethod.


method IF_OS_STATE~HANDLE_EXCEPTION.
***BUILD 090501
     " importing I_EXCEPTION type ref to IF_OS_EXCEPTION_INFO optional
     " importing I_EX_OS type ref to CX_OS_OBJECT_NOT_FOUND optional
************************************************************************
* Purpose        : Handles exceptions during attribute access.
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : -
*
* OO Exceptions  : CX_OS_OBJECT_NOT_FOUND
*
* Implementation : If an exception is raised during attribut access,
*                  this method is called and the exception is passed
*                  as a paramater. The default is to raise the exception
*                  again, so that the caller can handle the exception.
*                  But it is also possible to handle the exception
*                  here in the callee.
*
************************************************************************
* Changelog:
* - 2000-03-07   : (BGR) Initial Version 2.0
* - 2000-08-02   : (SB)  OO Exceptions
************************************************************************
* Modify if you like
************************************************************************

  if i_ex_os is not initial.
    raise exception i_ex_os.
  endif.

endmethod.


METHOD if_os_state~init.
***BUILD 090501
                                                            "#EC NEEDED
************************************************************************
* Purpose        : Initialisation of the transient state partition.
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : Transient state is initial.
*
* OO Exceptions  : -
*
* Implementation : Caution!: Avoid Throwing ACCESS Events.
*
************************************************************************
* Changelog:
* - 2000-03-07   : (BGR) Initial Version 2.0
************************************************************************
* Modify if you like
************************************************************************
  DATA query_mng TYPE REF TO if_os_query_manager.
  DATA query_by_sflight TYPE REF TO if_os_query.
  query_mng = cl_os_system=>get_query_manager( ).
  query_by_sflight = query_mng->create_query(
                     i_filter = `CARRID = PAR1 AND CONNID = PAR2 AND FLDATE = PAR3` ).

  DATA lt_sbooks TYPE osreftab.
  lt_sbooks = zca_oo_tut_pers_sbook=>agent->if_os_ca_persistency~get_persistent_by_query(
      i_query = query_by_sflight
      i_par1  = me->carrid
      i_par2  = me->connid
      i_par3  = me->fldate ).

  FIELD-SYMBOLS <wa_reftab> LIKE LINE OF lt_sbooks.
  FIELD-SYMBOLS <wa_book> LIKE LINE OF me->bookings.
  LOOP AT lt_sbooks ASSIGNING <wa_reftab>.
    APPEND INITIAL LINE TO me->bookings ASSIGNING <wa_book>.
    <wa_book> ?= <wa_reftab>.
  ENDLOOP.

  me->price = me->price + 10.
ENDMETHOD.


method IF_OS_STATE~INVALIDATE.
***BUILD 090501
"#EC NEEDED
************************************************************************
* Purpose        : Do something before all persistent attributes are
*                  cleared.
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : -
*
* OO Exceptions  : -
*
* Implementation : Whatever you like to do.
*
************************************************************************
* Changelog:
* - 2000-03-07   : (BGR) Initial Version 2.0
************************************************************************
* Modify if you like
************************************************************************

endmethod.


method IF_OS_STATE~SET.
***BUILD 090501
     " importing I_STATE type ref to object
************************************************************************
* Purpose        : Set state.
*
* Version        : 2.0
*
* Precondition   : -
*
* Postcondition  : -
*
* OO Exceptions  : -
*
* Implementation : -
*
************************************************************************
* Changelog:
* - 2000-03-07   : (BGR) Initial Version 2.0
************************************************************************
* GENERATED: Do not modify
************************************************************************

  data: STATE_OBJECT type ref to CL_OS_STATE.

  STATE_OBJECT ?= I_STATE.
  call method STATE_OBJECT->SET_OBJECT_FROM_STATE( ME ).

endmethod.


method SET_BOOKINGS.
***BUILD 090501
     " importing I_BOOKINGS
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute BOOKINGS
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

  if ( I_BOOKINGS <> BOOKINGS ).

    BOOKINGS = I_BOOKINGS.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_BOOKINGS <> BOOKINGS )

           " GET_BOOKINGS
endmethod.


method SET_CURRENCY.
***BUILD 090501
     " importing I_CURRENCY
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute CURRENCY
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

  if ( I_CURRENCY <> CURRENCY ).

    CURRENCY = I_CURRENCY.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_CURRENCY <> CURRENCY )

           " GET_CURRENCY
endmethod.


method SET_PAYMENTSUM.
***BUILD 090501
     " importing I_PAYMENTSUM
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute PAYMENTSUM
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

  if ( I_PAYMENTSUM <> PAYMENTSUM ).

    PAYMENTSUM = I_PAYMENTSUM.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_PAYMENTSUM <> PAYMENTSUM )

           " GET_PAYMENTSUM
endmethod.


method SET_PLANETYPE.
***BUILD 090501
     " importing I_PLANETYPE
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute PLANETYPE
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

  if ( I_PLANETYPE <> PLANETYPE ).

    PLANETYPE = I_PLANETYPE.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_PLANETYPE <> PLANETYPE )

           " GET_PLANETYPE
endmethod.


method SET_PRICE.
***BUILD 090501
     " importing I_PRICE
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute PRICE
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

  if ( I_PRICE <> PRICE ).

    PRICE = I_PRICE.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_PRICE <> PRICE )

           " GET_PRICE
endmethod.


method SET_SEATSMAX.
***BUILD 090501
     " importing I_SEATSMAX
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SEATSMAX
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

  if ( I_SEATSMAX <> SEATSMAX ).

    SEATSMAX = I_SEATSMAX.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SEATSMAX <> SEATSMAX )

           " GET_SEATSMAX
endmethod.


method SET_SEATSMAX_B.
***BUILD 090501
     " importing I_SEATSMAX_B
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SEATSMAX_B
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

  if ( I_SEATSMAX_B <> SEATSMAX_B ).

    SEATSMAX_B = I_SEATSMAX_B.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SEATSMAX_B <> SEATSMAX_B )

           " GET_SEATSMAX_B
endmethod.


method SET_SEATSMAX_F.
***BUILD 090501
     " importing I_SEATSMAX_F
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SEATSMAX_F
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

  if ( I_SEATSMAX_F <> SEATSMAX_F ).

    SEATSMAX_F = I_SEATSMAX_F.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SEATSMAX_F <> SEATSMAX_F )

           " GET_SEATSMAX_F
endmethod.


method SET_SEATSOCC.
***BUILD 090501
     " importing I_SEATSOCC
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SEATSOCC
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

  if ( I_SEATSOCC <> SEATSOCC ).

    SEATSOCC = I_SEATSOCC.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SEATSOCC <> SEATSOCC )

           " GET_SEATSOCC
endmethod.


method SET_SEATSOCC_B.
***BUILD 090501
     " importing I_SEATSOCC_B
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SEATSOCC_B
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

  if ( I_SEATSOCC_B <> SEATSOCC_B ).

    SEATSOCC_B = I_SEATSOCC_B.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SEATSOCC_B <> SEATSOCC_B )

           " GET_SEATSOCC_B
endmethod.


method SET_SEATSOCC_F.
***BUILD 090501
     " importing I_SEATSOCC_F
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SEATSOCC_F
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

  if ( I_SEATSOCC_F <> SEATSOCC_F ).

    SEATSOCC_F = I_SEATSOCC_F.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SEATSOCC_F <> SEATSOCC_F )

           " GET_SEATSOCC_F
endmethod.
ENDCLASS.

class ZCL_OO_TUT_PERS_SBOOK definition
  public
  create protected

  global friends ZCB_OO_TUT_PERS_SBOOK .

public section.
*"* public components of class ZCL_OO_TUT_PERS_SBOOK
*"* do not include other source files here!!!

  interfaces IF_OS_STATE .

  methods SET_WUNIT
    importing
      !I_WUNIT type S_WEIUNIT
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_SMOKER
    importing
      !I_SMOKER type S_SMOKER
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_RESERVED
    importing
      !I_RESERVED type S_RESERV
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_PASSNAME
    importing
      !I_PASSNAME type S_PASSNAME
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_PASSFORM
    importing
      !I_PASSFORM type S_FORM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_PASSBIRTH
    importing
      !I_PASSBIRTH type S_BIRTHDAT
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_ORDER_DATE
    importing
      !I_ORDER_DATE type S_BDATE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_LUGGWEIGHT
    importing
      !I_LUGGWEIGHT type S_LUGWEIGH
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_LOCCURKEY
    importing
      !I_LOCCURKEY type S_CURRCODE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_LOCCURAM
    importing
      !I_LOCCURAM type S_L_CUR_PR
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_INVOICE
    importing
      !I_INVOICE type S_INVFLAG
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_FORCURKEY
    importing
      !I_FORCURKEY type S_CURR
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_FORCURAM
    importing
      !I_FORCURAM type S_F_CUR_PR
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_CUSTTYPE
    importing
      !I_CUSTTYPE type S_CUSTTYPE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_CUSTOMID
    importing
      !I_CUSTOMID type S_CUSTOMER
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_COUNTER
    importing
      !I_COUNTER type S_COUNTNUM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_CLASS
    importing
      !I_CLASS type S_CLASS
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_CANCELLED
    importing
      !I_CANCELLED type S_CANCEL
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods SET_AGENCYNUM
    importing
      !I_AGENCYNUM type S_AGNCYNUM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_WUNIT
    returning
      value(RESULT) type S_WEIUNIT
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_SMOKER
    returning
      value(RESULT) type S_SMOKER
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_RESERVED
    returning
      value(RESULT) type S_RESERV
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_PASSNAME
    returning
      value(RESULT) type S_PASSNAME
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_PASSFORM
    returning
      value(RESULT) type S_FORM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_PASSBIRTH
    returning
      value(RESULT) type S_BIRTHDAT
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_ORDER_DATE
    returning
      value(RESULT) type S_BDATE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_LUGGWEIGHT
    returning
      value(RESULT) type S_LUGWEIGH
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_LOCCURKEY
    returning
      value(RESULT) type S_CURRCODE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_LOCCURAM
    returning
      value(RESULT) type S_L_CUR_PR
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_INVOICE
    returning
      value(RESULT) type S_INVFLAG
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_FORCURKEY
    returning
      value(RESULT) type S_CURR
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_FORCURAM
    returning
      value(RESULT) type S_F_CUR_PR
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_FLDATE
    returning
      value(RESULT) type S_DATE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CUSTTYPE
    returning
      value(RESULT) type S_CUSTTYPE
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CUSTOMID
    returning
      value(RESULT) type S_CUSTOMER
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_COUNTER
    returning
      value(RESULT) type S_COUNTNUM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CONNID
    returning
      value(RESULT) type S_CONN_ID
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CLASS
    returning
      value(RESULT) type S_CLASS
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CARRID
    returning
      value(RESULT) type S_CARR_ID
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_CANCELLED
    returning
      value(RESULT) type S_CANCEL
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_BOOKID
    returning
      value(RESULT) type S_BOOK_ID
    raising
      CX_OS_OBJECT_NOT_FOUND .
  methods GET_AGENCYNUM
    returning
      value(RESULT) type S_AGNCYNUM
    raising
      CX_OS_OBJECT_NOT_FOUND .
  class CL_OS_SYSTEM definition load .
protected section.
*"* protected components of class ZCL_OO_TUT_PERS_SBOOK
*"* do not include other source files here!!!

  data WUNIT type S_WEIUNIT .
  data SMOKER type S_SMOKER .
  data RESERVED type S_RESERV .
  data PASSNAME type S_PASSNAME .
  data PASSFORM type S_FORM .
  data PASSBIRTH type S_BIRTHDAT .
  data ORDER_DATE type S_BDATE .
  data LUGGWEIGHT type S_LUGWEIGH .
  data LOCCURKEY type S_CURRCODE .
  data LOCCURAM type S_L_CUR_PR .
  data INVOICE type S_INVFLAG .
  data FORCURKEY type S_CURR .
  data FORCURAM type S_F_CUR_PR .
  data FLDATE type S_DATE .
  data CUSTTYPE type S_CUSTTYPE .
  data CUSTOMID type S_CUSTOMER .
  data COUNTER type S_COUNTNUM .
  data CONNID type S_CONN_ID .
  data CLASS type S_CLASS .
  data CARRID type S_CARR_ID .
  data CANCELLED type S_CANCEL .
  data BOOKID type S_BOOK_ID .
  data AGENCYNUM type S_AGNCYNUM .
private section.
*"* private components of class ZCL_OO_TUT_PERS_SBOOK
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_OO_TUT_PERS_SBOOK IMPLEMENTATION.


method GET_AGENCYNUM.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute AGENCYNUM
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

  result = AGENCYNUM.

           " GET_AGENCYNUM
endmethod.


method GET_BOOKID.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute BOOKID
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

  result = BOOKID.

           " GET_BOOKID
endmethod.


method GET_CANCELLED.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CANCELLED
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

  result = CANCELLED.

           " GET_CANCELLED
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


method GET_CLASS.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CLASS
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

  result = CLASS.

           " GET_CLASS
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


method GET_COUNTER.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute COUNTER
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

  result = COUNTER.

           " GET_COUNTER
endmethod.


method GET_CUSTOMID.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CUSTOMID
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

  result = CUSTOMID.

           " GET_CUSTOMID
endmethod.


method GET_CUSTTYPE.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute CUSTTYPE
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

  result = CUSTTYPE.

           " GET_CUSTTYPE
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


method GET_FORCURAM.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute FORCURAM
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

  result = FORCURAM.

           " GET_FORCURAM
endmethod.


method GET_FORCURKEY.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute FORCURKEY
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

  result = FORCURKEY.

           " GET_FORCURKEY
endmethod.


method GET_INVOICE.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute INVOICE
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

  result = INVOICE.

           " GET_INVOICE
endmethod.


method GET_LOCCURAM.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute LOCCURAM
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

  result = LOCCURAM.

           " GET_LOCCURAM
endmethod.


method GET_LOCCURKEY.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute LOCCURKEY
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

  result = LOCCURKEY.

           " GET_LOCCURKEY
endmethod.


method GET_LUGGWEIGHT.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute LUGGWEIGHT
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

  result = LUGGWEIGHT.

           " GET_LUGGWEIGHT
endmethod.


method GET_ORDER_DATE.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute ORDER_DATE
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

  result = ORDER_DATE.

           " GET_ORDER_DATE
endmethod.


method GET_PASSBIRTH.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute PASSBIRTH
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

  result = PASSBIRTH.

           " GET_PASSBIRTH
endmethod.


method GET_PASSFORM.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute PASSFORM
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

  result = PASSFORM.

           " GET_PASSFORM
endmethod.


method GET_PASSNAME.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute PASSNAME
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

  result = PASSNAME.

           " GET_PASSNAME
endmethod.


method GET_RESERVED.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute RESERVED
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

  result = RESERVED.

           " GET_RESERVED
endmethod.


method GET_SMOKER.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute SMOKER
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

  result = SMOKER.

           " GET_SMOKER
endmethod.


method GET_WUNIT.
***BUILD 090501
     " returning RESULT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Get Attribute WUNIT
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

  result = WUNIT.

           " GET_WUNIT
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


method IF_OS_STATE~INIT.
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

endmethod.


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


method SET_AGENCYNUM.
***BUILD 090501
     " importing I_AGENCYNUM
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute AGENCYNUM
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

  if ( I_AGENCYNUM <> AGENCYNUM ).

    AGENCYNUM = I_AGENCYNUM.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_AGENCYNUM <> AGENCYNUM )

           " GET_AGENCYNUM
endmethod.


method SET_CANCELLED.
***BUILD 090501
     " importing I_CANCELLED
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute CANCELLED
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

  if ( I_CANCELLED <> CANCELLED ).

    CANCELLED = I_CANCELLED.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_CANCELLED <> CANCELLED )

           " GET_CANCELLED
endmethod.


method SET_CLASS.
***BUILD 090501
     " importing I_CLASS
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute CLASS
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

  if ( I_CLASS <> CLASS ).

    CLASS = I_CLASS.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_CLASS <> CLASS )

           " GET_CLASS
endmethod.


method SET_COUNTER.
***BUILD 090501
     " importing I_COUNTER
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute COUNTER
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

  if ( I_COUNTER <> COUNTER ).

    COUNTER = I_COUNTER.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_COUNTER <> COUNTER )

           " GET_COUNTER
endmethod.


method SET_CUSTOMID.
***BUILD 090501
     " importing I_CUSTOMID
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute CUSTOMID
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

  if ( I_CUSTOMID <> CUSTOMID ).

    CUSTOMID = I_CUSTOMID.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_CUSTOMID <> CUSTOMID )

           " GET_CUSTOMID
endmethod.


method SET_CUSTTYPE.
***BUILD 090501
     " importing I_CUSTTYPE
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute CUSTTYPE
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

  if ( I_CUSTTYPE <> CUSTTYPE ).

    CUSTTYPE = I_CUSTTYPE.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_CUSTTYPE <> CUSTTYPE )

           " GET_CUSTTYPE
endmethod.


method SET_FORCURAM.
***BUILD 090501
     " importing I_FORCURAM
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute FORCURAM
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

  if ( I_FORCURAM <> FORCURAM ).

    FORCURAM = I_FORCURAM.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_FORCURAM <> FORCURAM )

           " GET_FORCURAM
endmethod.


method SET_FORCURKEY.
***BUILD 090501
     " importing I_FORCURKEY
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute FORCURKEY
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

  if ( I_FORCURKEY <> FORCURKEY ).

    FORCURKEY = I_FORCURKEY.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_FORCURKEY <> FORCURKEY )

           " GET_FORCURKEY
endmethod.


method SET_INVOICE.
***BUILD 090501
     " importing I_INVOICE
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute INVOICE
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

  if ( I_INVOICE <> INVOICE ).

    INVOICE = I_INVOICE.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_INVOICE <> INVOICE )

           " GET_INVOICE
endmethod.


method SET_LOCCURAM.
***BUILD 090501
     " importing I_LOCCURAM
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute LOCCURAM
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

  if ( I_LOCCURAM <> LOCCURAM ).

    LOCCURAM = I_LOCCURAM.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_LOCCURAM <> LOCCURAM )

           " GET_LOCCURAM
endmethod.


method SET_LOCCURKEY.
***BUILD 090501
     " importing I_LOCCURKEY
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute LOCCURKEY
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

  if ( I_LOCCURKEY <> LOCCURKEY ).

    LOCCURKEY = I_LOCCURKEY.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_LOCCURKEY <> LOCCURKEY )

           " GET_LOCCURKEY
endmethod.


method SET_LUGGWEIGHT.
***BUILD 090501
     " importing I_LUGGWEIGHT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute LUGGWEIGHT
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

  if ( I_LUGGWEIGHT <> LUGGWEIGHT ).

    LUGGWEIGHT = I_LUGGWEIGHT.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_LUGGWEIGHT <> LUGGWEIGHT )

           " GET_LUGGWEIGHT
endmethod.


method SET_ORDER_DATE.
***BUILD 090501
     " importing I_ORDER_DATE
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute ORDER_DATE
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

  if ( I_ORDER_DATE <> ORDER_DATE ).

    ORDER_DATE = I_ORDER_DATE.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_ORDER_DATE <> ORDER_DATE )

           " GET_ORDER_DATE
endmethod.


method SET_PASSBIRTH.
***BUILD 090501
     " importing I_PASSBIRTH
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute PASSBIRTH
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

  if ( I_PASSBIRTH <> PASSBIRTH ).

    PASSBIRTH = I_PASSBIRTH.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_PASSBIRTH <> PASSBIRTH )

           " GET_PASSBIRTH
endmethod.


method SET_PASSFORM.
***BUILD 090501
     " importing I_PASSFORM
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute PASSFORM
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

  if ( I_PASSFORM <> PASSFORM ).

    PASSFORM = I_PASSFORM.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_PASSFORM <> PASSFORM )

           " GET_PASSFORM
endmethod.


method SET_PASSNAME.
***BUILD 090501
     " importing I_PASSNAME
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute PASSNAME
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

  if ( I_PASSNAME <> PASSNAME ).

    PASSNAME = I_PASSNAME.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_PASSNAME <> PASSNAME )

           " GET_PASSNAME
endmethod.


method SET_RESERVED.
***BUILD 090501
     " importing I_RESERVED
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute RESERVED
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

  if ( I_RESERVED <> RESERVED ).

    RESERVED = I_RESERVED.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_RESERVED <> RESERVED )

           " GET_RESERVED
endmethod.


method SET_SMOKER.
***BUILD 090501
     " importing I_SMOKER
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute SMOKER
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

  if ( I_SMOKER <> SMOKER ).

    SMOKER = I_SMOKER.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_SMOKER <> SMOKER )

           " GET_SMOKER
endmethod.


method SET_WUNIT.
***BUILD 090501
     " importing I_WUNIT
     " raising CX_OS_OBJECT_NOT_FOUND
************************************************************************
* Purpose        : Set attribute WUNIT
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

  if ( I_WUNIT <> WUNIT ).

    WUNIT = I_WUNIT.

*   * Inform class agent and handle exceptions
    state_changed.

  endif. "( I_WUNIT <> WUNIT )

           " GET_WUNIT
endmethod.
ENDCLASS.

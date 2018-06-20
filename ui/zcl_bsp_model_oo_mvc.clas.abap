class ZCL_BSP_MODEL_OO_MVC definition
  public
  inheriting from CL_BSP_MODEL2
  final
  create public .

public section.
*"* public components of class ZCL_BSP_MODEL_OO_MVC
*"* do not include other source files here!!!

  types:
    BEGIN OF t_sflight,
         carrid     type sflight-carrid, "Airline Code
         connid     type sflight-connid, "Flight Connection Number
         fldate     type sflight-fldate, "Flight date
         price      type sflight-price, "Airfare
         currency   type sflight-currency, "Local currency of airline
         planetype  type sflight-planetype, "Aircraft Type
         seatsmax   type sflight-seatsmax, "Maximum capacity in economy class
         seatsocc   type sflight-seatsocc, "Occupied seats in economy class
         paymentsum type sflight-paymentsum, "Total of current bookings
       END   OF t_sflight .
  types:
    tt_sflight type STANDARD TABLE OF T_SFLIGHT .

  data MV_CARRID type SFLIGHT-CARRID .
  data MT_SFLIGHT type TT_SFLIGHT .

  methods FILL_SFLIGHT .
protected section.
*"* protected components of class ZCL_BSP_MODEL_OO_MVC
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_BSP_MODEL_OO_MVC
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_BSP_MODEL_OO_MVC IMPLEMENTATION.


METHOD fill_sflight.
  SELECT * FROM sflight INTO CORRESPONDING FIELDS OF TABLE me->mt_sflight
    WHERE carrid = me->mv_carrid.
ENDMETHOD.
ENDCLASS.

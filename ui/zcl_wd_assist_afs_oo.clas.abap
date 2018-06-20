class ZCL_WD_ASSIST_AFS_OO definition
  public
  inheriting from CL_WD_COMPONENT_ASSISTANCE
  create public .

public section.
*"* public components of class ZCL_WD_ASSIST_AFS_OO
*"* do not include other source files here!!!

  methods FILL_SFLIGHT
    importing
      !I_CARRID type S_CARR_ID
    returning
      value(R_SFLIGHT) type SFLIGHT_TAB1 .
protected section.
*"* protected components of class ZCL_WD_ASSIST_AFS_OO
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_WD_ASSIST_AFS_OO
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_WD_ASSIST_AFS_OO IMPLEMENTATION.


method FILL_SFLIGHT.
  select * from sflight into CORRESPONDING FIELDS OF TABLE r_sflight
    where carrid = i_carrid.
endmethod.
ENDCLASS.

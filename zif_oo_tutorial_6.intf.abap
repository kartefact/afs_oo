*"* components of interface ZIF_OO_TUTORIAL_6
INTERFACE zif_oo_tutorial_6
  PUBLIC .


  TYPES:
    BEGIN OF t_cost,
        price TYPE s_price,
        currency TYPE s_currcode,
       END OF t_cost .

  METHODS get_flight_details
    RETURNING
      value(r_sflight) TYPE sflight .
  METHODS calculate_flight_price
    RETURNING
      value(r_price) TYPE t_cost .
ENDINTERFACE.                    "ZIF_OO_TUTORIAL_6

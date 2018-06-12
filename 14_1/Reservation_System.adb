with Ada.Calendar.Time;
use  Ada.Calendar.Time;

package body Reservation_System is

    procedure Make(R: in out Reservation_T) is
    begin
        Select_Seat(R);
    end Make;

    procedure Make(NR: in out Nice_Reservation_T) is
    begin
        Make(Reservation_T(NR));
        Order_Meal(NR);
    end Make;

    procedure Make(PR: in out Posh_Reservation_T) is
    begin
        Make(Reservation_T(PR));
        Arrange_Limo(PR);
    end Make;

--------------------------------------------------------------------------------
    --implemented in other external file...
    procedure Select_Seat   (R : in out Reservation_T)       is separate;
    procedure Order_Meal    (NR : in out Nice_Reservation_T) is separate;
    procedure Arrange_Limo  (PR : in out Posh_Reservation_T) is separate;

end Reservation_System;

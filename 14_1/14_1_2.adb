with Ada.Text_IO,
     Ada.Integer_Text_IO,
     Reservation_System;
use Ada.Text_IO,
    Ada.Integer_Text_IO,
    Reservation_System;

procedure exe14_1_2 is

    R   : Reservation_T       := (150, (30, 6, 2018), "A23");
    NR  : Nice_Reservation_T  := (R with Seat_Sort => Window, Food => Green);
begin

    put_Line("What a nice flight!");

end exe14_1_2;

package Reservation_System is

    type Position_T    is (Aisle, Window);
    type Meal_T        is (Green, White, Red);

    type Date_T is
    record
        Day   : INTEGER range 1..31;
        Month : INTEGER range 1..12;
        Year  : INTEGER range 1776..2010;
    end record;

    type Reservation_T is tagged
    record
        Flight_Number   : integer;
        Date_Of_Travel  : Date_T;
        Seat_Number     : String(1..3) := "   ";
    end record;

    procedure Make       (R : in out Reservation_T);
    procedure Select_Seat(R : in out Reservation_T);

--------------------------------------------------------------------------------

    type Basic_Reservation_T is new Reservation_T with null record;

--------------------------------------------------------------------------------

    type Nice_Reservation_T is new Reservation_T with
    record
        Seat_Sort : Position_T;
        Food      : Meal_T;
    end record;

    overriding
    procedure Make      (NR : in out Nice_Reservation_T);
    procedure Order_Meal(NR : in out Nice_Reservation_T);

--------------------------------------------------------------------------------

    type Posh_Reservation_T is new Nice_Reservation_T with
    record
        Destination : Address;
    end record;

    overriding
    procedure Make        (PR : in out Posh_Reservation_T);
    procedure Arrange_Limo(PR : in out Posh_Reservation_T);

end Reservation_System;

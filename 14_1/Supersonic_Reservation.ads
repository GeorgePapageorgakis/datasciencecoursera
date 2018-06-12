package body Reservation_System.Supersonic_Reservation is

    type Supersonic_Reservation_T is new Reservation_System.Reservation with
    record
        Champagne : string(1..8);
    end record;

    overriding
    procedure Make       (SR : in out Supersonic_Reservation_T);
    procedure Order_Drink(SR : in out Supersonic_Reservation_T);

end Reservation_System.Supersonic_Reservation;

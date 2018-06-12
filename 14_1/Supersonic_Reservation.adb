package body Reservation_System.Supersonic_Reservation is

    overriding
    procedure Make(SR: in out Supersonic_Reservation_T) is
    begin
        Make(Reservation_T(SR));
        Order_Drink(SR);
    end Make;

    procedure Order_Drink(SR : in out Supersonic_Reservation_T) is
    begin
        SR.Champagne := "Champagn";
    end Order_Drink;

end Reservation_System.Supersonic_Reservation;

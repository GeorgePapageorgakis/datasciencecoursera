with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure isi2_10 is

    x  : integer;
    y  : integer;
    q  : natural := 0;

    function Calc_Quotient(a : integer; b : integer) return natural is
    begin
        if b = 0 then
            raise Constraint_Error;
        end if;
        return natural(abs(a/b));
    -- exception
    --     when  Constraint_Error  => Put_Line(" Divide by zero error.");
    --     when Program_Error      => Put_Line(" Program Error.");
    end Calc_Quotient;

begin

    for index in 1..3 loop
        declare
        begin
            Put_Line("Input x:");
            Get(x);
            Put_Line("Input y:");
            Get(y);
            q := Calc_Quotient(x, y);
            Put(q, 5);
        exception
            when Constraint_Error => Put_Line(" Divide by zero error.");
            when Data_Error       => Put_Line(" Wrong input type. Expecting integer");
                x := 0;
                y := 0;
            when others => Put_Line("Unknown Exception found.");
        end;
    end loop;

end isi2_10;

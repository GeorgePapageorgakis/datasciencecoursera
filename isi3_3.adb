with
  Ada.Text_IO,
  Ada.Integer_Text_IO,
  Ada.Strings.Unbounded,
  Ada.Text_IO.Unbounded_IO;

procedure isi3_3 is

    function Check_Exit(s : Ada.Strings.Unbounded.Unbounded_String) return boolean is
    begin
        if s(1..4) = "EXIT" then
            return true;
        return false;
    end Check_Exit;

    S : Ada.Strings.Unbounded.Unbounded_String;

begin

    for index in 1..10 loop
        Ada.Text_IO.Put("Enter a string: ");
        S := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);
        Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(S));
        Ada.Text_IO.Unbounded_IO.Put_Line(S);
        exit when Check_Exit(S);
    end loop;

end isi3_3;

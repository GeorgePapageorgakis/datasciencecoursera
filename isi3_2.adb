with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure isi3_2 is

    type Character_Display is
    array (positive range <>) of character;
    Magic_Chars: constant Character_Display :=
    ('S', 'A', 'T', 'o', 'r', 'a', '#', '1', '0', '9', ';', ',', '~', '!', '@');

    type Char_Enum_T is (LOWER_CASE, UPPER_CASE, SHARP, COMMA, SEMICOLON, DIGIT, SOME_OTHER);
    package Char_IO is new Ada.Text_IO.Enumeration_IO(Char_Enum_T);
    use Char_IO;

    function Char_Acting(ch : character) return Char_Enum_T is
        result : Char_Enum_T;
    begin
        case ch is
            when 'A'..'Z'=> result := UPPER_CASE;
            when 'a'..'z'=> result := LOWER_CASE;
            when '0'..'9'=> result := DIGIT;
            when '#'    => result := SHARP;
            when ','    => result := COMMA;
            when ';'    => result := SEMICOLON;
            when others => result := SOME_OTHER;
        end case;
        return result;
    end Char_Acting;

    charNum : Char_Enum_T;
    char    : character;
begin

    for index in Magic_Chars'Range loop
        --Put_Line("Input x:");
        --Get(char);
        char := Magic_Chars(index);
        charNum := Char_Acting(char);
        Put(charNum, 5);
        --char := character'SUCC(char);
        New_Line;
    end loop;

end isi3_2;

-- a comment
create or replace procedure hex_numbers
as
  digit varchar2(1) := '' ;
  tempint number := 0 ;
begin
  for i in 1 .. 12
  loop
     tempint := round(dbms_random.value (1,15),0);
     case
        when tempint = 10 then digit := 'a' ;
        when tempint = 11 then digit := 'b' ;
        when tempint = 12 then digit := 'c' ;
        when tempint = 13 then digit := 'd' ;
        when tempint = 14 then digit := 'e' ;
        when tempint = 15 then digit := 'f' ;
        else digit := to_char(tempint) ;
     end case;         
     dbms_output.put_line( digit ) ;
  end loop;
end;
program test;

(* JCF CLI test file *)

uses CRT;

procedure myProcedure;
var s: String;
begin
  s := 'this is a string';
  writeln(s);
end;

function myFunction(aParam: string): boolean;
var i: integer;
begin
  for i := 1 to 10 do
    if i < 10 then write(i, ',')
      else writeln(i);

  i := 1;
  repeat
    case i of
      1..9:
        for i := 1 to i do write(i, ',');
      10: begin
        writeln;
        writeln;
      end;
      else
        myProcedure;
    end;
  until i >= 10;

  result := true;
end;

//# main program
var
  c, r: Integer;
  s: String;
  a: Array of Integer;

BEGIN
  //! clear first
  ClrScr;

  SetLength(a, 10);
  FOR c := 0 TO High(a) DO
    a[c] := c;
  FOR c := 0 TO High(a) DO
    IF i < High(a) THEN write(a[c], ',')
      ELSE writeln;

  c := ScreenWidth; //* screen size
  r := ScreenHeight;
  s := 'Screen size: ';
  writeln(s, c, '×', r);

  write('Enter your name: '); //? input
  readln(s);
  writeln('Hello, ', s, '!'); //+ forgotten

  //-readln; // unnecessary
  // TODO: to-do next
END.
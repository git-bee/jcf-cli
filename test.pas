program test;

(* JCF CLI test file *)

uses
  CRT;

procedure myProcedure;
var
  s: string;
begin
  s := 'this is a string';
  writeLn(s);
end;

function myFunction(aParam: string): boolean;
var
  i: integer;
begin
  for i := 1 to 10 do
    if i < 10 then write(i, ',')
    else writeLn(i);

  i := 1;
  repeat
    case i of
      1..9: for i := 1 to i do write(i, ',');
      10: writeLn;
      else myProcedure;
    end;
  until i >= 10;

  result := true;
end;

//# main program
var
  c, r: integer;
  s: string;
  a: array of integer;

begin
  //! clear first
  ClrScr;

  SetLength(a, 10);
  for c := 0 to High(a) do a[c] := c;
  for c := 0 to High(a) do
    if i < High(a) then write(a[c], ',')
    else writeLn;

  c := ScreenWidth; //* screen size
  r := ScreenHeight;
  s := 'Screen size: ';
  writeLn(s, c, '×', r);

  write('Enter your name: '); //? input
  readLn(s);
  writeLn('Hello, ', s, '!'); //+ forgotten

  //-readln; // unnecessary
  // TODO: to-do next
end.

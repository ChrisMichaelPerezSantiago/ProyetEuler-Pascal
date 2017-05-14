program problem01;
uses crt;

 (*
    Problem: Multiple of 3 and 5
    Problem 1

    @Author: Chris M. Perez
    @Date:   5/13/2017
  *)

var
  n , total: longint;

function multiple(arg: longint): longint;
var
  i: longint;
  sum: longint = 0;

begin
  for i := 1 to arg do begin
    if (i mod 3 = 0) or (i mod 5 = 0) then
      sum := sum + i
  end;
  result := sum
end;

begin
  n := 999;

  total := multiple(n);
  Writeln(total);
  readkey;
end.

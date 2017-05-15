program problem02;
uses crt;

  (*
     Problem: Even Fibonacci numbers
     Problem 2

     @Author: Chris M. Perez
     @Date:   5/14/2017
  *)

var
  sum: longint = 0;
  MAX: longint = 4000000;


function fib(arg: longint): longint;
begin
  if(arg < 3) then fib := 1
  else
    fib := fib(arg - 1) + fib(arg - 2);
end;

var
  i: longint;

begin
  for i := 1 to MAX do begin
      if(fib(i) > MAX) then
        break;

      if(fib(i) mod 2 = 0) then
        sum := sum + fib(i)
  end;
  Writeln(sum);
  readkey;
end.

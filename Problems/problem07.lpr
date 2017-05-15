program problem07;
uses crt;

  (*
     Problem: 10001 Prime
     Problem 7

     @Author: Chris M. Perez
     @Date:   5/15/2017
  *)


const
  MAX: longint = 10001;

function isPrime(arg: longint): boolean;
var
  prime: boolean = true;
  x: longint;
  i: longint;
  temp: longint;

begin
  if arg < 2 then begin
    prime := false;
  end;

  if arg = 2 then begin
    prime := true;
  end;

  x := LongInt(Round(Sqrt(Extended(arg))));

  for i := 2 to x do begin
    if arg mod i = 0 then
      prime := false;
  end;
  isPrime := prime;
end;

function primeNumbers(arg: longint): longint;
var
 x: longint = 0;
 counter: longint = 0;

begin
  while counter <> MAX do begin
    x := x + 1;
    if isPrime(x) then begin
      counter := counter + 1;
    end;
  end;
  primeNumbers := x;
end;

var
  result: longint;

begin
  result := primeNumbers(MAX);

  writeln(result);
  readkey;
end.

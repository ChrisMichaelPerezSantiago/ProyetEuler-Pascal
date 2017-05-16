program problem03;
uses crt;

  (*
     Problem: Largest prime factor
     Problem 3

     @Author: Chris M. Perez
     @Date:   5/16/2017
  *)

const
  MAX: int64 = 600851475143;

function largestPrimeFactorization(arg: int64): int64;
var
  i: int64 = 2;

begin
  repeat
    i := i + 1;
    if arg mod i = 0 then begin
      arg := arg div i;
      i := i - 1;
    end;
  until not (i < arg);
  largestPrimeFactorization := i + 1;
end;

var
  result: int64 = 0;

begin
  result := largestPrimeFactorization(MAX);

  writeln(result);
  readkey;
end.

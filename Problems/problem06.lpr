program problem06;
uses crt;

  (*
     Problem: Largest palindrome product
     Problem 4

     @Author: Chris M. Perez
     @Date:   5/14/2017
  *)

const
  MAX: longint = 100;

function sum_square(arg: longint): longint;
var
  i: longint;
  sum: longint = 0;

begin
  for i := 1 to 100 do begin
    sum := sum + (i * i);
  end;
  sum_square := sum;
end;

function square_sum(arg: longint): longint;
var
  i: longint;
  sum: longint = 0;

begin
  for i := 1 to 100 do begin
    sum := sum + i;
  end;
  square_sum := sum;
end;

var
  sumQ: longint = 0;
  qSum: longint = 0;
  result: longint = 0;

begin
  sumQ := sum_square(MAX);
  qSum := square_sum(MAX);

  result := (qSum * qSum) - sumQ;
  writeln(result);
  readkey;
end.

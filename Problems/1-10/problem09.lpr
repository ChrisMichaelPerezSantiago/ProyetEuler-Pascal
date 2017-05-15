program problem09;
uses crt;

  (*
     Problem: Special Pythagorean triplet
     Problem 9

     @Author: Chris M. Perez
     @Date:   5/15/2017
  *)


const
  MAX: longint = 1000;

function pythagoreanTriplet(arg: longint): longint;
var
  isPythagoreanTriplet: boolean = false;
  product: longint = 1;
  k: longint = 0;
  i , j: longint;

begin
  for i := 1 to MAX div 3 do begin
    for j := i to MAX div 2 do begin
      k := MAX - i - j;

      if (i * i) + (j * j) = (k * k) then begin
        isPythagoreanTriplet := true;
        product := i * j * k;
        break;
      end;
    end;
    if isPythagoreanTriplet then begin
      break;
    end;
  end;
  pythagoreanTriplet := product;
end;

var
  result: longint = 0;

begin
  result := pythagoreanTriplet(MAX);
  writeln(result);
  readkey;
end.

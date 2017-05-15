program problem04
uses crt;

  (*
     Problem: Largest palindrome product
     Problem 4

     @Author: Chris M. Perez
     @Date:   5/14/2017
  *)



function isPalindrome(arg: longint): Boolean;
var
  temp: longint;
  reversed: longint = 0;

begin
  temp := arg;

  while temp > 0 do begin
    reversed := reversed * 10 + temp mod 10;
    temp := temp div 10;
  end;

  exit(arg = reversed);
end;


var
  product: longint = 0;
  actual: longint = 0;
  last: longint = 0;
  i , j: longint;

begin
  for i := 100 to 999 do begin
    for j := Round(100000 / i + 1) to 999 do begin
      product := i * j;

      if isPalindrome(product) then
        actual := product;

      if actual > last then
        last := actual
    end;
  end;
  Writeln(last);
  readkey;
end.

program problem05;
uses crt;

  (*
     Problem: Smallest multiple
     Problem 5

     @Author: Chris M. Perez
     @Date:   5/16/2017
  *)

const
  MAX: longint 20;

function smallestMultiple(arg: longint): longint;
var
  flag: boolean = true;
  actualValue: longint = 20;
  i: longint;


begin
  while true do begin
    for i := 1 to arg do begin
      flag := true;

      if actualValue  mod i <> 0 then begin
        flag := false;
        break;
      end;
    end;
    if flag then begin
      break;
    end;
    actualValue := actualValue + 1;
  end;

  smallestMultiple := actualValue;
end;

var
  result: longint = 0;

begin
  result := smallestMultiple(MAX);

  writeln(result);
  readkey;
end.

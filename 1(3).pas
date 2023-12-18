var i,n:integer;
a:array of integer;
function abs():integer;
var i,num:integer;
begin
for i:=1 to n do
if a[i-1] < 0 then begin num:=i; end;
writeln(num); 
end;

begin
readln(n);
setlength(a,n);
for i:=1 to n do
a[i-1]:=random(20)-10;
writeln(a);
abs();
end.
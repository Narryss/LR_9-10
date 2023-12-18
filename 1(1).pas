var i,n:integer;
a:array of integer;
function proiz():integer;
var i,b:integer;
begin
b:=1;
for i:=0 to n-1 do
if a[i] mod 2 = 0 then b:=b*a[i];
proiz:=b;  
end;
begin
readln(n);
setlength(a,n);
for i:=0 to n-1 do
a[i]:=random(20)-10;
writeln(a);
writeln(proiz);
end.
var i,n:integer;
a:array of integer;
procedure abs();
var max,nummax,min,nummin,maxminus,nummaxminus,i:integer;
begin
max:=a[0];
min:=a[0];  
maxminus:=a[0];
for i:=1 to n do
begin
if a[i-1] > max then begin max:=a[i-1]; nummax:=i; end;
if a[i-1] < abs(min) then begin min:=a[i-1]; nummin:=i; end;
if a[i-1] < 0 then begin maxminus:=a[i-1]; nummaxminus:=i; end;
end;
for i:=1 to n do
if (a[i-1] < 0) and (a[i-1] > maxminus) then begin maxminus:=a[i-1]; nummaxminus:=i; end;
writeln('Максимальный элемент и его номер = ', max,' ',nummax);
writeln('Минимальный по модулю элемент и его номер = ',min,' ',nummin);
writeln('Максимальный отрицательный элемент и его номер = ',maxminus,' ',nummaxminus);
end;

begin
readln(n);
setlength(a,n);
for i:=1 to n do
a[i-1]:=random(20)-10;
writeln(a);
abs();
end.
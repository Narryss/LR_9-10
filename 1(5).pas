var
  a,b:array of integer;
  i,n,max,min,krat1,krat2,num1,num2:integer;
  procedure abc(a,b:array of integer);
  var
    i:integer;
    begin
      max:=a[0];
      min:=b[0];
      for i:=0 to n-1 do
        begin
        if a[i] > max then begin max:=a[i]; num1:=i; end;
        if b[i] < min then begin min:=b[i]; num2:=i; end;
        end;
        for i:=num2+1 to n-1 do
          b[i]:=b[i]*2;
        a[num1]:=0;
    end;
      
      begin
        readln(n);
        setlength(a,n);
        setlength(b,n);
        for i:=1 to n do
        begin
          a[i-1]:=random(20)+1;
          if (krat1 = 0) and (a[i-1] mod 5 = 0) then krat1:=i;
          b[i-1]:=random(20)+1;
          if (krat2 = 0) and (b[i-1] mod 5 = 0) then krat2:=i;
        end;
        writeln(krat1,' ',krat2);
        writeln(a);
        writeln(b);
        writeln;
        if krat1 < krat2 then abc(a,b) else
        if krat1 = krat2 then writeln('Кратные на одинаковых местах') else abc(b,a);
        writeln(a);
        writeln(b);
      end.
  
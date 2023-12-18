var
  a:array [1..8,1..8] of integer;
  b:array [1..8] of integer;
  i,j,min:integer;
  sr:real;
  begin
    min:=0;
    for i:=1 to 8 do
      for j:=1 to 8 do
      begin
        a[i][j]:=random(20)-10;
      end;
          for i:=1 to 8 do
          begin
            min:=a[i][j];
      for j:=1 to 8 do
        begin
        if a[i][j] < min then begin min:=a[i][j]; end;
        b[i]:=min;
        end;
        end;
        begin
          for i:=1 to 8 do
        sr:=sr+(b[i])/8;  
        end;
      writeln(a);
      writeln(b);
      writeln(sr);
  end.
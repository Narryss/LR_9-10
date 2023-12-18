var
  a:array [1..8,1..6] of integer;
  b:array [1..8] of integer;
  i,j:integer;
  begin
  for i:=1 to 8 do
    for j:=1 to 6 do
      begin
      a[i][j]:=random(20)-10;
    end;
      for i:=1 to 8 do
    for j:=1 to 6 do
      if a[i][j] < 0 then begin b[i]:=-1; break end else b[i]:=1;
    writeln(a);
    writeln(b);  
  end.
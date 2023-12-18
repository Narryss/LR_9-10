var
  a:array [1..8,1..8] of integer;
  b:array [1..8] of integer;
  i,j,max:integer;
  begin
    max:=0;
    for i:=1 to 8 do
      for j:=1 to 8 do
      begin
        a[i][j]:=random(20)-10;
      end;
          for i:=1 to 8 do
      for j:=1 to 7 do
        begin
        if a[i][j] > max then begin max:=a[i][j]; end;
        if (a[i][j] = max) and (a[i][j+1] = max) then begin b[i]:=-1; break end else b[i]:=1;
        end;
      writeln(a);
      writeln(b);
  end.
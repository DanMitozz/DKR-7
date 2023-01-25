uses graphabc;
var xx,yy,rad,updown,vstor:real; glubina :integer;
Var PROGRAMMA: Byte;
procedure levy(x,y,a,r:real;k:integer); 
begin
if k>0 then 
 begin
  r:=r*sin(pi/4);
  levy(x,y,a+pi/4,r,k-1);
  levy(x+r*cos(a+pi/4),y-r*sin(a+pi/4),a-pi/4,r,k-1);
 end 
else
line(trunc(x),trunc(y),trunc(x+r*cos(a)),trunc(y-r*sin(a))); 
end;
{begin
  writeln('Введите масштаб до 450');
  read(rad);
  writeln('Введите глубину прорисовки до 20');
  read(glubina);
  ClearWindow;
  levy(750,450,0,rad,glubina-1);
end;} 
procedure proc1;
begin 
ClearWindow;
rad:=rad-10;
end;
procedure proc2;
begin 
ClearWindow;
yy:=yy + 20
end;
procedure proc3;
begin
ClearWindow;
glubina:=glubina - 1 
end;
procedure proc4;
begin 
ClearWindow;
xx:= xx - 20;
end;
{procedure proc5;
begin 
end;}
procedure proc6;
begin 
ClearWindow;
xx:= xx + 20;
end;
procedure proc7;
begin 
ClearWindow;
rad:=rad+10;
end;
procedure proc8;
begin 
ClearWindow;
yy:=yy - 20;
end;
procedure proc9;
begin 
ClearWindow;
glubina:=glubina + 1 
end;
begin 
begin
  xx:=750;
  yy:=450;
  SetWindowSize(1800,900);
  writeln('Введите масштаб до 450');
  read(rad);
  writeln('Введите глубину прорисовки до 20');
  read(glubina);
  ClearWindow;
  levy(xx,yy,0,rad,glubina-1);
end; 
repeat
Writeln('');
//WriteLn('Выход - 0');
ReadLn(PROGRAMMA);
Case PROGRAMMA of
1: proc1;
2: proc2;
3: proc3;
4: proc4;
//5: proc5;
6: proc6;
7: proc7;
8: proc8;
9: proc9;
end;
levy(xx,yy,0,rad,glubina-1);
until PROGRAMMA = 0;
end.
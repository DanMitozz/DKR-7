uses graphabc;
var mass,stor,xx,yy,rad,updown,vstor:real; glub,glubina :integer;
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
procedure proc1;
begin 
ClearWindow;
rad:=rad-mass;
end;
procedure proc2;
begin 
ClearWindow;
yy:=yy + stor;
end;
procedure proc3;
begin
ClearWindow;
glubina:=glubina - glub; 
end;
procedure proc4;
begin 
ClearWindow;
xx:= xx - stor;
end;
procedure proc5;
begin
Writeln('Введите данные для передвижения в стороны');
readln(stor); 
Writeln('Введите данные по изменению масштаба'); 
readln(mass); 
Writeln('Введите данные по изменению глубины прорисовки'); 
readln(glub);   
end;
procedure proc6;
begin 
ClearWindow;
xx:= xx + stor;
end;
procedure proc7;
begin 
ClearWindow;
rad:=rad+mass;
end;
procedure proc8;
begin 
ClearWindow;
yy:=yy - stor;
end;
procedure proc9;
begin 
ClearWindow;
glubina:=glubina + glub 
end;
begin 
begin
  xx:=750;
  yy:=450;
  stor:=20;
  mass:=10;
  glub:=1;
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
ReadLn(PROGRAMMA);
Case PROGRAMMA of
1: proc1;
2: proc2;
3: proc3;
4: proc4;
5: proc5;
6: proc6;
7: proc7;
8: proc8;
9: proc9;
end;
levy(xx,yy,0,rad,glubina-1);
until PROGRAMMA = 0;
end.
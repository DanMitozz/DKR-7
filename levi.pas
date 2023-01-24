uses graphabc;
var rad :real;
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
begin
SetWindowSize(1800,900);
write('Введите масштаб до 450');
read(rad);
//levy(200,300,0,rad,13);
levy(750,450,0,rad,13);
end.
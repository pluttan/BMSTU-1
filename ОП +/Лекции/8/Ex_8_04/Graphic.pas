unit Graphic;
Interface Uses ExtCtrls,Graphics;
Type  Fn=Function(X:single):single;
Procedure Run(xn,xk:real;n:integer;F:Fn; x1,y1,x2,y2:integer;Image:TImage);

Implementation
Procedure Run;
Var       arr:array[1..200] of record x,y:integer; end;
          x, y, dx, dxl, dyl, Fmin, Fmax,
          mx, my:single;   {��������}
          xm, ym, i,      {������ ����}
          xs, ys:integer;
          s:string[10];

Begin
    Image.Canvas.Pen.Color:=clGreen;
    Image.Canvas.Rectangle(x1,y1,x2,y2);  {������ �����}
    xm:=x2-x1+1;  ym:=y2-y1+1;  {������ ����}
    dx:=(xk-xn)/(n-1);                 {��� ������� �������}
    x:=xn; y:=F(x);
    Fmin:=y; Fmax:=y;{���������� ����������� � ������������ �������� ������� �� �������� �������}
    for i:=2 to n do
      begin
         x:=x+dx;      y:=F(x);
         if  y>Fmax then Fmax:=y;
         if  y<Fmin then Fmin:=y;
      end;
    xs:=40;  ys:=ym-xs;    {���������� ������ ����� ����� �������}
    mx:=(xm-xs*2)/abs(xk-xn) ;   {���������� �������� �� x � y}
    my:=(ym-xs*2)/abs(Fmax-Fmin);
    Image.Canvas.Pen.Color:=clRed;
    Image.Canvas.Pen.Width:=3;
    x:=xn;
    for i:=1 to n do
       begin
         arr[i].x:=round((x-xn)*mx)+x1+xs;
         arr[i].y:=round((Fmin-f(x))*my)+y1+ys;
         x:=x+dx;
       end;
    Image.Canvas.MoveTo(arr[1].x,arr[1].y);
    for i:=2 to n do
           Image.Canvas.LineTo(arr[i].x,arr[i].y);
{����� �����, ������������ ��� y}
    x:=xn;
    dxl:=(xk-xn)/5;
    Image.Canvas.Pen.Width:=1;
    Image.Canvas.Pen.Color:=clBlue;
    repeat
      Str(x:5:2,s);
      Image.Canvas.TextOut(round((x-xn)*mx)+x1+xs-13,ys+5+y1,s);
      Image.Canvas.MoveTo(round((x-xn)*mx)+x1+xs,ym+y1-xs);
      Image.Canvas.LineTo(round((x-xn)*mx)+x1+xs,y1+xs);
      x:=x+dxl;
     until x>xk+0.00001;
   {����� �����, ������������ ��� x}
         y:=Fmin;
         dyl:=(fmax-fmin)/5;
         repeat
            Str(y:5:2,s);
            Image.Canvas.TextOut(x1+5,round(-(y-Fmin)*my)+ys+y1-6,s);
            Image.Canvas.MoveTo(x1+xs,round(-(y-Fmin)*my)+y1+ys);
            Image.Canvas.LineTo(xm+x1-xs,round(-(y-Fmin)*my)+y1+ys);
            y:=y+dyl;
         until y>Fmax+0.0000001;
  end;

End.


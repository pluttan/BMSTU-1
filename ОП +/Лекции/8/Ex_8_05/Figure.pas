Unit Figure;
 Interface
  Uses  extctrls,Graphics;
  Type TMyFigure=class
       public
          x,y,Radius:Word;
          Color:TColor;
          Image:TImage;
          Constructor Create(aImage:TImage;ax,ay,ar:Word;aColor:TColor);
          Procedure Draw; virtual; abstract; {����������� ���������}
          Procedure Clear;
        end;
     TMyCircle=class(TMyFigure)            {����� ����������}
         public  Procedure Draw; override;  {��������� ����������}
     end;
     TMySquare=class(TMyFigure)           {����� �������}
         public  Procedure Draw; override;   {��������� ��������}
     end;
Implementation
   Constructor TMyFigure.Create;
      Begin
            inherited Create;
            Image:=aImage;
            x:=ax;    y:=ay;
            Radius:=ar; Color:=aColor;
            Draw;
      End;
Procedure TMyFigure.Clear;
  Var TempColor:TColor;
  Begin     TempColor:=Color;
            Color:=Image.Canvas.Brush.Color;
            Draw;   {���������� ������ ������ ���� - �������}
            Color:=TempColor;
  End;
Procedure TMyCircle.Draw;
     Begin     Image.Canvas.Pen.Color:=Color;
               Image.Canvas.Ellipse(x-Radius,y-Radius,x+Radius,y+Radius);
     End;
Procedure TMySquare.Draw;
      Begin     Image.Canvas.Pen.Color:=Color;
                Image.Canvas.Rectangle(x-Radius,y-Radius,x+Radius,y+Radius);
      End;
End.



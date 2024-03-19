Unit Figure;
 Interface
  Uses  extctrls,Graphics;
  Type TMyFigure=class
       private    x,y,FRadius:Word;
          FColor:TColor;
          Image:TImage;
          procedure Clear;
          procedure SetSize(ar:word);
          procedure SetColor(aColor:TColor);
       public
          Constructor Create(aImage:TImage;ax,ay,ar:Word;aColor:TColor);
          Procedure Draw; virtual; abstract; {����������� ���������}
          Property Radius:Word write SetSize;
          Property Color:TColor write SetColor;
        end;
    TMyCircle=class(TMyFigure)            {����� ����������}
         public        Procedure Draw; override;  {��������� ����������}
     end;
     TMySquare=class(TMyFigure)           {����� �������}
         public        Procedure Draw; override;   {��������� ��������}
     end;
Implementation
   Constructor TMyFigure.Create;
      Begin
            inherited Create;
            Image:=aImage;
            x:=ax;    y:=ay;
            FRadius:=ar;   FColor:=aColor;
            Draw;
      End;
Procedure TMyFigure.Clear;
  Var TempColor:TColor;
  Begin     TempColor:=FColor;
            FColor:=Image.Canvas.Brush.Color;
            Draw;   {���������� ������ ������ ���� - �������}
            FColor:=TempColor;
  End;
Procedure TMyFigure.SetSize;
        Begin     Clear;     FRadius:=ar;     Draw;    End;
Procedure TMyFigure.SetColor;
        Begin      Clear;      FColor:=aColor;      Draw;  End;
Procedure TMyCircle.Draw;
     Begin     Image.Canvas.Pen.Color:=FColor;
               Image.Canvas.Ellipse(x-FRadius,y-FRadius,x+FRadius,y+FRadius);
     End;
Procedure TMySquare.Draw;
      Begin     Image.Canvas.Pen.Color:=FColor;
                Image.Canvas.Rectangle(x-FRadius,y-FRadius,x+FRadius,y+FRadius);
      End;
End.



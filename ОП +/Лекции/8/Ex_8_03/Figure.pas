Unit Figure;
Interface
Uses graphics,ExtCtrls;
Type
     TFigure=Class
      private  x,y,halflen,
        dx,dy:integer;
        Image:TImage;
        procedure Draw;virtual;abstract;
        procedure Rel(t:real);virtual;
      public
        constructor Create(ax,ay,ah:integer;aImage:TImage);
        procedure Move(t:single);
     end;
     TLine=Class(TFigure)
         private procedure Draw;override;
     end;
     TSquare=Class(TFigure)
         private procedure Draw;override;
     end;
     TCircle=Class(TFigure)
         private r:integer;
            procedure Draw;override;
         public constructor Create(ax,ay,ah,ar:integer;aImage:TImage);
     end;
Implementation
  Constructor TFigure.Create;
    Begin
       inherited Create;
       x:=ax; y:=ay; halflen:=ah; Image:=aImage;
    End;
  Procedure TFigure.Rel;
    Begin
       dx:=round(halflen*cos(t));
       dy:=round(halflen*sin(t));
    End;
  Procedure TFigure.Move;
    Begin
       Image.Canvas.Pen.Color:=clWhite;
       Draw;
       Image.Canvas.Pen.Color:=clBlack;
       Rel(t);
       Draw;
    End;
  Procedure TLine.Draw;
    Begin
      Image.Canvas.MoveTo(x+dx,y+dy);
      Image.Canvas.LineTo(x-dx,y-dy);
    End;
  Procedure TSquare.Draw;
    Begin
      Image.Canvas.MoveTo(x+dx,y+dy);
      Image.Canvas.LineTo(x-dy,y+dx);
      Image.Canvas.LineTo(x-dx,y-dy);
      Image.Canvas.LineTo(x+dy,y-dx);
      Image.Canvas.LineTo(x+dx,y+dy);
    End;
  Constructor TCircle.Create;
    Begin
      inherited Create(ax,ay,ah,aImage);
      r:=ar;
    End;
  Procedure TCircle.Draw;
    Begin
      Image.Canvas.Ellipse(x+dx+r,y+dy+r,x+dx-r,y+dy-r);
    End;
end.
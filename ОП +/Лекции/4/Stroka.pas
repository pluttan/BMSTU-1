Unit Stroka;
Interface
   Procedure Add(var s:openstring);
Implementation
 Procedure Add;
 Var Ch:char;
    begin
      Ch:=s[length(s)];
      s:=s+chr(succ(Ord(Ch)));
    end;
End.  
 
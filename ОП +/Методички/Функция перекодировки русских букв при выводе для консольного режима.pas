unit RusLanguage;

interface
  function RUS(s:shortstring):shortstring;

implementation
  function RUS(s:shortstring):shortstring;
    var i:integer;
    begin
    for i:=1 to length(s) do
      begin
        if ord(s[i]) in [192..239] then s[i]:=chr(ord(s[i])-64);
        if ord(s[i]) in [240..255] then s[i]:=chr(ord(s[i])-16);
      end;
    Result:=s
    end;

end.


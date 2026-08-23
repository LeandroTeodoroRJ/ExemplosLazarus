unit Unit_Global;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
var
  Global:string;
const
  Pi = 3.14;

function diferenca(A, B: integer):integer;

implementation

function diferenca(A, B: integer): integer;
begin
  result:= A-B;
end;

end.


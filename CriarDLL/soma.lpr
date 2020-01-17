library soma;

{$mode objfpc}{$H+}

uses
  Classes
  { you can add units after this };

//Começar a declarar as funções e procedimentos aqui.
function soma(a,b:integer):integer; export; //inserir a cláusula "export"
begin
  soma:=(a+b);  //bloco da função da dll
end;

exports soma;

begin
end.


unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Memo1: TMemo;
    ToggleBox1: TToggleBox;
    ToggleBox2: TToggleBox;
    ToggleBox3: TToggleBox;
    procedure ToggleBox1Change(Sender: TObject);
    procedure ToggleBox2Change(Sender: TObject);
    procedure ToggleBox3Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ToggleBox1Change(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Memo1.Clear;
  while (i<20) do
  begin
    Memo1.Lines.Add(i.ToString());
    i := i+1;
  end;
end;

procedure TForm1.ToggleBox2Change(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Memo1.Clear;
  while (i<20) do
  begin
    Memo1.Lines.Add(i.ToString());
    i := i+1;
    if (i=10) then break;         //Sai do Loop
  end;
end;

procedure TForm1.ToggleBox3Change(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Memo1.Clear;
  while (i<8) do
  begin
    i := i+1;
    if (i=4) then continue;         //Não executa 1 laço de repetição
    Memo1.Lines.Add(i.ToString());
  end;
end;

end.


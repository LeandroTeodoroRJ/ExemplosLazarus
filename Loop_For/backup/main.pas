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
    procedure ToggleBox1Change(Sender: TObject);
    procedure ToggleBox2Change(Sender: TObject);
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
  Memo1.Lines.Clear;
  for i:=0 to 5 do    //TO incrementa e DOWNTO decrementa
  begin
    Memo1.Lines.Add(IntToStr(i));
  end;
end;

procedure TForm1.ToggleBox2Change(Sender: TObject);
var
   C: array[0..2] of real;
   i:real;
begin
   C[0]:=1.2;
   C[1]:=3.4;
   C[2]:=5.7;
   Memo1.Lines.Clear;
   for i in C do
      begin
        Memo1.Lines.Add(FloatToStr(i));
        continue;
      end;
end;


end.


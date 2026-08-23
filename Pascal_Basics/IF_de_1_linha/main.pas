unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
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
  a: boolean;
begin
  a:=true;

  if (a=true) then ShowMessage('Verdadeiro');
//Idem a:
//if (a==true) printf("Verdadeiro")


end;

procedure TForm1.ToggleBox2Change(Sender: TObject);
var
  a:boolean;
begin
  a:=false;

  if (a=true) then ShowMessage('Verdadeiro') else ShowMessage('Falso.');

end;

end.


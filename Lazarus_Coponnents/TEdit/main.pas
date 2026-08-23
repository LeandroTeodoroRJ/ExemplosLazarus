unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ToggleBox1: TToggleBox;
    procedure FormCreate(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Edit1 do
  begin
    MaxLength:=10; //Tamanho máximo de entrada do edit
    Color:=clYellow;
    Font.Size:=14;
    Font.Style:=[fsBold];  //Fonte em negrito
  end;
  Edit2.NumbersOnly:=true; //Entrada para somente números
end;

procedure TForm1.ToggleBox1Change(Sender: TObject);
begin

end;

end.


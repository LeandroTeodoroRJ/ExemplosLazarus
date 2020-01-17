unit unitMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
      {Declarar as funções externas abaixo de var}
  //  function soma(a, b:integer):integer; cdecl; external 'libsoma.so';
      function soma(a, b:integer):integer; external 'libsoma.so';

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  num1, num2: integer;
begin
  num1 := strtoint(Edit1.Text);
  num2 := strtoint(Edit2.Text);
  label1.Caption:=inttostr(soma(num1, num2));
end;

end.


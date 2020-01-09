unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Edit1: TEdit;
    ToggleBox1: TToggleBox;
    procedure ToggleBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

uses Unit1;

{ TForm2 }

procedure TForm2.ToggleBox1Change(Sender: TObject);
begin
 edit1.Text:=Form1.variavel_publica.toString();  //A variável global pode ser
                                                 //acessada de outro formulário
end;

end.


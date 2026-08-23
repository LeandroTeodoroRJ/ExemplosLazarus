unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  unit_global;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    ToggleBox1: TToggleBox;
    ToggleBox2: TToggleBox;
    procedure FormCreate(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
  private
     variavel_privada: integer;  //Só pode ser acessada por essa Unit
  public
     variavel_publica: integer;  //Pode ser acessada por outras Units, desde
                                 //que seja declarada no uses
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

uses Unit2;  //Esse Unit é decladara daqui para evitar o erro de circular
             //reference.


{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  variavel_privada := 10;
  variavel_publica := 5;
  unit_global.var_global:='Free Pascal';
end;

procedure TForm1.ToggleBox1Change(Sender: TObject);
begin
   Form2.showmodal;
end;

end.


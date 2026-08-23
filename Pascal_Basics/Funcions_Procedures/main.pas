unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Unit_Global;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function somar(A:integer; B:integer):integer; //Na declaração não pode conter
                                                  //o nome do formulário
                                                  //para criar Crtl+Shift+C
  public
    //Para declarar uma funcion pública, declare aqui.
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage(IntToStr(somar(3, 5)));

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    showmessage(IntToStr(Unit_Global.diferenca(7, 3)));
end;

function TForm1.somar(A: integer; B: integer): integer;
begin
   result:= A+B;   //ou somar:= A+B;
end;

end.


unit uExemplo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  cPessoa;

type

  { TfrmExemplo }

  TfrmExemplo = class(TForm)
    Calcular: TButton;
    edtCodigo: TEdit;
    edtIdade: TEdit;
    edtIdadeSerSomada: TEdit;
    EdtNome: TEdit;
    edtResultado: TEdit;
    procedure CalcularClick(Sender: TObject);
  private

  public

  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.lfm}

{ TfrmExemplo }

procedure TfrmExemplo.CalcularClick(Sender: TObject);
var oPessoa:TPessoa;
begin
  Try
    oPessoa:=TPessoa.Create(EdtNome.Text);
    oPessoa.codigo:=StrToInt(edtCodigo.Text);
//    oPessoa.nome:=EdtNome.Text;
    oPessoa.idade:=StrToInt(edtIdade.Text);

    edtResultado.Text := oPessoa.saberIdade(StrToInt(edtIdadeSerSomada.Text)).ToString();
  Finally
    FreeAndNil(oPessoa);  //Roda o destructor
  End;

end;

end.


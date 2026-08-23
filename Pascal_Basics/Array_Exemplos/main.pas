unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ToggleBox1: TToggleBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
  private
    var
       var
  Form1: TForm1;
  {
  Para um array global declara-se após a cláusula "var" da seção interface.
  Segue o modelo de declaração geral:

  ARRAY 1x1
  nome_do_array: array[a..b] of tipo_da_variável;
  onde:
  a=valor inicial
  b=valor final

  }
  vetor: array[1..10] of char;          //reserva 10 posições de mémória para
                                        //o array do tipo char

{
  ARRAY n x n MULTIDIMENSIONAL
  Nome_da_matriz: array[a1..n1,a2..n2,...,an..nn] of tipo_da_variável;
  }
  matriz: array[1..3,1..4] of real;

  //VETOR DINÂMICO
  vetor_dinamico: array of integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

type rgPessoa = record
   nome: string[35];
   idade: integer;
end;
var var_registro_pessoa: rgPessoa;

var array_pessoa: array[0..10] of rgPessoa;
    n: integer = 0; // tamanho do vetor


{ TForm1 }


procedure TForm1.FormCreate(Sender: TObject);
var
  tamanho:integer;
begin
  vetor[5]:='F';              //inicialização de um array unidimensional
  matriz[1,2]:=3.5;           //Iniciaizaão de um array bidimensional
  tamanho:=Length(vetor);     //Retorna o tamanho do vetor
  showmessage('O tamnho do array vetor é '+tamanho.ToString());
  tamanho:=Length(matriz[0]);
  showmessage('O tamnho de uma coluna da matriz é '+tamanho.ToString());
end;

procedure TForm1.ToggleBox1Change(Sender: TObject);
begin
  var_registro_pessoa.nome:=Edit2.Text;
  var_registro_pessoa.idade:=strtoint(Edit3.Text);
  array_pessoa[0]:=var_registro_pessoa;
  //Voltando...
  var_registro_pessoa:=array_pessoa[0];
  showmessage('Nome: '+var_registro_pessoa.nome + ' - Idade: '+inttostr(var_registro_pessoa.idade));

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  tamanho:integer;
begin
  tamanho:=strtoint(Edit1.Text);
  SetLength(vetor_dinamico, tamanho);  //Tamanho do array dinâmico
  tamanho:=Length(vetor_dinamico);     //Retorna o tamanho do vetor
  showmessage('O tamnho do array vetor_dimanico é '+tamanho.ToString());
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  vetor[2]:='j';
  showmessage('vetor[2] =  '+vetor[2]);
  finalize(vetor);                       //Limpa o array
  showmessage('vetor[2] =  '+vetor[2]);
end;

end.

{
ARRAY DINÂMICO
procedure TForm1.carrega_dados(buffer: integer);
var
  buffer_entrada: array of real;
  count:integer;
begin
  SetLength(buffer_entrada, buffer);  //Tamanho do array dinâmico
end;
}

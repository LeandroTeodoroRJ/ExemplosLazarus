unit cPessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type TPessoa = class    //Nome da classe que instanciará o objeto
  private
    // atributos e métodos privados
    Fcodigo :Integer; //Variáveis para uso interno da classe (Fields)
    Fnome   :String;
    Fidade  :Integer;
  protected   //Métodos protegigdos

  Public      //Métodos públicos
    constructor Create(nome: string); //Contrutor
    destructor Destroy; override;    //Destructor
    function saberIdade(qtdAnos: Integer): Integer;

    //As propriedades são declaradas em public, para ficarem disponíveis
    property codigo :Integer read Fcodigo write Fcodigo;
    property nome   :String  read Fnome   write Fnome;
    property idade  :Integer read Fidade  write Fidade;

end;

implementation

constructor TPessoa.Create(nome: string);;
begin
  Fnome:=nome;
end;

destructor TPessoa.Destroy;
begin
  inherited;
end;

function TPessoa.saberIdade(qtdAnos: Integer): Integer;
begin
  Result  := Fidade + qtdAnos;
end;


end.


unit ModeloClasse;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type TNomeClasse = class(TObject)
  private        // atributos e métodos privados
    Fnome   :String;
    Fidade  :Integer;
  protected   //Métodos protegigdos

  Public      //Métodos públicos
    constructor Create(nome: string); //Contrutor
    destructor Destroy; override;    //Destructor
    function saberIdade(qtdAnos: Integer): Integer;

    {As propriedades são declaradas em public, para ficarem disponíveis}
    property idade  :Integer read Fidade  write Fidade;

end;

implementation

constructor TPessoa.Create(nome: string);
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


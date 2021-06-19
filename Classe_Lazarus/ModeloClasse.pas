unit ModeloClasse;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

{ TNomeClasse }

 TNomeClasse = class(TObject)  //Com a declaração do tipo a Unit vira uma classe
  private       
  { São aqueles que só podem ser acessados por outros
    métodos da classe, isto é, só são visíveis dentro da classe, não podendo ser acessados nem mesmo nas
    classes dela derivadas por herança}
    //Os Fields são internos da classe, não sendo acessíveis fora dela, assim
    //ficam no private
    Fnome   :String;
    Fidade  :Integer;
  protected   
  { Os campos e métodos protegidos de uma classe são aqueles que só podem ser acessados por outros
    métodos da classe ou de classes dela derivadas – isto é, só são visíveis dentro da própria classe ou das
    classes que forem dela derivadas por herança. }

  Public      // São aqueles que podem ser acessados em qualquer trecho
              // de um programa no qual um objeto ou instância da classe é definido. Os métodos públicos ficam diponíveis para herança.
    constructor Create(nome: string); //Contrutor(Obrigatório)
    destructor Destroy; override;    //Destructor. A palavra override indica que
                                     //método será reescrito
    function saberIdade(qtdAnos: Integer): Integer; //Crt+Shift+C cria o método automaticamente

    {As propriedades são declaradas em public, para ficarem disponíveis}
    property idade  :Integer read Fidade  write Fidade;

end;

implementation

{ TNomeClasse }

constructor TNomeClasse.Create(nome: string);
begin

end;

destructor TNomeClasse.Destroy;
begin
  //Aqui códigos que serão executados antes do Destroy da classe pai(caso necessário)
  inherited Destroy;  //Nessa linha inherited chama o método original da classe pai após realizar as chamadas acima dele.
end;


function TNomeClasse.saberIdade(qtdAnos: Integer): Integer;
begin

end;

constructor TPessoa.Create(nome: string);
begin
  Fnome:=nome;
end;


function TPessoa.saberIdade(qtdAnos: Integer): Integer;
begin
  Result  := Fidade + qtdAnos;
end;


end.

{
OBSERVAÇÕES:

1- Algumas outras diretivas:
virtual - Usado para definir um método que pode ser sobrescrito.
override - Utilizado para definir um método que está sobrescrevendo um método virtual.
abstract - É usado com virtual ou override para definir um método sem implementação que deve ser sobrescrito na subclasse, senão o mesmo não será chamado.
final - Usado com virtual ou override para definir um método que não pode ser sobrescrito.
reintroduce - É como o override, porem, funciona com métodos não dinamicos e não virtuais. Utilizado se você quiser reintroduzir um método e comunicar para o compilador que você não cometeu um engano escrevendo um método com mesmo nome da classe pai.
overload - Essa diretiva permite que você declare um método com mesmo nome, porem, com parâmetros diferentes.

2- Para qua a classe fique disponível não esquecer de declarar no uses do unit
principal.

3- Para instanciar um objeto dessa classe fazemos como no exemplo abaixo. Observe
que para essa clesse é necessário passar um argumento para a criação do objeto.
procedure TfrmExemplo.CalcularClick(Sender: TObject);
var oPessoa:TPessoa;
begin
  Try
    oPessoa:=TPessoa.Create(EdtNome.Text);
  Finally
    FreeAndNil(oPessoa);
  End;


}



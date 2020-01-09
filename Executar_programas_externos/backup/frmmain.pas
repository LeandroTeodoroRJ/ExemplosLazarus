unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Process;         //Incluir a biblioteca Process

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  AProcess: TProcess;  //Objeto do tipo TProcess
begin
  // Agora nós criaremos o objeto TProcess, e
   // associamos ele à variável AProcess.
   AProcess := TProcess.Create(nil);

   // Mostraremos ao novo AProcess qual é o comando para ele executar.
   // Vamos usar o Compilador FreePascal
   AProcess.CommandLine := 'ppc386 -h';  //Executa um programa externo

   // Nós definiremos uma opção para onde o programa
   // é executado. Esta opção verificará que nosso programa
   // não continue enquanto o programa que nós executamos
   // não pare de executar.               vvvvvvvvvvvvvv
   AProcess.Options := AProcess.Options + [poWaitOnExit];

   // Agora que AProcess sabe qual é a linha de comando
   // nós executaremos ele.
   AProcess.Execute;

   // Esta parte não é alcançada enquanto ppc386 não parar a execução.
   AProcess.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
// Neste ponto é definida a variável "AProcess" como uma variável
 // do tipo "TProcess"
 // Também agora nós adicionamos uma TStringList para armazenar os
 // dados lidos da saida do programa.
 var
   AProcess: TProcess;
   AStringList: TStringList;
begin
   // Agora nós criaremos o objeto TProcess, e
   // associamos ele à variável AProcess.
   AProcess := TProcess.Create(nil);

   // Cria o objeto TStringList.
   AStringList := TStringList.Create;

   // Mostraremos ao novo AProcess qual é o comando para ele executar.
   // Vamos usar o Compilador FreePascal
//   AProcess.CommandLine := 'ppc386 -h';
     AProcess.CommandLine := 'date';

   // Nós definiremos uma opção para onde o programa
   // é executado. Esta opção verificará que nosso programa
   // não continue enquanto o programa que nós executamos
   // não pare de executar. Também agora vamos mostrar a ele que
   // que nós precisamos ler a saída do arquivo.
   AProcess.Options := AProcess.Options + [poWaitOnExit, poUsePipes];

   // Agora que AProcess sabe qual é a linha de comando
   // nós executaremos ele.
   AProcess.Execute;

   // Esta parte não é alcançada enquanto ppc386 não parar a execução.

   // Agora lida a saida do programa nós colocaremos
   // ela na TStringList.
   AStringList.LoadFromStream(AProcess.Output);

   // Salvamos a saida para um arquivo.
   AStringList.SaveToFile('output.txt');

   //Retorna o conteúdo da saída padrão em uma String
   Button2.Caption:=AStringList.Text;

   // Agora que o arquivo foi salvo nós podemos liberar a
   // TStringList e o TProcess.
   AStringList.Free;
   AProcess.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  cmd: TProcess;
begin
  try
      cmd:= TProcess.Create(Self);
      cmd.CommandLine := 'firefox';
      cmd.Execute;
   finally
      cmd.Free;
   end;
end;

end.

//FONTE:
//https://wiki.freepascal.org/Executing_External_Programs/pt



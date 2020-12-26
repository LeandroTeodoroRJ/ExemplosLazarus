unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Printers,
  ExtCtrls;
  //Adicionar Printers ao uses

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
const
  LEFTMARGIN = 100;
  HEADLINE = 'I Printed My Very First Text On ';
var
  YPos, LineHeight, VerticalMargin: Integer;
  SuccessString: String;
begin
  with Printer do
  try
    BeginDoc;
    Canvas.Font.Name := 'Courier New';
    Canvas.Font.Size := 10;
    Canvas.Font.Color := clBlack;
    LineHeight := Round(1.2 * Abs(Canvas.TextHeight('I')));
    VerticalMargin := 4 * LineHeight;
    // There we go
    YPos := VerticalMargin;
    SuccessString := HEADLINE + DateTimeToStr(Now);
    Canvas.TextOut(LEFTMARGIN, YPos, SuccessString);
  finally
    EndDoc;
  end;

end;


procedure TForm1.Button4Click(Sender: TObject);
begin
  //Select Printer
  Printer.SetPrinter(ListBox1.GetSelectedText);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  //Select Paper Size
  Printer.PaperSize.PaperName:=ListBox2.GetSelectedText;
  {
  DoGetDefaultPaperName() - the method should return the default paper size name of the currently selected printer.
  DoGetPaperName - the method should return the currently selected paper size name of the currently selected printer.
  DoSetPaperName - the method should set the paper size by its name for the selected printer.
  }
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Enumerating Available Printers
  ListBox1.Items.AddStrings(Printer.Printers);

  // calling SupportedPapers forcing validation of the paper size
  ListBox2.Items.AddStrings(Printer.PaperSize.SupportedPapers);
end;

end.


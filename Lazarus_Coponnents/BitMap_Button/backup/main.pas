unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  bitbotao: string;
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if (bitbotao = 'Button_ON.bmp') then
  begin
       BitBtn1.Glyph.LoadFromFile('Button_OFF.bmp');
       bitbotao := 'Button_OFF.bmp';
  end
  else
  begin
       BitBtn1.Glyph.LoadFromFile('Button_ON.bmp');
       bitbotao := 'Button_ON.bmp';
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bitbotao := 'Button_ON.bmp';
  BitBtn1.Glyph.LoadFromFile('Button_ON.bmp');
end;

end.


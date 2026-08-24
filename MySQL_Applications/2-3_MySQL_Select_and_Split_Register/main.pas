unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCustomQuery1: TButton;
    btSelectRegister: TButton;
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    edDescription: TEdit;
    edValue: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ZConnection: TZConnection;
    ZQuery: TZQuery;
    procedure btnCustomQuery1Click(Sender: TObject);
    procedure btSelectRegisterClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCustomQuery1Click(Sender: TObject);
begin
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('SELECT * FROM SENSORS');
  ZQuery.Open;
end;

procedure TForm1.btSelectRegisterClick(Sender: TObject);
begin
  if (ZQuery.Locate('DESCRIPTION', 'INTERNAL_PRESSURE', []) = True) then
  begin
       edDescription.Text := ZQuery.FieldByName('DESCRIPTION').AsString;
       edValue.Text := ZQuery.FieldByName('VALUE').AsString;
  end
  else
  begin
       ShowMessage('Register not found');
  end;
end;

end.


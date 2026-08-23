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
    btnInsert: TButton;
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection: TZConnection;
    ZQuery: TZQuery;
    procedure btnCustomQuery1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
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
  ZQuery.SQL.Add('SELECT * FROM SENSORS_RAM');
  ZQuery.Open;
end;

procedure TForm1.btnInsertClick(Sender: TObject);
begin
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('INSERT INTO SENSORS_RAM VALUES(NULL, ''MOTOR_SPEED'', ''253'')');
  ZQuery.ExecSQL();

  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('INSERT INTO SENSORS_RAM VALUES(NULL, ''INTERNAL_PRESSURE'', ''157.8'')');
  ZQuery.ExecSQL();

  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('INSERT INTO SENSORS_RAM VALUES(NULL, ''KEY_START'', ''1'')');
  ZQuery.ExecSQL();
end;

end.


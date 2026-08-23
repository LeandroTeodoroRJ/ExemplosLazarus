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
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection: TZConnection;
    ZQuery: TZQuery;
    procedure btnCustomQuery1Click(Sender: TObject);
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
  ZQuery.SQL.Add('SELECT * FROM SENSORS WHERE DESCRIPTION = :desc');
  ZQuery.ParamByName('desc').AsString:='MOTOR_SPEED';
  ZQuery.Open;
end;

end.


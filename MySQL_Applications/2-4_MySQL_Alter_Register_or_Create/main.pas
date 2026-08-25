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
var
  desc: string;
  value: string;
begin
  desc:= edDescription.Text;
  value:= edValue.Text;
  if (ZQuery.Locate('DESCRIPTION', desc, []) = True) then
  begin
       ZQuery.SQL.Clear;
       ZQuery.SQL.Add('UPDATE SENSORS SET VALUE = :p_value WHERE DESCRIPTION = :p_desc');
       ZQuery.ParamByName('p_value').AsString:= value;
       ZQuery.ParamByName('p_desc').AsString:= desc;
       ZQuery.ExecSQL();

       //Refresh
       ZQuery.SQL.Clear;
       ZQuery.SQL.Add('SELECT * FROM SENSORS');
       ZQuery.Open;

  end
  else
  begin
      ZQuery.SQL.Clear;
      ZQuery.SQL.Add('INSERT INTO SENSORS VALUES (NULL, :p_desc, :p_value)');
      ZQuery.ParamByName('p_value').AsString:= value;
      ZQuery.ParamByName('p_desc').AsString:= desc;
      ZQuery.ExecSQL();

      //Refresh
      ZQuery.SQL.Clear;
      ZQuery.SQL.Add('SELECT * FROM SENSORS');
      ZQuery.Open;
  end;
end;

end.


unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids,
  ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection: TZConnection;
    ZQuery: TZQuery;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.


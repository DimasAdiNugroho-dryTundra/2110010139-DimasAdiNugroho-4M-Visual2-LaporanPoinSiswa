unit Connection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  ZAbstractConnection, ZConnection;

type
  TformConnection = class(TForm)
    Zconn: TZConnection;
    grbUserLogin: TGroupBox;
    dsUserLogin: TDataSource;
    zqUserLogin: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConnection: TformConnection;

implementation

{$R *.dfm}

end.

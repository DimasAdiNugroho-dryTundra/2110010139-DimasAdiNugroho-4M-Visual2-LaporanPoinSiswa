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
    grbAdmin: TGroupBox;
    grbUserAdmin: TGroupBox;
    dsUserAdmin: TDataSource;
    zqUserAdmin: TZQuery;
    grbKelasAdmin: TGroupBox;
    dsKelasAdmin: TDataSource;
    zqKelasAdmin: TZQuery;
    grbPoinAdmin: TGroupBox;
    zqPoinAdmin: TZQuery;
    dsPoinAdmin: TDataSource;
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

unit Report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls;

type
  TformReport = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    frxDsUserAdmin: TfrxDBDataset;
    frxRptUserAdmin: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formReport: TformReport;

implementation

uses
  Connection;

{$R *.dfm}

end.

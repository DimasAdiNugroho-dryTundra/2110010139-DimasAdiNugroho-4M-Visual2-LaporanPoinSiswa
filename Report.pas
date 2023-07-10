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
    frxRptDataDiriSiswa: TfrxReport;
    frxDsDataDiriSiswa: TfrxDBDataset;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    frxDsKelas: TfrxDBDataset;
    frxRptKelas: TfrxReport;
    GroupBox5: TGroupBox;
    frxDsPoin: TfrxDBDataset;
    frxRptPoin: TfrxReport;
    GroupBox6: TGroupBox;
    frxDsHubungan: TfrxDBDataset;
    frxRptHubungan: TfrxReport;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    frxDsOrangTua: TfrxDBDataset;
    frxDsWaliKelas: TfrxDBDataset;
    frxDsSiswa: TfrxDBDataset;
    frxRptSiswa: TfrxReport;
    frxRptWaliKelas: TfrxReport;
    frxRptOrangTua: TfrxReport;
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

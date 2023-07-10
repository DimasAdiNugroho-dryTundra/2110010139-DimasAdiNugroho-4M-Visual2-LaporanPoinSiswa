unit Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TformSiswa = class(TForm)
    dgSiswa: TDBGrid;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtIDUser: TEdit;
    txtNIS: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    txtNISN: TEdit;
    txtNama: TEdit;
    txtNIK: TEdit;
    txtTmpLahir: TEdit;
    dtpTglLahir: TDateTimePicker;
    cmbJK: TComboBox;
    txtTktKelas: TEdit;
    txtJurusan: TEdit;
    txtWakel: TEdit;
    mmAlamat: TMemo;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    txtTelp: TEdit;
    txtHP: TEdit;
    txtStatus: TEdit;
    buttonLaporan: TButton;
    procedure dgSiswaCellClick(Column: TColumn);
    procedure buttonEditClick(Sender: TObject);
    procedure buttonTambahClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure buttonLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSiswa: TformSiswa;
  id : String;

implementation

uses
  Connection, DB, Report;

{$R *.dfm}

procedure TformSiswa.dgSiswaCellClick(Column: TColumn);
begin
id := formConnection.zqSiswa.Fields[0].AsString;

txtIDUser.Text := formConnection.zqSiswa.Fields[1].AsString;
txtNIS.Text := formConnection.zqSiswa.Fields[2].AsString;
txtNISN.Text := formConnection.zqSiswa.Fields[3].AsString;
txtNama.Text := formConnection.zqSiswa.Fields[4].AsString;
txtNIK.Text := formConnection.zqSiswa.Fields[5].AsString;
txtTmpLahir.Text := formConnection.zqSiswa.Fields[6].AsString;
dtpTglLahir.Date := formConnection.zqSiswa.Fields[7].AsDateTime;
cmbJK.Text := formConnection.zqSiswa.Fields[8].AsString;
txtTktKelas.Text := formConnection.zqSiswa.Fields[9].AsString;
txtJurusan.Text := formConnection.zqSiswa.Fields[10].AsString;
txtWakel.Text := formConnection.zqSiswa.Fields[11].AsString;
mmAlamat.Text := formConnection.zqSiswa.Fields[12].AsString;
txtTelp.Text := formConnection.zqSiswa.Fields[13].AsString;
txtHP.Text := formConnection.zqSiswa.Fields[14].AsString;
txtStatus.Text := formConnection.zqSiswa.Fields[15].AsString;
end;

procedure TformSiswa.buttonEditClick(Sender: TObject);
begin
//edit
end;

procedure TformSiswa.buttonTambahClick(Sender: TObject);
begin
//tambah
end;

procedure TformSiswa.buttonHapusClick(Sender: TObject);
begin
formConnection.zqSiswa.SQL.Clear;
formConnection.zqSiswa.SQL.Add('DELETE FROM siswa WHERE id="'+id+'"');
formConnection.zqSiswa.ExecSQL;

formConnection.zqSiswa.SQL.Clear;
formConnection.zqSiswa.SQL.Add('SELECT * FROM siswa');
formConnection.zqSiswa.Active;
formConnection.zqSiswa.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformSiswa.buttonLaporanClick(Sender: TObject);
begin
formReport.frxRptSiswa.ShowReport();
end;

end.

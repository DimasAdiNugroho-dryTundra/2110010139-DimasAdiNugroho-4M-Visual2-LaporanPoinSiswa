unit Guru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TformGuru = class(TForm)
    GroupBox1: TGroupBox;
    txtIDPoin: TEdit;
    txtIDWakel: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    dgSiswa: TDBGrid;
    GroupBox3: TGroupBox;
    dgOrtu: TDBGrid;
    GroupBox4: TGroupBox;
    dgWakel: TDBGrid;
    GroupBox5: TGroupBox;
    dgPoin: TDBGrid;
    txtIDSiswa: TEdit;
    dgRiwayatPoin: TDBGrid;
    Label1: TLabel;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    txtIDOrtu: TEdit;
    Label6: TLabel;
    txtIDKelas: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    dtpRiwayatPoin: TDateTimePicker;
    Label9: TLabel;
    cmbStatus: TComboBox;
    cmbSemester: TComboBox;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dgSiswaCellClick(Column: TColumn);
    procedure dgPoinCellClick(Column: TColumn);
    procedure dgWakelCellClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure dgOrtuCellClick(Column: TColumn);
    procedure buttonEditClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure dgRiwayatPoinCellClick(Column: TColumn);
    procedure buttonTambahClick(Sender: TObject);
    procedure buttonLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formGuru: TformGuru;
  userid, id : String;


implementation

uses
  Connection, userLogin, Report, DB;

{$R *.dfm}

procedure TformGuru.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter;
end;

procedure TformGuru.FormActivate(Sender: TObject);
begin
  userid := formUserLogin.lblGetID.Caption;
  txtIDWakel.Text := userid;
end;

procedure TformGuru.dgSiswaCellClick(Column: TColumn);
begin
txtIDSiswa.Text := formConnection.zqSiswa.Fields[0].AsString;
end;

procedure TformGuru.dgPoinCellClick(Column: TColumn);
begin
txtIDPoin.Text := formConnection.zqPoinAdmin.Fields[0].AsString;
end;

procedure TformGuru.dgWakelCellClick(Column: TColumn);
begin
txtIDWakel.Text := formConnection.zqWaliKelas.Fields[0].AsString;
end;

procedure TformGuru.DBGrid1CellClick(Column: TColumn);
begin
txtIDKelas.Text := formConnection.zqKelasAdmin.Fields[0].AsString;
end;

procedure TformGuru.dgOrtuCellClick(Column: TColumn);
begin
txtIDOrtu.Text := formConnection.zqOrangTua.Fields[0].AsString;
end;

procedure TformGuru.buttonEditClick(Sender: TObject);
var
  statusSelect : string;
  indexStatus : Integer;
begin
statusSelect := cmbStatus.Text;
if (statusSelect = '1') then
  indexStatus := 1
else if (statusSelect = '0') then
  indexStatus := 0
else
  ShowMessage('error');
formConnection.zqRiwayatPoin.SQL.Clear;
formConnection.zqRiwayatPoin.SQL.Add('UPDATE riwayat_poin SET siswa_id="'+txtIDSiswa.Text+'", poin_id="'+txtIDPoin.Text+'", wali_id="'+txtIDWakel.Text+'", ortu_id="'+txtIDOrtu.Text+'", kelas_id="'+txtIDKelas.Text+'", tanggal="null", semester="'+cmbSemester.Text+'", status="'+IntToStr(indexStatus)+'" WHERE id="'+id+'"');
formConnection.zqRiwayatPoin.ExecSQL;

formConnection.zqRiwayatPoin.SQL.Clear;
formConnection.zqRiwayatPoin.SQL.Add('SELECT * FROM hubungan');
formConnection.zqRiwayatPoin.Active;
formConnection.zqRiwayatPoin.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformGuru.buttonHapusClick(Sender: TObject);
begin
formConnection.zqRiwayatPoin.SQL.Clear;
formConnection.zqRiwayatPoin.SQL.Add('DELETE FROM riwayat_poin WHERE id="'+id+'")');
formConnection.zqRiwayatPoin.ExecSQL;

formConnection.zqRiwayatPoin.SQL.Clear;
formConnection.zqRiwayatPoin.SQL.Add('SELECT * FROM riwayat_poin');
formConnection.zqRiwayatPoin.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformGuru.dgRiwayatPoinCellClick(Column: TColumn);
var
  status : String;
  index : Integer;
begin
id := formConnection.zqRiwayatPoin.Fields[0].AsString;

txtIDSiswa.Text := formConnection.zqRiwayatPoin.Fields[1].AsString;
txtIDPoin.Text := formConnection.zqRiwayatPoin.Fields[2].AsString;
txtIDWakel.Text := formConnection.zqRiwayatPoin.Fields[3].AsString;
txtIDOrtu.Text := formConnection.zqRiwayatPoin.Fields[4].AsString;
txtIDKelas.Text := formConnection.zqRiwayatPoin.Fields[5].AsString;
dtpRiwayatPoin.Date := formConnection.zqRiwayatPoin.Fields[6].AsDateTime;
cmbSemester.Text := formConnection.zqRiwayatPoin.Fields[7].AsString;

status:= formConnection.zqRiwayatPoin.Fields[8].AsString;
if (status = '1') then
  index := 1
else if (status = '0') then
  index := 0
else
  index := -1;
cmbStatus.ItemIndex := index;
end;

procedure TformGuru.buttonTambahClick(Sender: TObject);
var
  statusSelect : string;
  statusIndex : Integer;
begin
statusSelect := cmbStatus.Text;
if (statusSelect = '1') then
  statusIndex := 1
else if (statusSelect = '0') then
  statusIndex := 0
else
  ShowMessage('error');
formConnection.zqRiwayatPoin.SQL.Clear;
formConnection.zqRiwayatPoin.SQL.Add('INSERT INTO riwayat_poin VALUES(null, "'+txtIDSiswa.Text+'", "'+txtIDPoin.Text+'", "'+txtIDWakel.Text+'", "'+txtIDOrtu.Text+'", "'+txtIDKelas.Text+'", "null", "'+cmbSemester.Text+'", "'+IntToStr(statusIndex)+'")');
formConnection.zqRiwayatPoin.ExecSQL;

formConnection.zqRiwayatPoin.SQL.Clear;
formConnection.zqRiwayatPoin.SQL.Add('SELECT * FROM riwayat_poin');
formConnection.zqRiwayatPoin.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformGuru.buttonLaporanClick(Sender: TObject);
begin
formReport.frxRptRiwayatPoin.ShowReport();
end;

end.

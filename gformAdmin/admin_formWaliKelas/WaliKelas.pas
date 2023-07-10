unit WaliKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TformWaliKelas = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    dgWaliKelas: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtNIKNIP: TEdit;
    txtNama: TEdit;
    cmbJK: TComboBox;
    txtTelp: TEdit;
    txtMatPel: TEdit;
    txtPendidikan: TEdit;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    txtStatus: TEdit;
    mmAlamat: TMemo;
    Label9: TLabel;
    txtIDUser: TEdit;
    procedure dgWaliKelasCellClick(Column: TColumn);
    procedure buttonEditClick(Sender: TObject);
    procedure buttonTambahClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formWaliKelas: TformWaliKelas;
  id : String;

implementation

uses
  Connection;

{$R *.dfm}

procedure TformWaliKelas.dgWaliKelasCellClick(Column: TColumn);
var
jk : String;
indexJK : Integer;
begin
id := formConnection.zqWaliKelas.Fields[0].AsString;

txtIDUser.Text := formConnection.zqWaliKelas.Fields[1].AsString;
txtNIKNIP.Text := formConnection.zqWaliKelas.Fields[2].AsString;
txtNama.Text := formConnection.zqWaliKelas.Fields[3].AsString;
mmAlamat.Text := formConnection.zqWaliKelas.Fields[5].AsString;
txtTelp.Text := formConnection.zqWaliKelas.Fields[6].AsString;
txtMatPel.Text := formConnection.zqWaliKelas.Fields[7].AsString;
txtPendidikan.Text := formConnection.zqWaliKelas.Fields[8].AsString;
txtStatus.Text := formConnection.zqWaliKelas.Fields[9].AsString;

jk := formConnection.zqWaliKelas.Fields[4].AsString;
if (jk = '1') then
  indexJK := 0
else if (jk = '0') then
  indexJK := 1
else
  indexJK := -1;
cmbJK.ItemIndex := indexJK;
end;

procedure TformWaliKelas.buttonEditClick(Sender: TObject);
var
  jkSelect : string;
  jkQ : Integer;
begin
jkSelect := cmbJK.Text;
if (jkSelect = '1') then
  jkQ := 1
else if (jkSelect = '0') then
  jkQ := 0
else
  ShowMessage('error');

formConnection.zqWaliKelas.SQL.Clear;
formConnection.zqWaliKelas.SQL.Add('UPDATE wali_kelas SET user_id="'+txtIDUser.Text+'", nik/nip="'+txtNIKNIP.Text+'", nama="'+txtNama.Text+'", jk="'+IntToStr(jkQ)+'", alamat="'+mmAlamat.Text+'", telp="'+txtTelp.Text+'", matpel="'+txtMatPel.Text+'", pendidikan="'+txtPendidikan.Text+'", status="'+txtStatus.Text+'" WHERE id="'+id+'"');
formConnection.zqWaliKelas.ExecSQL;

formConnection.zqWaliKelas.SQL.Clear;
formConnection.zqWaliKelas.SQL.Add('SELECT * FROM wali_kelas');
formConnection.zqWaliKelas.Active;
formConnection.zqWaliKelas.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');

end;

procedure TformWaliKelas.buttonTambahClick(Sender: TObject);
var
  jkSelect : string;
  jkQ : Integer;
begin
jkSelect := cmbJK.Text;
if (jkSelect = '1') then
  jkQ := 1
else if (jkSelect = '0') then
  jkQ := 0
else
  ShowMessage('error');

formConnection.zqWaliKelas.SQL.Clear;
formConnection.zqWaliKelas.SQL.Add('INSERT INTO wali_kelas VALUES(null, "'+txtIDUser.Text+'", "'+txtNIKNIP.Text+'", "'+txtNama.Text+'", "'+IntToStr(jkQ)+'", "'+mmAlamat.Text+'", "'+txtTelp.Text+'", "'+txtPendidikan.Text+'", "'+txtMatPel.Text+'", "'+txtStatus.Text+'")');
formConnection.zqWaliKelas.ExecSQL;

formConnection.zqWaliKelas.SQL.Clear;
formConnection.zqWaliKelas.SQL.Add('SELECT * FROM wali_kelas');
formConnection.zqWaliKelas.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformWaliKelas.buttonHapusClick(Sender: TObject);
begin
formConnection.zqWaliKelas.SQL.Clear;
formConnection.zqWaliKelas.SQL.Add('DELETE FROM wali_kelas WHERE id="'+id+'")');
formConnection.zqWaliKelas.ExecSQL;

formConnection.zqWaliKelas.SQL.Clear;
formConnection.zqWaliKelas.SQL.Add('SELECT * FROM wali_kelas');
formConnection.zqWaliKelas.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformWaliKelas.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.

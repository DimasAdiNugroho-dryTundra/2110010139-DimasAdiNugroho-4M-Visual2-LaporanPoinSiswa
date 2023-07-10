unit OrangTua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TformOrangTua = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txtNIK: TEdit;
    txtNama: TEdit;
    txtPendidikan: TEdit;
    txtPekerjaan: TEdit;
    txtTelp: TEdit;
    txtAlamat: TMemo;
    cmbJK: TComboBox;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    txtAgama: TEdit;
    Label8: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure buttonEditClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure buttonTambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formOrangTua: TformOrangTua;
  id : String;

implementation

uses
  Connection, DB;

{$R *.dfm}

procedure TformOrangTua.DBGrid1CellClick(Column: TColumn);
var
jk : String;
indexJK : Integer;
begin
id := formConnection.zqOrangTua.Fields[0].AsString;

txtNIK.Text := formConnection.zqOrangTua.Fields[1].AsString;
txtNama.Text := formConnection.zqOrangTua.Fields[2].AsString;
txtPendidikan.Text := formConnection.zqOrangTua.Fields[3].AsString;
txtPekerjaan.Text := formConnection.zqOrangTua.Fields[4].AsString;
txtTelp.Text := formConnection.zqOrangTua.Fields[5].AsString;
txtAlamat.Text := formConnection.zqOrangTua.Fields[6].AsString;
txtAgama.Text := formConnection.zqOrangTua.Fields[7].AsString;

jk := formConnection.zqOrangTua.Fields[8].AsString;
if (jk = '1') then
  indexJK := 0
else if (jk = '0') then
  indexJK := 1
else
  indexJK := -1;
cmbJK.ItemIndex := indexJK;
end;

procedure TformOrangTua.buttonEditClick(Sender: TObject);
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

formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('UPDATE ortu SET nik="'+txtNIK.Text+'", nama="'+txtNama.Text+'", pendidikan="'+txtPendidikan.Text+'", pekerjaan="'+txtPekerjaan.Text+'", telp="'+txtTelp.Text+'", alamat="'+txtAlamat.Text+'", agama="'+txtAgama.Text+'", jk="'+IntToStr(jkQ)+'" WHERE id="'+id+'"');
formConnection.zqOrangTua.ExecSQL;

formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('SELECT * FROM ortu');
formConnection.zqOrangTua.Active;
formConnection.zqOrangTua.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformOrangTua.buttonHapusClick(Sender: TObject);
begin
formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('DELETE FROM ortu WHERE id="'+id+'")');
formConnection.zqOrangTua.ExecSQL;

formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('SELECT * FROM ortu');
formConnection.zqOrangTua.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformOrangTua.buttonTambahClick(Sender: TObject);
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

formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('INSERT INTO ortu VALUES(null, "'+txtNIK.Text+'", "'+txtNama.Text+'", "'+txtPendidikan.Text+'", "'+txtPekerjaan.Text+'", "'+txtTelp.Text+'", "'+txtAlamat.Text+'", "'+txtAgama.Text+'", "'+IntToStr(jkQ)+'")');
formConnection.zqOrangTua.ExecSQL;

formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('SELECT * FROM ortu');
formConnection.zqOrangTua.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

end.

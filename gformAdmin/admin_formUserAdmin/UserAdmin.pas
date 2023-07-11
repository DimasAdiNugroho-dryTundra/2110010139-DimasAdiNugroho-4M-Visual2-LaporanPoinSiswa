unit UserAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TformUserAdmin = class(TForm)
    dgUser: TDBGrid;
    GroupBox1: TGroupBox;
    txtNama: TEdit;
    txtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbLevel: TComboBox;
    cmbStatus: TComboBox;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    procedure dgUserCellClick(Column: TColumn);
    procedure buttonEditClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure buttonTambahClick(Sender: TObject);
    procedure buttonLaporanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formUserAdmin: TformUserAdmin;
  id : String;

implementation

uses
  Connection,
  Report, DB;

{$R *.dfm}

procedure TformUserAdmin.buttonEditClick(Sender: TObject);
var
  stsSelect, lvlSelect, lvlQ: string;
  stsQ: integer;
begin
lvlSelect := cmbLevel.Text;
if (lvlSelect = 'admin') then 
  lvlQ := 'admin'
else if (lvlSelect = 'guru') then
  lvlQ := 'guru'
else if (lvlSelect = 'siswa') then
  lvlQ := 'siswa'
else
  ShowMessage('error');

stsSelect := cmbLevel.Text;
if (stsSelect = '1') then
  stsQ := 1
else if (stsSelect = '0') then
  stsQ := 0
else
  ShowMessage('error');

formConnection.zqUserAdmin.SQL.Clear;
formConnection.zqUserAdmin.SQL.Add('UPDATE user SET nama="'+txtNama.Text+'", password="'+txtPassword.Text+'", level="'+lvlQ+'", status="'+IntToStr(stsQ)+'" WHERE id="'+id+'")');
formConnection.zqUserAdmin.ExecSQL;

formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('SELECT * FROM user');
formConnection.zqKelasAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformUserAdmin.dgUserCellClick(Column: TColumn);
var
  status, levelName: String;
  index1, index2: Integer;
begin
id := formConnection.zqUserAdmin.Fields[0].AsString;
txtNama.Text := formConnection.zqUserAdmin.Fields[1].AsString;
txtPassword.Text := formConnection.zqUserAdmin.Fields[2].AsString;

levelName := formConnection.zqUserAdmin.Fields[3].AsString;
if (levelName = 'admin') then
  index1 := 0
else if (levelName = 'guru') then
  index1 := 1
else if (levelName = 'siswa') then
  index1 := 2
else
  index1 := -1;
cmbLevel.ItemIndex := index1;


status := formConnection.zqUserAdmin.Fields[4].AsString;
if (status = '1') then
  index2 := 0
else if (status = '0') then
  index2 := 1
else
  index2 := -1;
cmbStatus.ItemIndex := index2;
end;

procedure TformUserAdmin.buttonHapusClick(Sender: TObject);
begin
formConnection.zqUserAdmin.SQL.Clear;
formConnection.zqUserAdmin.SQL.Add('DELETE FROM user WHERE id="'+id+'")');
formConnection.zqUserAdmin.ExecSQL;

formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('SELECT * FROM user');
formConnection.zqKelasAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformUserAdmin.buttonTambahClick(Sender: TObject);
var
  stsSelect, lvlSelect, lvlQ: string;
  stsQ: integer;
begin
lvlSelect := cmbLevel.Text;
if (lvlSelect = 'admin') then
  lvlQ := 'admin'
else if (lvlSelect = 'guru') then
  lvlQ := 'guru'
else if (lvlSelect = 'siswa') then
  lvlQ := 'siswa'
else
  ShowMessage('error');

stsSelect := cmbStatus.Text;
if (stsSelect = '1') then
  stsQ := 1
else if (stsSelect = '0') then
  stsQ := 0
else
  ShowMessage('error');

formConnection.zqUserAdmin.SQL.Clear;
formConnection.zqUserAdmin.SQL.Add('INSERT INTO user VALUES(null, "'+txtNama.Text+'", "'+txtPassword.Text+'", "'+lvlQ+'", "'+IntToStr(stsQ)+'")');
formConnection.zqUserAdmin.ExecSQL;

formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('SELECT * FROM user');
formConnection.zqKelasAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformUserAdmin.buttonLaporanClick(Sender: TObject);
begin
formReport.frxRptUserAdmin.ShowReport();
end;

procedure TformUserAdmin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.

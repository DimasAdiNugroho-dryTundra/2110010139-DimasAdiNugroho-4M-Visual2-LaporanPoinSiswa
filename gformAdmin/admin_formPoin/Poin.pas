unit Poin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformPoin = class(TForm)
    mmNamaPoin: TMemo;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    txtBobotPoin: TEdit;
    cmbStatusPoin: TComboBox;
    cmbJenisPoin: TComboBox;
    buttonEdit: TButton;
    buttonTambah: TButton;
    buttonHapus: TButton;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    buttonLaporan: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure buttonEditClick(Sender: TObject);
    procedure buttonTambahClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure buttonLaporanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPoin: TformPoin;
  id : string;

implementation

uses
  Connection,
  Report;

{$R *.dfm}

procedure TformPoin.DBGrid1CellClick(Column: TColumn);
var
poin : String;
index : Integer;
begin
id := formConnection.zqPoinAdmin.Fields[0].AsString;

mmNamaPoin.Text := formConnection.zqPoinAdmin.Fields[1].AsString;
txtBobotPoin.Text := formConnection.zqPoinAdmin.Fields[2].AsString;
cmbJenisPoin.Text := formConnection.zqPoinAdmin.Fields[3].AsString;

poin := formConnection.zqWaliKelas.Fields[4].AsString;
if (poin = '1') then
  index := 1
else if (poin = '0') then
  index := 0
else
  index := -1;
cmbStatusPoin.ItemIndex := index;
end;

procedure TformPoin.buttonEditClick(Sender: TObject);
var
  poinSelect : string;
  indexPoin : Integer;
begin
poinSelect := cmbStatusPoin.Text;
if (poinSelect = '1') then
  indexPoin := 1
else if (poinSelect = '0') then
  indexPoin := 0
else
  ShowMessage('error');

formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('UPDATE poin SET nama="'+mmNamaPoin.Text+'", bobot="'+txtBobotPoin.Text+'", jenis="'+cmbJenisPoin.Text+'", status="'+IntToStr(indexPoin)+'" WHERE id="'+id+'"');
formConnection.zqPoinAdmin.ExecSQL;

formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('SELECT * FROM poin');
formConnection.zqPoinAdmin.Active;
formConnection.zqPoinAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformPoin.buttonTambahClick(Sender: TObject);
var
  poinSelect : string;
  indexPoin : Integer;
begin
poinSelect := cmbStatusPoin.Text;
if (poinSelect = '1') then
  indexPoin := 1
else if (poinSelect = '0') then
  indexPoin := 0
else
  ShowMessage('error');
formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('INSERT INTO poin VALUES(null, "'+mmNamaPoin.Text+'", "'+txtBobotPoin.Text+'", "'+cmbJenisPoin.Text+'", "'+IntToStr(indexPoin)+'")');
formConnection.zqPoinAdmin.ExecSQL;

formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('SELECT * FROM poin');
formConnection.zqPoinAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformPoin.buttonHapusClick(Sender: TObject);
begin
formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('DELETE FROM poin WHERE id="'+id+'")');
formConnection.zqPoinAdmin.ExecSQL;

formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('SELECT * FROM poin');
formConnection.zqPoinAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformPoin.buttonLaporanClick(Sender: TObject);
begin
formReport.frxRptPoin.ShowReport();
end;

procedure TformPoin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.

unit Hubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TformHubungan = class(TForm)
    DBGrid1: TDBGrid;
    GrupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtIDSiswa: TEdit;
    txtIDOrtu: TEdit;
    Label4: TLabel;
    txtKeterangan: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dgDataSiswa: TDBGrid;
    dgDataOrtu: TDBGrid;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    txtStatus: TEdit;
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
  formHubungan: TformHubungan;
  id : String;

implementation

uses
  Connection,
  Report;

{$R *.dfm}

procedure TformHubungan.DBGrid1CellClick(Column: TColumn);

begin
id := formConnection.zqHubungan.Fields[0].AsString;

txtIDSiswa.Text := formConnection.zqHubungan.Fields[1].AsString;
txtIDOrtu.Text := formConnection.zqHubungan.Fields[2].AsString;
txtStatus.Text := formConnection.zqHubungan.Fields[3].AsString;
txtKeterangan.Text := formConnection.zqHubungan.Fields[4].AsString;

formConnection.zqSiswa.SQL.Clear;
formConnection.zqSiswa.SQL.Add('SELECT * FROM siswa WHERE id = "'+id+'"');
formConnection.zqSiswa.Open;

formConnection.zqOrangTua.SQL.Clear;
formConnection.zqOrangTua.SQL.Add('SELECT * FROM ortu WHERE id = "'+id+'"');
formConnection.zqOrangTua.Open;

end;

procedure TformHubungan.buttonEditClick(Sender: TObject);
begin
formConnection.zqHubungan.SQL.Clear;
formConnection.zqHubungan.SQL.Add('UPDATE hubungan SET siswa_id="'+txtIDSiswa.Text+'", ortu_id="'+txtIDOrtu.Text+'", status="'+txtStatus.Text+'" WHERE id="'+id+'"');
formConnection.zqHubungan.ExecSQL;

formConnection.zqHubungan.SQL.Clear;
formConnection.zqHubungan.SQL.Add('SELECT * FROM hubungan');
formConnection.zqHubungan.Active;
formConnection.zqHubungan.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformHubungan.buttonTambahClick(Sender: TObject);
begin
formConnection.zqHubungan.SQL.Clear;
formConnection.zqHubungan.SQL.Add('INSERT INTO hubungan VALUES (NULL, "'+txtIDSiswa.Text+'", "'+txtIDOrtu.Text+'", "'+txtStatus.Text+'", "'+txtKeterangan.Text+'")');
formConnection.zqHubungan.ExecSQL;

formConnection.zqHubungan.SQL.Clear;
formConnection.zqHubungan.SQL.Add('SELECT * FROM hubungan');
formConnection.zqHubungan.Active;
formConnection.zqHubungan.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformHubungan.buttonHapusClick(Sender: TObject);
begin
formConnection.zqHubungan.SQL.Clear;
formConnection.zqHubungan.SQL.Add('DELETE FROM hubungan WHERE id="'+id+'"');
formConnection.zqHubungan.ExecSQL;

formConnection.zqHubungan.SQL.Clear;
formConnection.zqHubungan.SQL.Add('SELECT * FROM hubungan');
formConnection.zqHubungan.Active;
formConnection.zqHubungan.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformHubungan.buttonLaporanClick(Sender: TObject);
begin
formReport.frxRptHubungan.ShowReport();
end;

procedure TformHubungan.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.

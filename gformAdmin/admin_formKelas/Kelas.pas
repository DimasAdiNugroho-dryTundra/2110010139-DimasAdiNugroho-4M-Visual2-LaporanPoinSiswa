unit Kelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformKelas = class(TForm)
    dbgrdKelas: TDBGrid;
    GrupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtNamaKelas: TEdit;
    txtJenis: TEdit;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    txtJurusan: TEdit;
    buttonLaporan: TButton;
    procedure buttonEditClick(Sender: TObject);
    procedure buttonTambahClick(Sender: TObject);
    procedure buttonHapusClick(Sender: TObject);
    procedure dbgrdKelasCellClick(Column: TColumn);
    procedure buttonLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formKelas: TformKelas;
  id : String;


implementation

uses
  Connection,
  Report;

{$R *.dfm}

procedure TformKelas.buttonEditClick(Sender: TObject);
begin
formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('UPDATE kelas SET nama="'+txtNamaKelas.Text+'", jenis="'+txtJenis.Text+'", jurusan="'+txtJurusan.Text+'" WHERE id="'+id+'"');
formConnection.zqKelasAdmin.ExecSQL;

formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('SELECT * FROM kelas');
formConnection.zqKelasAdmin.Active;
formConnection.zqKelasAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformKelas.buttonTambahClick(Sender: TObject);
begin
formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('INSERT INTO kelas VALUES(null, "'+txtNamaKelas.Text+'", "'+txtJenis.Text+'", "'+txtJurusan.Text+'")');
formConnection.zqKelasAdmin.ExecSQL;

formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('SELECT * FROM kelas');
formConnection.zqKelasAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformKelas.buttonHapusClick(Sender: TObject);
begin
formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('DELETE FROM kelas WHERE id="'+id+'"');
formConnection.zqKelasAdmin.ExecSQL;

formConnection.zqKelasAdmin.SQL.Clear;
formConnection.zqKelasAdmin.SQL.Add('SELECT * FROM kelas');
formConnection.zqKelasAdmin.Active;
formConnection.zqKelasAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformKelas.dbgrdKelasCellClick(Column: TColumn);
begin
id := formConnection.zqKelasAdmin.Fields[0].AsString;

txtNamaKelas.Text := formConnection.zqKelasAdmin.Fields[1].AsString;
txtJenis.Text := formConnection.zqKelasAdmin.Fields[2].AsString;
txtJurusan.Text := formConnection.zqKelasAdmin.Fields[3].AsString;
end;

procedure TformKelas.buttonLaporanClick(Sender: TObject);
begin
formReport.frxRptKelas.ShowReport();
end;

end.

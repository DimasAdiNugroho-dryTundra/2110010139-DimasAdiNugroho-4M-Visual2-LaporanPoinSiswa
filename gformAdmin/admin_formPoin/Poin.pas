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
begin
id := formConnection.zqPoinAdmin.Fields[0].AsString;

mmNamaPoin.Text := formConnection.zqPoinAdmin.Fields[1].AsString;
txtBobotPoin.Text := formConnection.zqPoinAdmin.Fields[2].AsString;
cmbJenisPoin.Text := formConnection.zqPoinAdmin.Fields[3].AsString;
cmbStatusPoin.Text := formConnection.zqPoinAdmin.Fields[4].AsString;
end;

procedure TformPoin.buttonEditClick(Sender: TObject);
begin
formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('UPDATE poin SET nama="'+mmNamaPoin.Text+'", bobot="'+txtBobotPoin.Text+'", jenis="'+cmbJenisPoin.Text+'", status="'+cmbStatusPoin.Text+'" WHERE id="'+id+'"');
formConnection.zqPoinAdmin.ExecSQL;

formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('SELECT * FROM poin');
formConnection.zqPoinAdmin.Active;
formConnection.zqPoinAdmin.ExecSQL;

ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformPoin.buttonTambahClick(Sender: TObject);
begin
formConnection.zqPoinAdmin.SQL.Clear;
formConnection.zqPoinAdmin.SQL.Add('INSERT INTO poin VALUES(null, "'+mmNamaPoin.Text+'", "'+txtBobotPoin.Text+'", "'+cmbJenisPoin.Text+'", "'+cmbStatusPoin.Text+'")');
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

end.

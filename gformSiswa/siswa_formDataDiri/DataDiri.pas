unit DataDiri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformDataDiri = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtNama: TEdit;
    txtNIS: TEdit;
    txtTktKelas: TEdit;
    txtJurusan: TEdit;
    txtWakel: TEdit;
    btnCetakLaporan: TButton;
    txtGetID: TEdit;
    procedure btnCetakLaporanClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDataDiri: TformDataDiri;

implementation

uses
  Connection,
  Report,
  userLogin;

{$R *.dfm}

procedure TformDataDiri.btnCetakLaporanClick(Sender: TObject);
begin
formReport.frxRptDataDiriSiswa.ShowReport();
end;

procedure TformDataDiri.FormActivate(Sender: TObject);
 var
 query, userid : string;
begin
  userid := formUserLogin.lblGetID.Caption;
  txtGetID.Text := userid;

  query := 'SELECT * FROM siswa WHERE user_id = :userid';
  formConnection.zqSiswa.SQL.Clear;
  formConnection.ZqSiswa.SQL.Add(query);
  formConnection.ZqSiswa.ParamByName('userid').AsString := userid;
  formConnection.ZqSiswa.Open;

  txtNama.Text := formConnection.ZqSiswa.FieldByName('nama_siswa').AsString;
  txtNIS.Text := formConnection.ZqSiswa.FieldByName('nis').AsString;
  txtTktKelas.Text := formConnection.ZqSiswa.FieldByName('tingkat_kelas').AsString;
  txtJurusan.Text := formConnection.ZqSiswa.FieldByName('jurusan').AsString;
  txtWakel.Text := formConnection.ZqSiswa.FieldByName('wali_kelas').AsString;

end;

procedure TformDataDiri.FormCreate(Sender: TObject);
var userid : string;
begin
  userid := formUserLogin.lblGetID.Caption;
  txtGetID.Text := userid;
end;

end.

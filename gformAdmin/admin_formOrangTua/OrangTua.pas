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

end.

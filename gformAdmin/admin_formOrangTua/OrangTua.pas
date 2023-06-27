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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formOrangTua: TformOrangTua;

implementation

uses
  Connection;

{$R *.dfm}

end.

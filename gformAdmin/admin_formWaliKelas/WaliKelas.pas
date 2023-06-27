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
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtNIKNIP: TEdit;
    txtNama: TEdit;
    cmbJK: TComboBox;
    txtAlamat: TMemo;
    txtTelp: TEdit;
    txtMatPel: TEdit;
    txtPendidikan: TEdit;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    txtStatus: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formWaliKelas: TformWaliKelas;

implementation

uses
  Connection;

{$R *.dfm}

end.

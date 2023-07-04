unit Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TformSiswa = class(TForm)
    DBGrid1: TDBGrid;
    buttonEdit: TButton;
    buttonHapus: TButton;
    buttonTambah: TButton;
    buttonLaporan: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtNIKNIP: TEdit;
    txtNama: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSiswa: TformSiswa;

implementation

uses
  Connection;

{$R *.dfm}

end.

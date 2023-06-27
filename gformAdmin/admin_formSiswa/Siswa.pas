unit Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TformSiswa = class(TForm)
    DBGrid1: TDBGrid;
    GrupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtIDSiswa: TEdit;
    txtIDOrtu: TEdit;
    txtStatus: TEdit;
    txtKeterangan: TEdit;
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
  formSiswa: TformSiswa;

implementation

uses
  Connection;

{$R *.dfm}

end.

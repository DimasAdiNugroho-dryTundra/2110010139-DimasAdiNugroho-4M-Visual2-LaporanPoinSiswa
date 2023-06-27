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
    txtStatus: TEdit;
    Label4: TLabel;
    txtKeterangan: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
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
  formHubungan: TformHubungan;

implementation

uses
  Connection;

{$R *.dfm}

end.

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPoin: TformPoin;

implementation

uses
  Connection;

{$R *.dfm}

end.

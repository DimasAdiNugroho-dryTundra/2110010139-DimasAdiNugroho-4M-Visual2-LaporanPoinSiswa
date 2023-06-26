unit Admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformAdmin = class(TForm)
    GrupBox1: TGroupBox;
    GrupBox2: TGroupBox;
    GrupBox3: TGroupBox;
    buttonAdminToUser: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    buttonAdminToWaliKelas: TButton;
    buttonAdminToKelas: TButton;
    buttonAdminToPoin: TButton;
    Label1: TLabel;
    procedure buttonAdminToUserClick(Sender: TObject);
    procedure buttonAdminToKelasClick(Sender: TObject);
    procedure buttonAdminToPoinClick(Sender: TObject);
    procedure buttonAdminToWaliKelasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAdmin: TformAdmin;

implementation

uses
  UserAdmin,
  WaliKelas,
  Kelas,
  Poin;


{$R *.dfm}

procedure TformAdmin.buttonAdminToUserClick(Sender: TObject);
begin
  formUserAdmin.ShowModal;
end;

procedure TformAdmin.buttonAdminToKelasClick(Sender: TObject);
begin
  formKelas.ShowModal;
end;

procedure TformAdmin.buttonAdminToPoinClick(Sender: TObject);
begin
  formPoin.ShowModal;
end;

procedure TformAdmin.buttonAdminToWaliKelasClick(Sender: TObject);
begin
  formWaliKelas.ShowModal;
end;

end.

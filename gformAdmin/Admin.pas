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
    buttonAdminToSiswa: TButton;
    buttonAdminToOrangTua: TButton;
    buttonAdminToHubungan: TButton;
    buttonAdminToWaliKelas: TButton;
    buttonAdminToKelas: TButton;
    buttonAdminToPoin: TButton;
    Label1: TLabel;
    procedure buttonAdminToUserClick(Sender: TObject);
    procedure buttonAdminToKelasClick(Sender: TObject);
    procedure buttonAdminToPoinClick(Sender: TObject);
    procedure buttonAdminToWaliKelasClick(Sender: TObject);
    procedure buttonAdminToSiswaClick(Sender: TObject);
    procedure buttonAdminToOrangTuaClick(Sender: TObject);
    procedure buttonAdminToHubunganClick(Sender: TObject);
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
  Poin,
  Siswa,
  OrangTua,
  Hubungan;


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

procedure TformAdmin.buttonAdminToSiswaClick(Sender: TObject);
begin
   formSiswa.ShowModal;
end;

procedure TformAdmin.buttonAdminToOrangTuaClick(Sender: TObject);
begin
  formOrangTua.ShowModal;
end;

procedure TformAdmin.buttonAdminToHubunganClick(Sender: TObject);
begin
 formHubungan.ShowModal;
end;

end.

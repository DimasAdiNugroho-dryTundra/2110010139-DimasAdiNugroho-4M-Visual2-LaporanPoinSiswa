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
    Button5: TButton;
    buttonAdminToKelas: TButton;
    Button7: TButton;
    Label1: TLabel;
    procedure buttonAdminToUserClick(Sender: TObject);
    procedure buttonAdminToKelasClick(Sender: TObject);
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
  Kelas;

{$R *.dfm}

procedure TformAdmin.buttonAdminToUserClick(Sender: TObject);
begin
  formUserAdmin.ShowModal;
end;

procedure TformAdmin.buttonAdminToKelasClick(Sender: TObject);
begin
  formKelas.ShowModal;
end;

end.

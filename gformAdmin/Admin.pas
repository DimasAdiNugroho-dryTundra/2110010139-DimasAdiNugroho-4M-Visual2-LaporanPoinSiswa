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
    ButtonAdminToUser: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label1: TLabel;
    procedure ButtonAdminToUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAdmin: TformAdmin;

implementation

uses
  UserAdmin;

{$R *.dfm}

procedure TformAdmin.ButtonAdminToUserClick(Sender: TObject);
begin
  formUserAdmin.ShowModal;
end;

end.

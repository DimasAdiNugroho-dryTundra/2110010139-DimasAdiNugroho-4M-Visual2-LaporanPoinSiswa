unit Guru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformGuru = class(TForm)
    txtGetID: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formGuru: TformGuru;

implementation

uses
  Connection, userLogin;

{$R *.dfm}

procedure TformGuru.FormCreate(Sender: TObject);
var userid : string;
begin
  Position := poScreenCenter;
  userid := formUserLogin.lblGetID.Caption;
  txtGetID.Text := userid;
end;

end.

unit formUserLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TuserLogin = class(TForm)
    EditUsername: TEdit;
    EditPassword: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    ButtonLogin: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  userLogin: TuserLogin;

implementation

{$R *.dfm}

end.

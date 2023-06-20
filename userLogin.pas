unit userLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformUserLogin = class(TForm)
    editUsername: TEdit;
    editPassword: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    buttonLogin: TButton;
    DBGrid1: TDBGrid;
    procedure buttonLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formUserLogin: TformUserLogin;

implementation

uses
  Connection, DB, Admin;

{$R *.dfm}

procedure TformUserLogin.buttonLoginClick(Sender: TObject);
var
  nama, password, level, loginLevel, querylogin: string;
  sts: integer;
begin
  nama := editUsername.Text;
  password := editPassword.Text;

  querylogin := 'SELECT * FROM user WHERE nama = :nama AND `password` = :password';

  formConnection.zqUserLogin.SQL.Clear;
  formConnection.zqUserLogin.SQL.Add(querylogin);

  formConnection.zqUserLogin.ParamByName('nama').AsString := nama;
  formConnection.zqUserLogin.ParamByName('password').AsString := password;
  formConnection.zqUserLogin.Open;

  if (formConnection.zqUserLogin.RecordCount > 0) then
    begin
      sts := formConnection.zqUserLogin.FieldValues['status'];
      if (sts = 1) then
        begin
          loginLevel := formConnection.zqUserLogin.FieldValues['level'];
          if (loginLevel = 'admin') then
            begin
              ShowMessage('Anda Login Sebagai Admin');
              formAdmin.ShowModal;
            end
          else if (loginLevel = 'guru') then
            begin
              ShowMessage('Anda Login Sebagai Guru');
            end
          else
            begin
              ShowMessage('Anda Login Sebagai Siswa');
            end;
        end
      else
        begin
          ShowMessage('Login Gagal');
        end;
    end;
end;

end.

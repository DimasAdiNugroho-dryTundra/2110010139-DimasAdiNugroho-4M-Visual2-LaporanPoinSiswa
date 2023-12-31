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
    lblGetID: TLabel;
    Label3: TLabel;
    procedure buttonLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formUserLogin: TformUserLogin;

implementation

uses
  Connection,
  DB,
  Admin,
  DataDiri,
  Guru;

{$R *.dfm}

procedure TformUserLogin.buttonLoginClick(Sender: TObject);
var
  nama, password, level, loginLevel, querylogin, userid: string;
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
              userid := formConnection.zqUserLogin.FieldValues['id'];
              lblGetID.Caption := userid;
              ShowMessage('Anda Login Sebagai Admin');
              formAdmin.ShowModal;
            end
          else if (loginLevel = 'guru') then
            begin
              userid := formConnection.zqUserLogin.FieldValues['id'];
              lblGetID.Caption := userid;
              ShowMessage('Anda Login Sebagai Guru');
              formGuru.ShowModal;
            end
          else
            begin
              userid := formConnection.zqUserLogin.FieldValues['id'];
              lblGetID.Caption := userid;
              ShowMessage('Anda Login Sebagai Siswa');
              formDataDiri.ShowModal;
            end;
        end
      else
        begin
          ShowMessage('Login Gagal');
        end;
    end;
end;

procedure TformUserLogin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.

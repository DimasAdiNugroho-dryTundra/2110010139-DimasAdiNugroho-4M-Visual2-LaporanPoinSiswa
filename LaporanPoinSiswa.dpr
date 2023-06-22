program LaporanPoinSiswa;

uses
  Forms,
  userLogin in 'userLogin.pas' {formUserLogin},
  Connection in 'Connection.pas' {formConnection},
  Admin in 'gformAdmin\Admin.pas' {formAdmin},
  UserAdmin in 'gformAdmin\admin_formUserAdmin\UserAdmin.pas' {formUserAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformUserLogin, formUserLogin);
  Application.CreateForm(TformConnection, formConnection);
  Application.CreateForm(TformAdmin, formAdmin);
  Application.CreateForm(TformUserAdmin, formUserAdmin);
  Application.Run;
end.

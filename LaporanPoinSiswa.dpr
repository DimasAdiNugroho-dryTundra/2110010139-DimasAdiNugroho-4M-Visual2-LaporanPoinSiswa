program LaporanPoinSiswa;

uses
  Forms,
  userLogin in 'userLogin.pas' {formUserLogin},
  Connection in 'Connection.pas' {formConnection},
  Admin in 'gformAdmin\Admin.pas' {formAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformUserLogin, formUserLogin);
  Application.CreateForm(TformConnection, formConnection);
  Application.CreateForm(TformAdmin, formAdmin);
  Application.Run;
end.

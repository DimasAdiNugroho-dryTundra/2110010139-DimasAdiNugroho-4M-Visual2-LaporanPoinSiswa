program LaporanPoinSiswa;

uses
  Forms,
  formUserLogin in 'formUserLogin.pas' {userLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TuserLogin, userLogin);
  Application.Run;
end.

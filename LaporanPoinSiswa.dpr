program LaporanPoinSiswa;

uses
  Forms,
  Unit_user in 'Unit_user.pas' {User};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TUser, User);
  Application.Run;
end.

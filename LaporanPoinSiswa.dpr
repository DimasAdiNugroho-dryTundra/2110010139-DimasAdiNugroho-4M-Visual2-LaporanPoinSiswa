program LaporanPoinSiswa;

uses
  Forms,
  userLogin in 'userLogin.pas' {formUserLogin},
  Connection in 'Connection.pas' {formConnection},
  Admin in 'gformAdmin\Admin.pas' {formAdmin},
  UserAdmin in 'gformAdmin\admin_formUserAdmin\UserAdmin.pas' {formUserAdmin},
  Kelas in 'gformAdmin\admin_formKelas\Kelas.pas' {formKelas},
  Poin in 'gformAdmin\admin_formPoin\Poin.pas' {formPoin},
  WaliKelas in 'gformAdmin\admin_formWaliKelas\WaliKelas.pas' {formWaliKelas},
  Report in 'Report.pas' {formReport},
  Siswa in 'gformAdmin\admin_formSiswa\Siswa.pas' {formSiswa},
  OrangTua in 'gformAdmin\admin_formOrangTua\OrangTua.pas' {formOrangTua},
  Hubungan in 'gformAdmin\admin_formHubungan\Hubungan.pas' {formHubungan},
  DataDiri in 'gformSiswa\siswa_formDataDiri\DataDiri.pas' {formDataDiri},
  Guru in 'gformGuru\guru_formGuru\Guru.pas' {formGuru};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformUserLogin, formUserLogin);
  Application.CreateForm(TformOrangTua, formOrangTua);
  Application.CreateForm(TformHubungan, formHubungan);
  Application.CreateForm(TformConnection, formConnection);
  Application.CreateForm(TformAdmin, formAdmin);
  Application.CreateForm(TformUserAdmin, formUserAdmin);
  Application.CreateForm(TformKelas, formKelas);
  Application.CreateForm(TformPoin, formPoin);
  Application.CreateForm(TformWaliKelas, formWaliKelas);
  Application.CreateForm(TformReport, formReport);
  Application.CreateForm(TformSiswa, formSiswa);
  Application.CreateForm(TformDataDiri, formDataDiri);
  Application.CreateForm(TformGuru, formGuru);
  Application.Run;
end.

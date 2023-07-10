object formAdmin: TformAdmin
  Left = 277
  Top = 170
  Width = 909
  Height = 540
  Caption = 'Admin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 352
    Top = 80
    Width = 165
    Height = 23
    Caption = 'ADMIN SEKOLAH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GrupBox1: TGroupBox
    Left = 56
    Top = 184
    Width = 233
    Height = 265
    Caption = 'Administrasi User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object buttonAdminToUser: TButton
      Left = 56
      Top = 128
      Width = 113
      Height = 33
      Caption = 'User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = buttonAdminToUserClick
    end
  end
  object GrupBox2: TGroupBox
    Left = 328
    Top = 184
    Width = 233
    Height = 265
    Caption = 'Administrasi Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object buttonAdminToSiswa: TButton
      Left = 56
      Top = 64
      Width = 113
      Height = 33
      Caption = 'Siswa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = buttonAdminToSiswaClick
    end
    object buttonAdminToOrangTua: TButton
      Left = 56
      Top = 128
      Width = 113
      Height = 33
      Caption = 'Orang Tua'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = buttonAdminToOrangTuaClick
    end
    object buttonAdminToHubungan: TButton
      Left = 56
      Top = 192
      Width = 113
      Height = 33
      Caption = 'Hubungan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = buttonAdminToHubunganClick
    end
  end
  object GrupBox3: TGroupBox
    Left = 600
    Top = 184
    Width = 233
    Height = 265
    Caption = 'Administrasi Sekolah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object buttonAdminToWaliKelas: TButton
      Left = 56
      Top = 64
      Width = 113
      Height = 33
      Caption = 'Wali Kelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = buttonAdminToWaliKelasClick
    end
    object buttonAdminToKelas: TButton
      Left = 56
      Top = 128
      Width = 113
      Height = 33
      Caption = 'Kelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = buttonAdminToKelasClick
    end
    object buttonAdminToPoin: TButton
      Left = 56
      Top = 192
      Width = 113
      Height = 33
      Caption = 'Poin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = buttonAdminToPoinClick
    end
  end
end

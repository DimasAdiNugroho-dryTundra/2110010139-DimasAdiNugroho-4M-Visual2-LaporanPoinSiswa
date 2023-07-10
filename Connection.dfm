object formConnection: TformConnection
  Left = 192
  Top = 125
  Width = 1016
  Height = 585
  Caption = 'Connection'
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
  object grbUserLogin: TGroupBox
    Left = 16
    Top = 72
    Width = 161
    Height = 105
    Caption = 'userLogin'
    TabOrder = 0
  end
  object grbAdmin: TGroupBox
    Left = 208
    Top = 72
    Width = 729
    Height = 409
    Caption = 'Admin'
    TabOrder = 1
    object grbUserAdmin: TGroupBox
      Left = 32
      Top = 32
      Width = 185
      Height = 105
      Caption = 'userAdmin'
      TabOrder = 0
    end
    object grbKelasAdmin: TGroupBox
      Left = 32
      Top = 160
      Width = 185
      Height = 105
      Caption = 'Kelas'
      TabOrder = 1
    end
    object grbPoinAdmin: TGroupBox
      Left = 32
      Top = 288
      Width = 185
      Height = 105
      Caption = 'Poin'
      TabOrder = 2
    end
    object grbWaliKelas: TGroupBox
      Left = 240
      Top = 32
      Width = 185
      Height = 105
      Caption = 'WaliKelas'
      TabOrder = 3
    end
    object grbSiswa: TGroupBox
      Left = 240
      Top = 160
      Width = 185
      Height = 105
      Caption = 'Siswa'
      TabOrder = 4
    end
    object grbOrangTua: TGroupBox
      Left = 240
      Top = 288
      Width = 185
      Height = 105
      Caption = 'Orang Tua'
      TabOrder = 5
    end
    object grbHubungan: TGroupBox
      Left = 448
      Top = 32
      Width = 185
      Height = 105
      Caption = 'Hubungan'
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 192
    Width = 161
    Height = 105
    Caption = 'Siswa'
    TabOrder = 2
  end
  object Zconn: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'mysql'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'data_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Laporan Poin Sis' +
      'wa\libmysql.dll'
    Left = 72
    Top = 16
  end
  object dsUserLogin: TDataSource
    DataSet = zqUserLogin
    Left = 40
    Top = 104
  end
  object zqUserLogin: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 120
    Top = 104
  end
  object dsUserAdmin: TDataSource
    DataSet = zqUserAdmin
    Left = 272
    Top = 144
  end
  object zqUserAdmin: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 360
    Top = 144
  end
  object dsKelasAdmin: TDataSource
    DataSet = zqKelasAdmin
    Left = 272
    Top = 272
  end
  object zqKelasAdmin: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM kelas')
    Params = <>
    Left = 360
    Top = 272
  end
  object zqPoinAdmin: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM poin')
    Params = <>
    Left = 360
    Top = 400
  end
  object dsPoinAdmin: TDataSource
    DataSet = zqPoinAdmin
    Left = 272
    Top = 400
  end
  object dsWaliKelas: TDataSource
    DataSet = zqWaliKelas
    Left = 480
    Top = 144
  end
  object zqWaliKelas: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM wali_kelas')
    Params = <>
    Left = 568
    Top = 144
  end
  object dsSiswa: TDataSource
    DataSet = zqSiswa
    Left = 480
    Top = 272
  end
  object zqSiswa: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM siswa')
    Params = <>
    Left = 568
    Top = 272
  end
  object zqOrangTua: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM ortu')
    Params = <>
    Left = 568
    Top = 400
  end
  object zqHubungan: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM hubungan')
    Params = <>
    Left = 784
    Top = 144
  end
  object dsOrangTua: TDataSource
    DataSet = zqOrangTua
    Left = 480
    Top = 400
  end
  object dsHubungan: TDataSource
    DataSet = zqHubungan
    Left = 688
    Top = 144
  end
  object dsDataDiriSiswa: TDataSource
    DataSet = zqDataDiriSiswa
    Left = 48
    Top = 232
  end
  object zqDataDiriSiswa: TZQuery
    Connection = Zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM siswa')
    Params = <>
    Left = 120
    Top = 208
  end
end

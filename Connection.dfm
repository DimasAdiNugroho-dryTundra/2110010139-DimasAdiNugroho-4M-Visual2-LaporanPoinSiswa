object formConnection: TformConnection
  Left = 192
  Top = 125
  Width = 226
  Height = 540
  Caption = 'Connection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
end

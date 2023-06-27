object formReport: TformReport
  Left = 336
  Top = 178
  Width = 1044
  Height = 540
  Caption = 'Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 56
    Top = 48
    Width = 377
    Height = 233
    Caption = 'Admin'
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 24
      Top = 32
      Width = 185
      Height = 105
      Caption = 'userAdmin'
      TabOrder = 0
    end
  end
  object frxDsUserAdmin: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = formConnection.dsUserAdmin
    BCDToCurrency = False
    Left = 200
    Top = 112
  end
  object frxRptUserAdmin: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45104.469597824070000000
    ReportOptions.LastChange = 45104.469597824070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 112
    Datasets = <
      item
        DataSet = frxDsUserAdmin
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
      end
    end
  end
end

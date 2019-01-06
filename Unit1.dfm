object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 331
  ClientWidth = 604
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 604
    Height = 298
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 33
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 2
      Width = 75
      Height = 25
      Caption = #36861#21152
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=m0jpw10p;Persist Security Info=True;' +
      'User ID=yuhi;Data Source=mysql53'
    Provider = 'MSDASQL.1'
    Left = 296
    Top = 168
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM yuhi.addr;')
    Left = 392
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 480
    Top = 168
  end
end

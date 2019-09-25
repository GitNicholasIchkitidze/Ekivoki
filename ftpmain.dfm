object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 438
  ClientWidth = 1060
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
    Left = 152
    Top = 384
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 152
    Top = 412
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 224
    Top = 144
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Button2: TButton
    Left = 16
    Top = 24
    Width = 75
    Height = 25
    Caption = 'TChilkatFtp2'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 0
    Width = 75
    Height = 25
    Caption = 'TChilkatFtp2'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 346
    Top = 26
    Width = 706
    Height = 345
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 55
    Width = 324
    Height = 25
    Caption = #4306#4304#4312#4306#4308' '#4307#4326#4308#4309#4304#4316#4308#4314#4312' '#4311#4304#4320#4312#4326#4312' Time Server - '#4308#4305#4312#4307#4304#4316
    TabOrder = 3
    OnClick = Button1Click
  end
  object Calendar1: TCalendar
    Left = 152
    Top = 225
    Width = 161
    Height = 88
    StartOfWeek = 0
    TabOrder = 4
  end
  object SpinButton1: TSpinButton
    Left = 319
    Top = 225
    Width = 20
    Height = 88
    DownGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    TabOrder = 5
    UpGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000080
      8000008080000080800000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000000000000000000000000000080
      8000008080000080800000808000008080000080800000808000000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    OnDownClick = SpinButton1DownClick
    OnUpClick = SpinButton1UpClick
  end
  object Edit1: TEdit
    Left = 16
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '02.02.2014'
  end
  object Button4: TButton
    Left = 16
    Top = 94
    Width = 324
    Height = 25
    Caption = #4306#4304#4312#4306#4308' '#4311#4304#4320#4312#4311#4312' '#4329#4308#4315#4312' FTP - '#4307#4304#4316
    TabOrder = 7
    OnClick = Button4Click
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 16
    Top = 144
  end
  object IdDayTime1: TIdDayTime
    Left = 16
    Top = 376
  end
end

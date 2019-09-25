object SplashFrm: TSplashFrm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'SplashFrm'
  ClientHeight = 316
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 256
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 24
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 353
    Height = 185
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 297
    Width = 369
    Height = 19
    Panels = <
      item
        Width = 200
      end>
  end
  object Timer1: TTimer
    Left = 272
    Top = 88
  end
end

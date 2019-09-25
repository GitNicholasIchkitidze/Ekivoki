object Player2frm: TPlayer2frm
  Left = 0
  Top = 0
  Hint = #4308#4313#4312#4309#4317#4313#4312' '#4318#4314#4308#4312#4308#4320#4312' 2'
  Caption = #4308#4313#4312#4309#4317#4313#4312' '#4318#4314#4308#4312#4308#4320#4312' 2'
  ClientHeight = 134
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object MediaPlayer1: TMediaPlayer
    Left = 0
    Top = 0
    Width = 298
    Height = 30
    Align = alTop
    FileName = 'C:\Users\MyNika\Desktop\SPORTI MONITOR.avi'
    Visible = False
    TabOrder = 0
    OnNotify = MediaPlayer1Notify
  end
end

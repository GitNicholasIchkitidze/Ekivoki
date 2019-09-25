object MainFrm: TMainFrm
  Left = 686
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #4308#4313#4312#4309#4317#4313#4312' '#4320#4323#4321#4311#4304#4309#4312'2'
  ClientHeight = 648
  ClientWidth = 517
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 86
    Top = 584
    Width = 169
    Height = 56
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 0
    Text = '00'
    OnClick = Edit1Click
    OnKeyPress = Edit1KeyPress
  end
  object Button4: TButton
    Left = 5
    Top = 584
    Width = 75
    Height = 56
    Caption = 'GO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 1
    OnClick = Button4Click
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 5
    Width = 250
    Height = 308
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object Label7: TLabel
      Left = 137
      Top = 58
      Width = 28
      Height = 13
      Caption = 'Prefix'
      Visible = False
    end
    object Cbox_Tablo1_Show_Captons_and_Border: TCheckBox
      Left = 10
      Top = 12
      Width = 137
      Height = 17
      Caption = #4306#4304#4315#4317#4304#4329#4312#4316#4308' '#4321#4304#4311#4304#4323#4320#4312
      TabOrder = 0
      OnClick = Cbox_Tablo1_Show_Captons_and_BorderClick
    end
    object Cbox_Tablo1_FullScreen: TCheckBox
      Left = 10
      Top = 35
      Width = 137
      Height = 17
      Caption = #4315#4311#4308#4314' '#4308#4313#4320#4304#4316#4310#4308
      TabOrder = 1
      OnClick = Cbox_Tablo1_FullScreenClick
    end
    object Cbox_Tablo1_Transpanency: TCheckBox
      Left = 137
      Top = 35
      Width = 137
      Height = 17
      Caption = #4306#4304#4315#4333#4309#4312#4320#4309#4304#4314#4308
      TabOrder = 2
      OnClick = Cbox_Tablo1_TranspanencyClick
    end
    object Btn_Tablo1_Show_or_Hide: TButton
      Left = 2
      Top = 81
      Width = 245
      Height = 33
      Caption = '[ 1 TABLO ] SHOW'
      TabOrder = 3
      OnClick = Btn_Tablo1_Show_or_HideClick
    end
    object Btn_Tablo1_BringToFront: TButton
      Left = 2
      Top = 280
      Width = 245
      Height = 25
      Caption = 'Bring to Front'
      TabOrder = 4
      OnClick = Btn_Tablo1_BringToFrontClick
    end
    object Cbox_Tablo1_UsePNG: TCheckBox
      Left = 10
      Top = 58
      Width = 113
      Height = 17
      Caption = 'use PNG Sequence'
      TabOrder = 5
      OnClick = Cbox_Tablo1_UsePNGClick
    end
    object Btn_Tablo1_Font1: TButton
      Left = 2
      Top = 120
      Width = 245
      Height = 33
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Font'
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
      OnClick = Btn_Tablo1_Font1Click
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 156
      Width = 245
      Height = 118
      Caption = 'Text Position'
      TabOrder = 7
      object Label4: TLabel
        Left = 137
        Top = 17
        Width = 42
        Height = 13
        Caption = 'Top Pos:'
        Enabled = False
      end
      object Label3: TLabel
        Left = 137
        Top = 42
        Width = 43
        Height = 13
        Caption = 'Left Pos:'
        Enabled = False
      end
      object SpEdit_Tablo1_Text_LeftPos: TSpinEdit
        Left = 181
        Top = 39
        Width = 61
        Height = 22
        Enabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 50
      end
      object SpEdit_Tablo1_Text_TopPos: TSpinEdit
        Left = 181
        Top = 13
        Width = 61
        Height = 22
        Enabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 50
      end
      object CheckBox1: TCheckBox
        Left = 10
        Top = 29
        Width = 88
        Height = 17
        Caption = 'Scr. Center'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object Btn_Preset1_1: TBitBtn
        Left = 5
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Set Preset 1'
        TabOrder = 3
        OnClick = Btn_Preset1_1Click
      end
      object Btn_Preset1_2: TBitBtn
        Left = 84
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Set Preset 2'
        TabOrder = 4
        OnClick = Btn_Preset1_2Click
      end
      object Btn_Preset1_3: TBitBtn
        Left = 164
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Set Preset 3'
        TabOrder = 5
        OnClick = Btn_Preset1_3Click
      end
    end
    object EdPrefix1: TEdit
      Left = 179
      Top = 54
      Width = 68
      Height = 21
      TabOrder = 8
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 318
    Width = 250
    Height = 203
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    object GroupBox_player1: TGroupBox
      Left = 2
      Top = 26
      Width = 245
      Height = 143
      Enabled = False
      TabOrder = 0
      object Button2: TButton
        Left = 3
        Top = 3
        Width = 239
        Height = 25
        Caption = 'Video'
        TabOrder = 0
        OnClick = Button2Click
      end
      object CheckBox2: TCheckBox
        Left = 162
        Top = 34
        Width = 45
        Height = 17
        Caption = 'loop'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox4: TCheckBox
        Left = 10
        Top = 34
        Width = 137
        Height = 17
        Caption = #4306#4304#4315#4317#4304#4329#4312#4316#4308' '#4321#4304#4311#4304#4323#4320#4312
        TabOrder = 2
        OnClick = CheckBox4Click
      end
      object CheckBox5: TCheckBox
        Left = 10
        Top = 57
        Width = 137
        Height = 17
        Caption = #4315#4311#4308#4314' '#4308#4313#4320#4304#4316#4310#4308
        TabOrder = 3
        OnClick = CheckBox5Click
      end
      object btOpen: TButton
        Left = 2
        Top = 111
        Width = 75
        Height = 25
        Caption = 'Play'
        Enabled = False
        TabOrder = 4
        OnClick = btOpenClick
      end
      object btStop: TButton
        Left = 83
        Top = 111
        Width = 75
        Height = 25
        Caption = 'stop'
        Enabled = False
        TabOrder = 5
        OnClick = btStopClick
      end
      object Button5: TButton
        Left = 2
        Top = 80
        Width = 156
        Height = 25
        Caption = '[ 1 PLAYER ] SHOW'
        TabOrder = 6
        OnClick = Button5Click
      end
      object Button3: TButton
        Left = 162
        Top = 80
        Width = 80
        Height = 56
        Caption = 'Fit Player'
        TabOrder = 7
        OnClick = Button3Click
      end
    end
    object CheckBox3: TCheckBox
      Left = 10
      Top = 3
      Width = 113
      Height = 17
      Caption = 'Use Built In Player'
      TabOrder = 1
      OnClick = CheckBox3Click
    end
    object Button10: TButton
      Left = 2
      Top = 175
      Width = 245
      Height = 25
      Caption = 'Send to Back'
      TabOrder = 2
      OnClick = Button10Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 260
    Top = 5
    Width = 250
    Height = 307
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    object Label8: TLabel
      Left = 137
      Top = 58
      Width = 28
      Height = 13
      Caption = 'Prefix'
      Visible = False
    end
    object Cbox_Tablo2_Show_Captons_and_Border: TCheckBox
      Left = 10
      Top = 12
      Width = 137
      Height = 17
      Caption = #4306#4304#4315#4317#4304#4329#4312#4316#4308' '#4321#4304#4311#4304#4323#4320#4312
      TabOrder = 0
      OnClick = Cbox_Tablo2_Show_Captons_and_BorderClick
    end
    object Cbox_Tablo2_FullScreen: TCheckBox
      Left = 10
      Top = 35
      Width = 137
      Height = 17
      Caption = #4315#4311#4308#4314' '#4308#4313#4320#4304#4316#4310#4308
      TabOrder = 1
      OnClick = Cbox_Tablo2_FullScreenClick
    end
    object Cbox_Tablo2_Transpanency: TCheckBox
      Left = 137
      Top = 35
      Width = 101
      Height = 17
      Caption = #4306#4304#4315#4333#4309#4312#4320#4309#4304#4314#4308
      TabOrder = 2
      OnClick = Cbox_Tablo2_TranspanencyClick
    end
    object Btn_Tablo2_Show_or_Hide: TButton
      Left = 2
      Top = 81
      Width = 245
      Height = 33
      Caption = '[ 2 TABLO ] SHOW'
      TabOrder = 3
      OnClick = Btn_Tablo2_Show_or_HideClick
    end
    object Btn_Tablo2_BringToFront: TButton
      Left = 2
      Top = 279
      Width = 245
      Height = 25
      Caption = 'Bring to Front'
      TabOrder = 4
      OnClick = Btn_Tablo2_BringToFrontClick
    end
    object Btn_Tablo2_Font1: TButton
      Left = 2
      Top = 119
      Width = 245
      Height = 33
      Caption = 'Font'
      TabOrder = 5
      OnClick = Btn_Tablo2_Font1Click
    end
    object Cbox_Tablo2_UsePNG: TCheckBox
      Left = 10
      Top = 58
      Width = 113
      Height = 17
      Caption = 'use PNG Sequence'
      TabOrder = 6
      OnClick = Cbox_Tablo2_UsePNGClick
    end
    object GroupBox5: TGroupBox
      Left = 2
      Top = 156
      Width = 245
      Height = 117
      Caption = 'Text Position'
      TabOrder = 7
      object Label5: TLabel
        Left = 137
        Top = 17
        Width = 42
        Height = 13
        Caption = 'Top Pos:'
        Enabled = False
      end
      object Label6: TLabel
        Left = 137
        Top = 42
        Width = 43
        Height = 13
        Caption = 'Left Pos:'
        Enabled = False
      end
      object SpEdit_Tablo2_Text_LeftPos: TSpinEdit
        Left = 181
        Top = 39
        Width = 61
        Height = 22
        Enabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 50
      end
      object SpEdit_Tablo2_Text_TopPos: TSpinEdit
        Left = 181
        Top = 13
        Width = 61
        Height = 22
        Enabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 50
      end
      object CheckBox6: TCheckBox
        Left = 10
        Top = 29
        Width = 88
        Height = 17
        Caption = 'Scr. Center'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBox6Click
      end
      object Btn_Preset2_1: TBitBtn
        Left = 7
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Set Preset 1'
        TabOrder = 3
        OnClick = Btn_Preset2_1Click
      end
      object Btn_Preset2_2: TBitBtn
        Left = 86
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Set Preset 2'
        TabOrder = 4
        OnClick = Btn_Preset2_2Click
      end
      object Btn_Preset2_3: TBitBtn
        Left = 164
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Set Preset 3'
        TabOrder = 5
        OnClick = Btn_Preset2_3Click
      end
    end
    object EdPrefix2: TEdit
      Left = 179
      Top = 54
      Width = 68
      Height = 21
      TabOrder = 8
      Visible = False
    end
  end
  object gp: TGroupBox
    Left = 260
    Top = 318
    Width = 250
    Height = 203
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    object GroupBox_player2: TGroupBox
      Left = 3
      Top = 26
      Width = 245
      Height = 143
      Enabled = False
      TabOrder = 0
      object Button8: TButton
        Left = 2
        Top = 3
        Width = 239
        Height = 25
        Caption = 'Video'
        TabOrder = 0
        OnClick = Button8Click
      end
      object CheckBox9: TCheckBox
        Left = 153
        Top = 34
        Width = 45
        Height = 17
        Caption = 'loop'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBox9Click
      end
      object CheckBox10: TCheckBox
        Left = 10
        Top = 34
        Width = 137
        Height = 17
        Caption = #4306#4304#4315#4317#4304#4329#4312#4316#4308' '#4321#4304#4311#4304#4323#4320#4312
        TabOrder = 2
        OnClick = CheckBox10Click
      end
      object CheckBox11: TCheckBox
        Left = 10
        Top = 57
        Width = 137
        Height = 17
        Caption = #4315#4311#4308#4314' '#4308#4313#4320#4304#4316#4310#4308
        TabOrder = 3
        OnClick = CheckBox11Click
      end
      object btOpen2: TButton
        Left = 2
        Top = 111
        Width = 75
        Height = 25
        Caption = 'Play'
        Enabled = False
        TabOrder = 4
        OnClick = btOpen2Click
      end
      object btStop2: TButton
        Left = 83
        Top = 111
        Width = 75
        Height = 25
        Caption = 'stop'
        Enabled = False
        TabOrder = 5
        OnClick = btStop2Click
      end
      object Button11: TButton
        Left = 2
        Top = 80
        Width = 156
        Height = 25
        Caption = '[ 2 PLAYER ] SHOW'
        TabOrder = 6
        OnClick = Button11Click
      end
      object Button6: TButton
        Left = 162
        Top = 80
        Width = 80
        Height = 56
        Caption = 'Fit Player'
        TabOrder = 7
        OnClick = Button6Click
      end
    end
    object CheckBox12: TCheckBox
      Left = 10
      Top = 3
      Width = 113
      Height = 17
      Caption = 'Use Built In Player'
      TabOrder = 1
      OnClick = CheckBox12Click
    end
    object Button12: TButton
      Left = 2
      Top = 175
      Width = 245
      Height = 25
      Caption = 'Send to Back'
      TabOrder = 2
      OnClick = Button12Click
    end
  end
  object Button9: TButton
    Left = 436
    Top = 584
    Width = 75
    Height = 56
    Caption = 'GO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 6
    OnClick = Button9Click
  end
  object GroupBox6: TGroupBox
    Left = 5
    Top = 537
    Width = 250
    Height = 41
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 73
      Height = 13
      Caption = 'Send to Screen'
    end
    object ComboBox1: TComboBox
      Left = 106
      Top = 12
      Width = 139
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object GroupBox7: TGroupBox
    Left = 261
    Top = 537
    Width = 250
    Height = 41
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    object Label2: TLabel
      Left = 10
      Top = 16
      Width = 73
      Height = 13
      Caption = 'Send to Screen'
      Color = clWindow
      ParentColor = False
    end
    object ComboBox2: TComboBox
      Left = 109
      Top = 12
      Width = 137
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox2Change
    end
  end
  object Edit2: TEdit
    Left = 260
    Top = 584
    Width = 169
    Height = 56
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 9
    Text = '00'
    OnClick = Edit2Click
    OnKeyPress = Edit2KeyPress
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 488
  end
end

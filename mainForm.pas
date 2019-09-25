unit mainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.MPlayer, Vcl.Samples.Spin, Vcl.Buttons;

type
  TMainFrm = class(TForm)
    Edit1: TEdit;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Cbox_Tablo1_Show_Captons_and_Border: TCheckBox;
    Cbox_Tablo1_FullScreen: TCheckBox;
    Cbox_Tablo1_Transpanency: TCheckBox;
    Btn_Tablo1_Show_or_Hide: TButton;
    Btn_Tablo1_BringToFront: TButton;
    GroupBox2: TGroupBox;
    GroupBox_player1: TGroupBox;
    Button2: TButton;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    btOpen: TButton;
    btStop: TButton;
    Button5: TButton;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    Cbox_Tablo2_Show_Captons_and_Border: TCheckBox;
    Cbox_Tablo2_FullScreen: TCheckBox;
    Cbox_Tablo2_Transpanency: TCheckBox;
    Btn_Tablo2_Show_or_Hide: TButton;
    Btn_Tablo2_BringToFront: TButton;
    gp: TGroupBox;
    GroupBox_player2: TGroupBox;
    Button8: TButton;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    btOpen2: TButton;
    btStop2: TButton;
    Button11: TButton;
    CheckBox12: TCheckBox;
    Button9: TButton;
    Button10: TButton;
    Button12: TButton;
    Cbox_Tablo1_UsePNG: TCheckBox;
    Btn_Tablo1_Font1: TButton;
    FontDialog1: TFontDialog;
    Btn_Tablo2_Font1: TButton;
    Cbox_Tablo2_UsePNG: TCheckBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    SpEdit_Tablo1_Text_LeftPos: TSpinEdit;
    SpEdit_Tablo1_Text_TopPos: TSpinEdit;
    CheckBox1: TCheckBox;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    SpEdit_Tablo2_Text_LeftPos: TSpinEdit;
    SpEdit_Tablo2_Text_TopPos: TSpinEdit;
    CheckBox6: TCheckBox;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Label7: TLabel;
    EdPrefix1: TEdit;
    Label8: TLabel;
    EdPrefix2: TEdit;
    Button3: TButton;
    Button6: TButton;
    Btn_Preset1_1: TBitBtn;
    Btn_Preset1_2: TBitBtn;
    Btn_Preset1_3: TBitBtn;
    Btn_Preset2_1: TBitBtn;
    Btn_Preset2_2: TBitBtn;
    Btn_Preset2_3: TBitBtn;
    procedure Btn_Tablo1_BringToFrontClick(Sender: TObject);
    procedure Cbox_Tablo1_Show_Captons_and_BorderClick(Sender: TObject);
    procedure Cbox_Tablo1_FullScreenClick(Sender: TObject);
    procedure Btn_Tablo1_Show_or_HideClick(Sender: TObject);
    procedure Cbox_Tablo1_TranspanencyClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure btOpenClick(Sender: TObject);
    procedure btStopClick(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Cbox_Tablo2_Show_Captons_and_BorderClick(Sender: TObject);
    procedure Cbox_Tablo2_FullScreenClick(Sender: TObject);
    procedure Cbox_Tablo2_TranspanencyClick(Sender: TObject);
    procedure Btn_Tablo2_Show_or_HideClick(Sender: TObject);
    procedure Btn_Tablo2_BringToFrontClick(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure btOpen2Click(Sender: TObject);
    procedure btStop2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Cbox_Tablo1_UsePNGClick(Sender: TObject);
    procedure Btn_Tablo1_Font1Click(Sender: TObject);
    procedure Cbox_Tablo2_UsePNGClick(Sender: TObject);
    procedure Btn_Tablo2_Font1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Btn_Preset1_1Click(Sender: TObject);
    procedure Btn_Preset1_2Click(Sender: TObject);
    procedure Btn_Preset1_3Click(Sender: TObject);
    procedure Btn_Preset2_1Click(Sender: TObject);
    procedure Btn_Preset2_2Click(Sender: TObject);
    procedure Btn_Preset2_3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
  private
    { Private declarations }
//    FAlpha : TForm;
  public
    { Public declarations }
//   procedure MakeTransparent;
//  procedure UndoTransparency;
          procedure SetTransparent(Aform: TForm; AValue: Boolean);
          function CalculateTextTopPosition(i : integer; sText : string) : integer;
          function CalculateTextLeftPosition(i : integer; sText : string) : integer;
  end;
var
  MainFrm: TMainFrm;

  PrimaryScreenHeight, PrimaryScreenWidth,
  PrimaryScreenLeft, PrimaryScreenTop   : integer;

  Pos_1_TextWith_1_Digits_Top,
  Pos_1_TextWith_1_Digits_Left,
  Pos_1_TextWith_2_Digits_Top,
  Pos_1_TextWith_2_Digits_Left,
  Pos_1_TextWith_3_Digits_Top,
  Pos_1_TextWith_3_Digits_Left,


  Pos_2_TextWith_1_Digits_Top,
  Pos_2_TextWith_1_Digits_Left,
  Pos_2_TextWith_2_Digits_Top,
  Pos_2_TextWith_2_Digits_Left,
  Pos_2_TextWith_3_Digits_Top,
  Pos_2_TextWith_3_Digits_Left : integer;



implementation

{$R *.dfm}

uses Tablo1Form, player1form, Tablo2Form, player2form, testunit;

function TMainFrm.CalculateTextTopPosition(i : integer; sText : string) : integer;
var  iHeight,
     TopPos   : integer;
begin
       iHeight := Tablo1frm.Canvas.TextHeight(sText);
       Toppos := (Screen.Monitors[i].Height - iHeight) div 2;

       result := Toppos;

end;


function TMainFrm.CalculateTextLeftPosition(i : integer; sText : string) : integer;
var  iWidth,
     LeftPos   : integer;
begin
       iWidth := Tablo1frm.Canvas.TextWidth(sText);
       Leftpos := (Screen.Monitors[i].Width - iWidth) div 2;

       result := Leftpos;

end;



procedure TMainFrm.CheckBox10Click(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
              player2Frm.BorderStyle :=bsSizeable
          else
              player2Frm.BorderStyle := bsNone;

end;

procedure TMainFrm.CheckBox11Click(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
                player2Frm.WindowState := wsMaximized
          else
              player2Frm.WindowState := wsNormal;

end;

procedure TMainFrm.CheckBox12Click(Sender: TObject);
begin
          GroupBox_player2.Enabled := (Sender as TCheckBox).Checked;

          if player2Frm.Showing and (not (Sender as TCheckBox).Checked) then
             player2Frm.Close;

end;

procedure TMainFrm.CheckBox1Click(Sender: TObject);
//var i :integer;
begin


        if (Sender as TCheckBox).Checked then
           if (ComboBox1.ItemIndex < 0) or (Btn_Tablo1_Font1.Caption = 'Font') then
            begin
              showMessage('აირჩიე მონიტორი ჯერ და/ან ფონტი');
              (Sender as TCheckBox).Checked := False;
            end;


        if (Sender as TCheckBox).Checked and (ComboBox1.ItemIndex >= 0) and (Btn_Tablo1_Font1.Caption <> 'Font') then
            begin
              SpEdit_Tablo1_Text_TopPos.Value  := CalculateTextTopPosition(ComboBox1.ItemIndex, Edit1.Text);
              SpEdit_Tablo1_Text_LeftPos.Value := CalculateTextLeftPosition(ComboBox1.ItemIndex, Edit1.Text);


            end;



          SpEdit_Tablo1_Text_TopPos.Enabled  := not (Sender as TCheckBox).Checked;
          SpEdit_Tablo1_Text_LeftPos.Enabled := not (Sender as TCheckBox).Checked;
          Label3.Enabled                     := not (Sender as TCheckBox).Checked;
          Label4.Enabled                     := not (Sender as TCheckBox).Checked;

end;

procedure TMainFrm.Cbox_Tablo1_Show_Captons_and_BorderClick(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
              Tablo1Frm.BorderStyle :=bsSizeable
          else
              Tablo1Frm.BorderStyle := bsNone;

end;

procedure TMainFrm.Cbox_Tablo1_FullScreenClick(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
                Tablo1Frm.WindowState := wsMaximized
          else
              Tablo1Frm.WindowState := wsNormal;
end;

procedure TMainFrm.Cbox_Tablo1_TranspanencyClick(Sender: TObject);
begin

          if (Sender as TCheckBox).Checked then
               SetTransparent(Tablo1Frm, True)
          else
               SetTransparent(Tablo1Frm, False);

end;

procedure TMainFrm.Cbox_Tablo1_UsePNGClick(Sender: TObject);
begin
          Btn_Tablo1_Font1.Enabled           := not (Sender as TCheckBox).Checked;
          Tablo1frm.Image1.Visible           := (Sender as TCheckBox).Checked;
          EdPrefix1.Visible                  := (Sender as TCheckBox).Checked;
          Label7.Visible                     := (Sender as TCheckBox).Checked;


          Tablo1Frm.Image1.Picture.LoadFromFile('c:\ekivokiproject3\png\blank.png');

          GroupBox4.Enabled := not (Sender as TCheckBox).Checked;

{          SpEdit_Tablo1_Text_TopPos.Enabled  := not (Sender as TCheckBox).Checked;
          SpEdit_Tablo1_Text_LeftPos.Enabled := not (Sender as TCheckBox).Checked;
          Label3.Enabled                     := not (Sender as TCheckBox).Checked;
          Label4.Enabled                     := not (Sender as TCheckBox).Checked;
}
end;

procedure TMainFrm.Cbox_Tablo2_UsePNGClick(Sender: TObject);
begin
          Btn_Tablo2_Font1.Enabled           := not (Sender as TCheckBox).Checked;
          Tablo2frm.Image1.Visible           := (Sender as TCheckBox).Checked;
          EdPrefix2.Visible                  := (Sender as TCheckBox).Checked;
          Label8.Visible                     := (Sender as TCheckBox).Checked;


          Tablo2Frm.Image1.Picture.LoadFromFile('c:\ekivokiproject3\png\blank.png');

          GroupBox5.Enabled := not (Sender as TCheckBox).Checked;
{
          SpEdit_Tablo2_Text_TopPos.Enabled  := not (Sender as TCheckBox).Checked;
          SpEdit_Tablo2_Text_LeftPos.Enabled := not (Sender as TCheckBox).Checked;
          Label5.Enabled                     := not (Sender as TCheckBox).Checked;
          Label6.Enabled                     := not (Sender as TCheckBox).Checked;
}
end;

procedure TMainFrm.CheckBox2Click(Sender: TObject);
begin

      Player1frm.MediaPlayer1.Notify := (Sender as TCheckBox).Checked;
end;

procedure TMainFrm.CheckBox3Click(Sender: TObject);
begin
          GroupBox_player1.Enabled := (Sender as TCheckBox).Checked;

          if player1Frm.Showing and (not (Sender as TCheckBox).Checked) then
             player1Frm.Close;
end;

procedure TMainFrm.CheckBox4Click(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
              player1Frm.BorderStyle :=bsSizeable
          else
              player1Frm.BorderStyle := bsNone;

end;

procedure TMainFrm.CheckBox5Click(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
                player1Frm.WindowState := wsMaximized
          else
              player1Frm.WindowState := wsNormal;

end;

procedure TMainFrm.CheckBox6Click(Sender: TObject);
begin
        if (Sender as TCheckBox).Checked then
           if (ComboBox2.ItemIndex < 0) or (Btn_Tablo2_Font1.Caption = 'Font') then
            begin
              showMessage('აირჩიე მონიტორი ჯერ და/ან ფონტი');
              (Sender as TCheckBox).Checked := False;
            end;


        if (Sender as TCheckBox).Checked and (ComboBox2.ItemIndex >= 0) and (Btn_Tablo2_Font1.Caption <> 'Font') then
            begin
              SpEdit_Tablo2_Text_TopPos.Value  := CalculateTextTopPosition(ComboBox2.ItemIndex, Edit2.Text);
              SpEdit_Tablo2_Text_LeftPos.Value := CalculateTextLeftPosition(ComboBox2.ItemIndex, Edit2.Text);
            end;



          SpEdit_Tablo2_Text_TopPos.Enabled  := not (Sender as TCheckBox).Checked;
          SpEdit_Tablo2_Text_LeftPos.Enabled := not (Sender as TCheckBox).Checked;
          Label5.Enabled                     := not (Sender as TCheckBox).Checked;
          Label6.Enabled                     := not (Sender as TCheckBox).Checked;
end;

procedure TMainFrm.Cbox_Tablo2_Show_Captons_and_BorderClick(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
              Tablo2Frm.BorderStyle :=bsSizeable
          else
              Tablo2Frm.BorderStyle := bsNone;

end;

procedure TMainFrm.Cbox_Tablo2_FullScreenClick(Sender: TObject);
begin
          if (Sender as TCheckBox).Checked then
                Tablo2Frm.WindowState := wsMaximized
          else
              Tablo2Frm.WindowState := wsNormal;

end;

procedure TMainFrm.Cbox_Tablo2_TranspanencyClick(Sender: TObject);
begin

          if (Sender as TCheckBox).Checked then
               SetTransparent(Tablo2Frm, True)
          else
               SetTransparent(Tablo2Frm, False);

end;

procedure TMainFrm.CheckBox9Click(Sender: TObject);
begin
      Player2frm.MediaPlayer1.Notify := (Sender as TCheckBox).Checked;
end;

procedure TMainFrm.ComboBox1Change(Sender: TObject);
begin
        Tablo1frm.Top    := Screen.Monitors[ComboBox1.ItemIndex].Top;
        Tablo1frm.Left   := Screen.Monitors[ComboBox1.ItemIndex].Left;
        Tablo1frm.Height := Screen.Monitors[ComboBox1.ItemIndex].Height;
        Tablo1frm.Width  := Screen.Monitors[ComboBox1.ItemIndex].Width;


        Player1frm.Top    := Screen.Monitors[ComboBox1.ItemIndex].Top;
        Player1frm.Left   := Screen.Monitors[ComboBox1.ItemIndex].Left;
        Player1frm.Height := Screen.Monitors[ComboBox1.ItemIndex].Height;
        Player1frm.Width  := Screen.Monitors[ComboBox1.ItemIndex].Width;

        Player1frm.SendToBack;
        Tablo1frm.BringToFront;

end;

procedure TMainFrm.ComboBox2Change(Sender: TObject);
begin
        Tablo2frm.Top    := Screen.Monitors[ComboBox2.ItemIndex].Top;
        Tablo2frm.Left   := Screen.Monitors[ComboBox2.ItemIndex].Left;
        Tablo2frm.Height := Screen.Monitors[ComboBox2.ItemIndex].Height;
        Tablo2frm.Width  := Screen.Monitors[ComboBox2.ItemIndex].Width;


        Player2frm.Top    := Screen.Monitors[ComboBox2.ItemIndex].Top;
        Player2frm.Left   := Screen.Monitors[ComboBox2.ItemIndex].Left;
        Player2frm.Height := Screen.Monitors[ComboBox2.ItemIndex].Height;
        Player2frm.Width  := Screen.Monitors[ComboBox2.ItemIndex].Width;

        Player2frm.SendToBack;
        Tablo2frm.BringToFront;

end;

procedure TMainFrm.Edit1Click(Sender: TObject);
begin
          Edit1.SelectAll;
end;

procedure TMainFrm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

          if key = #$D then  // ENTER KEY WAS PRESSED
             begin
                     Button4Click(self);
             end;





end;

procedure TMainFrm.Edit2Click(Sender: TObject);
begin
          Edit2.SelectAll;
end;

procedure TMainFrm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
          if key = #$D then  // ENTER KEY WAS PRESSED
             begin
                     Button9Click(self);
             end;

end;

procedure TMainFrm.FormCreate(Sender: TObject);
var i : integer;
begin
        for I := 0 to Screen.MonitorCount - 1 do
            begin
                if not Screen.Monitors[i].Primary then
                   begin
                    ComboBox1.Items.Add('Monitor ' + intToStr(Screen.Monitors[i].MonitorNum));
                    ComboBox2.Items.Add('Monitor ' + intToStr(Screen.Monitors[i].MonitorNum));
                   end
                else begin
                    ComboBox1.Items.Add('Monitor ' + intToStr(Screen.Monitors[i].MonitorNum) + ' [Primary]');
                    ComboBox2.Items.Add('Monitor ' + intToStr(Screen.Monitors[i].MonitorNum) + ' [Primary]');
                    PrimaryScreenHeight := Screen.Monitors[i].Height;
                    PrimaryScreenWidth  := Screen.Monitors[i].Width;
                    PrimaryScreenLeft   := Screen.Monitors[i].Left;
                    PrimaryScreenTop    := Screen.Monitors[i].Top;
                end;

            end;



end;

procedure TMainFrm.SetTransparent(Aform: TForm; AValue: Boolean);
begin
  Aform.TransparentColor := AValue;
  Aform.TransparentColorValue := Aform.Color;
end;

procedure TMainFrm.btOpen2Click(Sender: TObject);
begin
      Player2frm.MediaPlayer1.Open;
      Player2frm.MediaPlayer1.Play;

      btStop2.Enabled := true;
      btOpen2.Enabled := false;

end;

procedure TMainFrm.btOpenClick(Sender: TObject);
begin
      Player1frm.MediaPlayer1.Open;
      Player1frm.MediaPlayer1.Play;





      btStop.Enabled := true;
      btOpen.Enabled := false;

end;

procedure TMainFrm.btStop2Click(Sender: TObject);
begin
      Player2frm.MediaPlayer1.Stop;
      Player2frm.MediaPlayer1.Close;

      btStop2.Enabled := false;
      btOpen2.Enabled := true;
end;

procedure TMainFrm.btStopClick(Sender: TObject);
begin
      Player1frm.MediaPlayer1.Stop;
      Player1frm.MediaPlayer1.Close;

      btStop.Enabled := false;
      btOpen.Enabled := true;

end;

procedure TMainFrm.Button10Click(Sender: TObject);
begin
  Player1frm.SendToBack;
end;

procedure TMainFrm.Button11Click(Sender: TObject);
begin
      if (sender as TButton).Caption = '[ 2 PLAYER ] SHOW' then
         begin
          Player2frm.Show;
          (sender as TButton).Caption := '[ 2 PLAYER ] HIDE';
         end
       else
         begin
          Player2frm.Close;
          (sender as TButton).Caption := '[ 2 PLAYER ] SHOW';
         end;

end;

procedure TMainFrm.Button12Click(Sender: TObject);
begin
  Player2frm.SendToBack;
end;

procedure TMainFrm.Button13Click(Sender: TObject);
begin

  Testform.Show;


end;

procedure TMainFrm.Button1Click(Sender: TObject);
begin


             with Tablo1frm do
                  begin




                   Canvas.Brush.Style := bsClear;
                   Canvas.Font := FontDialog1.Font;//AlphaBlend(clBlack, clSkyBlue, 100);
//                   Canvas.Font.Color := FontDialog1.Font;//AlphaBlend(clBlack, clSkyBlue, 100);
//                   Canvas.TextOut(50, 50, '   ');

                   Canvas.TextOut(SpEdit_Tablo1_Text_LeftPos.Value, SpEdit_Tablo1_Text_TopPos.Value, Edit1.Text);
                  end;

end;

procedure TMainFrm.Btn_Tablo1_Font1Click(Sender: TObject);
begin
        if FontDialog1.Execute() then
            begin
              Btn_Tablo1_Font1.Caption := '[ FONT ] ' +
                                          FontDialog1.Font.Name +
                                          ', ' +
                                          IntTostr(FontDialog1.Font.Size) +
                                          ', ' +
                                          IntTostr(FontDialog1.Font.Color);


             Btn_Preset1_1.Caption := 'Set Preset 1';
             Btn_Preset1_2.Caption := 'Set Preset 2';
             Btn_Preset1_3.Caption := 'Set Preset 3';
            end;

end;

procedure TMainFrm.Btn_Tablo1_Show_or_HideClick(Sender: TObject);
begin

      if  ComboBox1.Text <> '' then
          begin
           Tablo1frm.Top    := Screen.Monitors[ComboBox1.ItemIndex].Top;
           Tablo1frm.Left   := Screen.Monitors[ComboBox1.ItemIndex].Left;
           Tablo1frm.Height := Screen.Monitors[ComboBox1.ItemIndex].Height;
           Tablo1frm.Width  := Screen.Monitors[ComboBox1.ItemIndex].Width;
          end;

      if (sender as TButton).Caption = '[ 1 TABLO ] SHOW' then
         begin
          Tablo1Frm.Show;
          (sender as TButton).Caption := '[ 1 TABLO ] HIDE';
         end
       else
         begin
          Tablo1Frm.Close;
          (sender as TButton).Caption := '[ 1 TABLO ] SHOW';
         end;


//  Tablo1Frm.Show;
end;

procedure TMainFrm.Button2Click(Sender: TObject);

var
  OpenMediaDialog : TOpenDialog;
begin
  OpenMediaDialog := TOpenDialog.Create(Self);
//  OpenMediaDialog.Filter := 'AVI Files|*.avi|MOV Files|*.mov';

  // Browse for .avi files on your computer
  if OpenMediaDialog.Execute() then
  begin
    { Assign a file to the media player. }
    Player1frm.MediaPlayer1.FileName := OpenMediaDialog.FileName;

    { Check if the file exists and is not a directory. }
    if (FileExists(OpenMediaDialog.FileName)) and
       (not DirectoryExists(OpenMediaDialog.FileName)) then
    begin
      { Open the files. }
      Player1frm.MediaPlayer1.Wait := true;
      Player1frm.MediaPlayer1.DeviceType := dtAutoSelect;

      Player1frm.MediaPlayer1.Display := Player1frm;
      Player1frm.MediaPlayer1.DisplayRect := Rect(0, 0, Player1frm.ClientWidth, Player1frm.ClientHeight);
      Player1frm.MediaPlayer1.Open;
      Player1frm.MediaPlayer1.Play;
      Player1frm.MediaPlayer1.Notify := CheckBox2.Checked;



      { Override automatic button controlling. }
//      Player1frm.MediaPlayer1.EnabledButtons :=
//        [TMPBtnType.btPause, TMPBtnType.btStop, TMPBtnType.btPlay];

      { Enable the Stop button. }
      btStop.Enabled := true;
      btOpen.Enabled := false;

  end;

  OpenMediaDialog.Free;
    end;



end;

procedure TMainFrm.Button3Click(Sender: TObject);
begin
      Player1frm.MediaPlayer1.DisplayRect := Rect(0, 0, Player1frm.ClientWidth, Player1frm.ClientHeight);
end;

procedure TMainFrm.Btn_Preset1_1Click(Sender: TObject);
begin
      if (Sender as TBitBtn).Caption = 'Set Preset 1' then
         begin
          (Sender as TBitBtn).Caption := IntToStr(SpEdit_Tablo1_Text_TopPos.Value) + ',' + IntToStr(SpEdit_Tablo1_Text_LeftPos.Value);
         end
      else begin
            (Sender as TBitBtn).Caption := 'Set Preset 1';
           end;

      Pos_1_TextWith_1_Digits_Top      := SpEdit_Tablo1_Text_TopPos.Value;
      Pos_1_TextWith_1_Digits_Left     := SpEdit_Tablo1_Text_LeftPos.Value;

end;

procedure TMainFrm.Btn_Preset1_2Click(Sender: TObject);
begin
      if (Sender as TBitBtn).Caption = 'Set Preset 2' then
         begin
          (Sender as TBitBtn).Caption := IntToStr(SpEdit_Tablo1_Text_TopPos.Value) + ',' + IntToStr(SpEdit_Tablo1_Text_LeftPos.Value);
         end
      else begin
            (Sender as TBitBtn).Caption := 'Set Preset 2';
           end;

      Pos_1_TextWith_2_Digits_Top      := SpEdit_Tablo1_Text_TopPos.Value;
      Pos_1_TextWith_2_Digits_Left     := SpEdit_Tablo1_Text_LeftPos.Value;

end;

procedure TMainFrm.Btn_Preset1_3Click(Sender: TObject);
begin
      if (Sender as TBitBtn).Caption = 'Set Preset 3' then
         begin
          (Sender as TBitBtn).Caption := IntToStr(SpEdit_Tablo1_Text_TopPos.Value) + ',' + IntToStr(SpEdit_Tablo1_Text_LeftPos.Value);
         end
      else begin
            (Sender as TBitBtn).Caption := 'Set Preset 3';
           end;

      Pos_1_TextWith_3_Digits_Top      := SpEdit_Tablo1_Text_TopPos.Value;
      Pos_1_TextWith_3_Digits_Left     := SpEdit_Tablo1_Text_LeftPos.Value;

end;

procedure TMainFrm.Btn_Preset2_1Click(Sender: TObject);
begin

      if (Sender as TBitBtn).Caption = 'Set Preset 1' then
         begin
          (Sender as TBitBtn).Caption := IntToStr(SpEdit_Tablo2_Text_TopPos.Value) + ',' + IntToStr(SpEdit_Tablo2_Text_LeftPos.Value);
         end
      else begin
            (Sender as TBitBtn).Caption := 'Set Preset 1';
           end;


      Pos_2_TextWith_1_Digits_Top      := SpEdit_Tablo2_Text_TopPos.Value;
      Pos_2_TextWith_1_Digits_Left     := SpEdit_Tablo2_Text_LeftPos.Value;

end;

procedure TMainFrm.Btn_Preset2_2Click(Sender: TObject);
begin
      if (Sender as TBitBtn).Caption = 'Set Preset 2' then
         begin
          (Sender as TBitBtn).Caption := IntToStr(SpEdit_Tablo2_Text_TopPos.Value) + ',' + IntToStr(SpEdit_Tablo2_Text_LeftPos.Value);
         end
      else begin
            (Sender as TBitBtn).Caption := 'Set Preset 2';
           end;

      Pos_2_TextWith_2_Digits_Top      := SpEdit_Tablo2_Text_TopPos.Value;
      Pos_2_TextWith_2_Digits_Left     := SpEdit_Tablo2_Text_LeftPos.Value;

end;

procedure TMainFrm.Btn_Preset2_3Click(Sender: TObject);
begin

      if (Sender as TBitBtn).Caption = 'Set Preset 3' then
         begin
          (Sender as TBitBtn).Caption := IntToStr(SpEdit_Tablo2_Text_TopPos.Value) + ',' + IntToStr(SpEdit_Tablo2_Text_LeftPos.Value);
         end
      else begin
            (Sender as TBitBtn).Caption := 'Set Preset 3';
           end;

      Pos_2_TextWith_3_Digits_Top      := SpEdit_Tablo2_Text_TopPos.Value;
      Pos_2_TextWith_3_Digits_Left     := SpEdit_Tablo2_Text_LeftPos.Value;

end;

procedure TMainFrm.Btn_Tablo1_BringToFrontClick(Sender: TObject);
begin
    Tablo1frm.BringToFront;
end;

procedure TMainFrm.Button4Click(Sender: TObject);
var FFailName : string;
begin

//      Cbox_Tablo1_UsePNGClick(Self);

      if Cbox_Tablo1_UsePNG.Checked then
          begin
           FFailName :='c:\ekivokiproject3\png\' + EdPrefix1.Text + Edit1.Text + '.png';
           if FileExists(FFailName) then
              Tablo1Frm.Image1.Picture.LoadFromFile(FFailName)
           else

              ShowMessage('ოე, მაგას ვერდავწერეხლა!!! და იცი რატომაც');
          end
      else begin

//                  Tablo1Frm.Image1.Picture.LoadFromFile('c:\ekivokiproject3\png\blank.png');

//            Tablo1frm.Image1.Visible           := not Tablo1frm.Image1.Visible;
//            Tablo1frm.Image1.Visible           := not Tablo1frm.Image1.Visible;

             Tablo1Frm.Repaint;
             with Tablo1frm do
                  begin




                   Canvas.Brush.Style := bsClear;
                   Canvas.Font := FontDialog1.Font;//AlphaBlend(clBlack, clSkyBlue, 100);
//                   Canvas.Font.Color := FontDialog1.Font;//AlphaBlend(clBlack, clSkyBlue, 100);
//                   Canvas.TextOut(50, 50, '   ');

                   case Length(Edit1.Text) of
                        1 : if Btn_Preset1_1.Caption <> 'Set Preset 1' then
                               Canvas.TextOut(Pos_1_TextWith_1_Digits_Left, Pos_1_TextWith_1_Digits_Top, Edit1.Text)
                            else
                               Canvas.TextOut(SpEdit_Tablo1_Text_LeftPos.Value, SpEdit_Tablo1_Text_TopPos.Value, Edit1.Text);

                        2 : if Btn_Preset1_2.Caption <> 'Set Preset 2' then
                               Canvas.TextOut(Pos_1_TextWith_2_Digits_Left, Pos_1_TextWith_2_Digits_Top, Edit1.Text)
                            else
                               Canvas.TextOut(SpEdit_Tablo1_Text_LeftPos.Value, SpEdit_Tablo1_Text_TopPos.Value, Edit1.Text);

                        3 : if Btn_Preset1_3.Caption <> 'Set Preset 3' then
                               Canvas.TextOut(Pos_1_TextWith_3_Digits_Left, Pos_1_TextWith_3_Digits_Top, Edit1.Text)
                            else
                               Canvas.TextOut(SpEdit_Tablo1_Text_LeftPos.Value, SpEdit_Tablo1_Text_TopPos.Value, Edit1.Text);



                   end;



                  end;


      end;
end;

procedure TMainFrm.Button5Click(Sender: TObject);
begin

      if (sender as TButton).Caption = '[ 1 PLAYER ] SHOW' then
         begin
          Player1frm.Show;
          (sender as TButton).Caption := '[ 1 PLAYER ] HIDE';
         end
       else
         begin
          Player1frm.Close;
          (sender as TButton).Caption := '[ 1 PLAYER ] SHOW';
         end;

end;

procedure TMainFrm.Button6Click(Sender: TObject);
begin
      Player2frm.MediaPlayer1.DisplayRect := Rect(0, 0, Player2frm.ClientWidth, Player2frm.ClientHeight);
end;

procedure TMainFrm.Btn_Tablo2_Show_or_HideClick(Sender: TObject);
begin
      if (sender as TButton).Caption = '[ 2 TABLO ] SHOW' then
         begin
          Tablo2Frm.Show;
          (sender as TButton).Caption := '[ 2 TABLO ] HIDE';
         end
       else
         begin
          Tablo2Frm.Close;
          (sender as TButton).Caption := '[ 2 TABLO ] SHOW';
         end;


//  Tablo2Frm.Show;
end;

procedure TMainFrm.Btn_Tablo2_BringToFrontClick(Sender: TObject);
begin
    Tablo2frm.BringToFront;
end;

procedure TMainFrm.Btn_Tablo2_Font1Click(Sender: TObject);
begin


        if FontDialog1.Execute() then
            begin
              Btn_Tablo2_Font1.Caption := '[ FONT ] ' +
                                          FontDialog1.Font.Name +
                                          ', ' +
                                          IntTostr(FontDialog1.Font.Size) +
                                          ', ' +
                                          IntTostr(FontDialog1.Font.Color);

             Btn_Preset2_1.Caption := 'Set Preset 1';
             Btn_Preset2_2.Caption := 'Set Preset 2';
             Btn_Preset2_3.Caption := 'Set Preset 3';

            end;



end;

procedure TMainFrm.Button8Click(Sender: TObject);
var
  OpenMediaDialog : TOpenDialog;
begin
  OpenMediaDialog := TOpenDialog.Create(Self);
//  OpenMediaDialog.Filter := 'AVI Files|*.avi|MOV Files|*.mov';

  // Browse for .avi files on your computer
  if OpenMediaDialog.Execute() then
  begin
    { Assign a file to the media player. }
    Player2frm.MediaPlayer1.FileName := OpenMediaDialog.FileName;

    { Check if the file exists and is not a directory. }
    if (FileExists(OpenMediaDialog.FileName)) and
       (not DirectoryExists(OpenMediaDialog.FileName)) then
    begin
      { Open the files. }
      Player2frm.MediaPlayer1.Wait := true;
      Player2frm.MediaPlayer1.DeviceType := dtAutoSelect;

      Player2frm.MediaPlayer1.Display := Player2frm;
      Player2frm.MediaPlayer1.DisplayRect := Rect(0, 0, Player2frm.ClientWidth, Player2frm.ClientHeight);

      Player2frm.MediaPlayer1.Open;
      Player2frm.MediaPlayer1.Play;
      Player2frm.MediaPlayer1.Notify := CheckBox9.Checked;



      { Override automatic button controlling. }
//      Player1frm.MediaPlayer1.EnabledButtons :=
//        [TMPBtnType.btPause, TMPBtnType.btStop, TMPBtnType.btPlay];

      { Enable the Stop button. }
      btStop2.Enabled := true;
      btOpen2.Enabled := false;

  end;

  OpenMediaDialog.Free;
    end;


end;

procedure TMainFrm.Button9Click(Sender: TObject);
var FFailName :string;
begin




      if Cbox_Tablo1_UsePNG.Checked then
          begin
           FFailName :='c:\ekivokiproject3\png\' + EdPrefix2.Text + Edit2.Text + '.png';
           if FileExists(FFailName) then
              Tablo2Frm.Image1.Picture.LoadFromFile(FFailName)
           else
              ShowMessage('ოე, ' + ' მაგას ' + 'ვერ' +  'დავწერ ' +' ეხლა!!! და იცი რატომაც');
          end


      else begin

                  Tablo2Frm.Image1.Picture.LoadFromFile('c:\ekivokiproject3\png\blank.png');

             Tablo2Frm.Repaint;
             with Tablo2frm do
                  begin



                   Canvas.Brush.Style := bsClear;
                   Canvas.Font := FontDialog1.Font;//AlphaBlend(clBlack, clSkyBlue, 100);
//                   Canvas.Font.Color := FontDialog1.Font;//AlphaBlend(clBlack, clSkyBlue, 100);
//                   Canvas.TextOut(50, 50, '   ');



                   case Length(Edit2.Text) of
                        1 : if Btn_Preset2_1.Caption <> 'Set Preset 1' then
                               Canvas.TextOut(Pos_2_TextWith_1_Digits_Left, Pos_2_TextWith_1_Digits_Top, Edit2.Text)
                            else
                               Canvas.TextOut(SpEdit_Tablo2_Text_LeftPos.Value, SpEdit_Tablo2_Text_TopPos.Value, Edit2.Text);

                        2 : if Btn_Preset2_2.Caption <> 'Set Preset 2' then
                               Canvas.TextOut(Pos_2_TextWith_2_Digits_Left, Pos_2_TextWith_2_Digits_Top, Edit2.Text)
                            else
                               Canvas.TextOut(SpEdit_Tablo2_Text_LeftPos.Value, SpEdit_Tablo2_Text_TopPos.Value, Edit2.Text);

                        3 : if Btn_Preset2_3.Caption <> 'Set Preset 3' then
                               Canvas.TextOut(Pos_2_TextWith_3_Digits_Left, Pos_2_TextWith_3_Digits_Top, Edit2.Text)
                            else
                               Canvas.TextOut(SpEdit_Tablo2_Text_LeftPos.Value, SpEdit_Tablo2_Text_TopPos.Value, Edit2.Text);


                   end;

//                   Canvas.TextOut(SpEdit_Tablo2_Text_LeftPos.Value, SpEdit_Tablo2_Text_TopPos.Value, Edit2.Text);
                  end;
      end;

end;

end.

unit player2form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.ExtCtrls;

type
  TPlayer2frm = class(TForm)
    MediaPlayer1: TMediaPlayer;
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Player2frm: TPlayer2frm;

implementation

{$R *.dfm}

uses mainForm;

procedure TPlayer2frm.FormCreate(Sender: TObject);
var tmpInt : integer;
begin

      BorderStyle := bsNone;

      Player2Frm.Height := MainFrm.Height div 2;
      Player2Frm.Width  := ((PrimaryScreenWidth - MainFrm.Width) div 2 ) div 3;

      Player2frm.Top    := PrimaryScreenHeight - ((PrimaryScreenHeight - MainFrm.Height) div 2) - Player2frm.Height;
      tmpInt := 0 + ((PrimaryScreenWidth - MainFrm.Width) div 2 ) + MainFrm.Width;
      Player2Frm.Left   := tmpInt + (((PrimaryScreenWidth - MainFrm.Width) div 2 ) - Player2Frm.Width) div 2;



end;

procedure TPlayer2frm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

          if Key = VK_ESCAPE then
             Player2frm.Close;

          if Key = VK_F5 then
             Player2frm.MediaPlayer1.DisplayRect := Rect(0, 0, Player2frm.ClientWidth, Player2frm.ClientHeight);

          if Key = VK_F8 then
             Player2frm.SendToBack;

end;

procedure TPlayer2frm.MediaPlayer1Notify(Sender: TObject);
begin
IF MediaPlayer1.Notify = True THEN
  begin
    MediaPlayer1.Play;
  end
  ELSE
  begin
    MediaPlayer1.Stop;
  end;
end;

end.

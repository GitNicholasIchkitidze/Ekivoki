unit player1form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.ExtCtrls;

type
  TPlayer1frm = class(TForm)
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
  Player1frm: TPlayer1frm;

implementation

{$R *.dfm}

uses mainForm;

procedure TPlayer1frm.FormCreate(Sender: TObject);

begin


      BorderStyle := bsNone;

      Player1frm.Height := MainFrm.Height div 2;
      Player1frm.Width  := ((PrimaryScreenWidth - MainFrm.Width) div 2 ) div 3;

      Player1frm.Top    := PrimaryScreenHeight - ((PrimaryScreenHeight - MainFrm.Height) div 2) - Player1frm.Height;
      Player1frm.Left   := (((PrimaryScreenWidth - MainFrm.Width) div 2 ) - Player1frm.Width) div 2;



end;

procedure TPlayer1frm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

          if Key = VK_ESCAPE then
             Player1frm.Close;

          if Key = VK_F5 then
             Player1frm.MediaPlayer1.DisplayRect := Rect(0, 0, Player1frm.ClientWidth, Player1frm.ClientHeight);

          if Key = VK_F8 then
             Player1frm.SendToBack;

end;

procedure TPlayer1frm.MediaPlayer1Notify(Sender: TObject);
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

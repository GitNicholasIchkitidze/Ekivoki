unit Tablo2Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TTablo2Frm = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tablo2Frm: TTablo2Frm;

implementation

{$R *.dfm}

uses mainForm;

procedure TTablo2Frm.FormCreate(Sender: TObject);
var tmpInt : integer;
begin
      BorderStyle := bsNone;

      Tablo2Frm.Height := MainFrm.Height div 2;
      Tablo2Frm.Width  := ((PrimaryScreenWidth - MainFrm.Width) div 2 ) div 3;

      Tablo2Frm.Top    := PrimaryScreenHeight - ((PrimaryScreenHeight - MainFrm.Height) div 2) - Tablo2Frm.Height - Tablo2Frm.Height;
      tmpInt := 0 + ((PrimaryScreenWidth - MainFrm.Width) div 2 ) + MainFrm.Width;
      Tablo2Frm.Left   := tmpInt + (((PrimaryScreenWidth - MainFrm.Width) div 2 ) - Tablo2Frm.Width) div 2;



end;

procedure TTablo2Frm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then
             begin
              Tablo2Frm.Close;
              MainFrm.Btn_Tablo2_Show_or_Hide.Caption := '[ 2 TABLO ] SHOW';
              Exit;
             end;


          if Key = VK_F5 then
               begin
                MainFrm.SetTransparent(Tablo2Frm, True);
                MainFrm.Cbox_Tablo2_Transpanency.Checked := True;
                Exit;

               end;

          if Key = VK_F6 then
              begin
               MainFrm.SetTransparent(Tablo2Frm, False);
               MainFrm.Cbox_Tablo2_Transpanency.Checked := False;
               Exit;
              end;

          if Key = VK_F7 then
              begin
               Tablo2Frm.BorderStyle := bsNone;
               MainFrm.Cbox_Tablo2_Show_Captons_and_Border.checked := False;
               Exit;
              end;

          if Key = VK_F8 then
              begin
               Tablo2Frm.BorderStyle := bsSizeable;
               MainFrm.Cbox_Tablo2_Show_Captons_and_Border.checked := True;
               Exit;
              end;
end;

end.

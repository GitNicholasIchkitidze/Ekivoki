unit Tablo1Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.MPlayer, Vcl.StdCtrls;

type
  TTablo1Frm = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tablo1Frm: TTablo1Frm;

implementation

{$R *.dfm}

uses mainForm;

procedure TTablo1Frm.FormCreate(Sender: TObject);
begin

      BorderStyle := bsNone;

      Tablo1Frm.Height := MainFrm.Height div 2;
      Tablo1Frm.Width  := ((PrimaryScreenWidth - MainFrm.Width) div 2 ) div 3;

      Tablo1Frm.Top    := PrimaryScreenHeight - ((PrimaryScreenHeight - MainFrm.Height) div 2) - Tablo1Frm.Height - Tablo1Frm.Height;
      Tablo1Frm.Left   := (((PrimaryScreenWidth - MainFrm.Width) div 2 ) - Tablo1Frm.Width) div 2;



end;

procedure TTablo1Frm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


          if Key = VK_ESCAPE then
             begin
              Tablo1Frm.Close;
              MainFrm.Btn_Tablo1_Show_or_Hide.Caption := '[ 1 TABLO ] SHOW';
              Exit;
             end;


          if Key = VK_F5 then
               begin
                MainFrm.SetTransparent(Tablo1Frm, True);
                MainFrm.Cbox_Tablo1_Transpanency.Checked := True;
                Exit;

               end;

          if Key = VK_F6 then
              begin
               MainFrm.SetTransparent(Tablo1Frm, False);
               MainFrm.Cbox_Tablo1_Transpanency.Checked := False;
               Exit;
              end;

          if Key = VK_F7 then
              begin
               Tablo1Frm.BorderStyle := bsNone;
               MainFrm.Cbox_Tablo1_Show_Captons_and_Border.checked := False;
               Exit;
              end;

          if Key = VK_F8 then
              begin
               Tablo1Frm.BorderStyle := bsSizeable;
               MainFrm.Cbox_Tablo1_Show_Captons_and_Border.checked := True;
               Exit;
              end;
end;

procedure TTablo1Frm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


          if Key = VK_ESCAPE then
             begin
              Tablo1Frm.Close;
              Exit;
             end;


          if Key = VK_F5 then
               begin
                MainFrm.SetTransparent(Tablo1Frm, True);
                MainFrm.Cbox_Tablo1_Transpanency.Checked := True;
                Exit;

               end;

          if Key = VK_F6 then
              begin
               MainFrm.SetTransparent(Tablo1Frm, False);
               MainFrm.Cbox_Tablo1_Transpanency.Checked := False;
               Exit;
              end;

          if Key = VK_F7 then
              begin
               Tablo1Frm.BorderStyle := bsNone;
               MainFrm.Cbox_Tablo1_Show_Captons_and_Border.checked := False;
               Exit;
              end;

          if Key = VK_F8 then
              begin
               Tablo1Frm.BorderStyle := bsSizeable;
               MainFrm.Cbox_Tablo1_Show_Captons_and_Border.checked := True;
               Exit;
              end;
end;

end.

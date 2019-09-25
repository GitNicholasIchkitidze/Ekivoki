unit testunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Ttestform = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
procedure SetTransparent(Aform: TForm; AValue: Boolean);
    { Public declarations }
  end;

var
  testform: Ttestform;

implementation

{$R *.dfm}


procedure Ttestform.SetTransparent(Aform: TForm; AValue: Boolean);
begin
  Aform.TransparentColor := AValue;
  Aform.TransparentColorValue := Aform.Color;
end;

procedure Ttestform.Button1Click(Sender: TObject);

var
  BackgroundImage: Vcl.Graphics.TBitmap; { need to call out specifically for Graphics.TBitmap
                                       because the Windows unit also has a TBitmap
                                       declaration }
  TextImage: Vcl.Graphics.TBitmap;
  BlendFunc: BLENDFUNCTION;
begin
  BlendFunc.BlendOp := AC_SRC_OVER;
  BlendFunc.BlendFlags := 0;
  BlendFunc.SourceConstantAlpha := $C0; { a hex value from $00-$FF (0-255).
                                          Represents the percent of opaqueness:
                                          $00 is completely transparent,
                                          $FF is completely opaque.
                                          $C0 is 75% opaque }
  BlendFunc.AlphaFormat := AC_SRC_ALPHA;

    { BackgroundImage is for holding the image you want to overlay text onto }
    BackgroundImage := Vcl.Graphics.TBitmap.Create;
    try
      BackgroundImage.LoadFromFile('c:\ekivokiproject3\png\1.bmp');

      { Create another TBitmap to hold the text you want to overlay }
      TextImage := Vcl.Graphics.TBitmap.Create;
      try
        { Set this bitmap to have the same dimensions as the
          background image you want the text to appear on. }
        TextImage.Height := BackgroundImage.Height;
        TextImage.Width := BackgroundImage.Width;

        { In my limited experience with AlphaBlend, Black is always 100%
          transparent. So, paint TextImage completely Black. Play around
          with this to see the effect it has on the final outcome. }
        TextImage.Canvas.Brush.Color := clBlack;
        TextImage.Canvas.FloodFill(0, 0, clNone, fsBorder);

        TextImage.Canvas.Font.Style := [fsBold];

        { Write the shadow first }
        TextImage.Canvas.Brush.Style := bsClear;
        TextImage.Canvas.Font.Color  := clDkGray;
        TextImage.Canvas.TextOut(11, 11, 'Test');

        { Then put the text on top (slightly offset) }
        TextImage.Canvas.Brush.Style := bsClear;
        TextImage.Canvas.Font.Color  := clMaroon;
        TextImage.Canvas.TextOut(10, 10, 'Test');

        { Use the AlphaBlend function to overlay the bitmap holding the text
          on top of the bitmap holding the original image. }
        winapi.windows.AlphaBlend(BackgroundImage.Canvas.Handle, 0, 0,
                           TextImage.Width, TextImage.Height,
                           TextImage.Canvas.Handle, 0, 0, TextImage.Width,
                           TextImage.Height, BlendFunc);

        { Assign the now updated BackgroundImage to a TImage control for display }
        Image1.Picture.Bitmap.Assign(BackgroundImage);
      finally
        TextImage.Free;
      end;
    finally
      BackgroundImage.Free;
    end;
  end;


procedure Ttestform.Button2Click(Sender: TObject);
begin
with testform do
begin
Canvas.Brush.Style := bsClear;
Canvas.Font.Color := clred;//AlphaBlend(clBlack, clSkyBlue, 100);
Canvas.TextOut(50, 50, 'Testing transparency here');
end;

end;

procedure Ttestform.Button3Click(Sender: TObject);
begin
SetTransparent(self, true);
end;

end.

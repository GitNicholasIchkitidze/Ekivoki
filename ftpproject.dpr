program ftpproject;

uses
  Vcl.Forms,
  Dialogs,
  SysUtils,
  ftpmain in 'ftpmain.pas' {Form1},
  Chilkat_v9_5_0_TLB in 'Chilkat_v9_5_0_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);

  Application.Run;
end.

program ekivoki3;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  mainForm in 'mainForm.pas' {MainFrm},
  Tablo1Form in 'Tablo1Form.pas' {Tablo1Frm},
  player1form in 'player1form.pas' {Player1frm},
  Tablo2Form in 'Tablo2Form.pas' {Tablo2Frm},
  player2form in 'player2form.pas' {Player2frm},
  SplashForm in 'SplashForm.pas' {SplashFrm};

{$R *.res}

begin
{
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TTablo1Frm, Tablo1Frm);
  Application.CreateForm(TPlayer1frm, Player1frm);
  Application.CreateForm(TTablo2Frm, Tablo2Frm);
  Application.CreateForm(TPlayer2frm, Player2frm);
  Application.CreateForm(TSplashFrm, SplashFrm);
  //  CheckServersDate('ll');
  Application.Run;

  }


  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  SplashFrm:= TSplashFrm.Create( Application );
  SplashFrm.OpenSplash;

  if  SplashFrm.ChkValidate then
      begin
  SplashFrm.EchoProgress('Creating control Module...');
  Application.CreateForm(TMainFrm, MainFrm);
  SplashFrm.MemoProgress('Creating control Module......  Done');


  SplashFrm.EchoProgress('Creating Mimic 1...');
  Application.CreateForm(TTablo1Frm, Tablo1Frm);
  SplashFrm.MemoProgress('Creating Mimic 1......  Done');

  SplashFrm.EchoProgress('Creating Player Module 1...');
  Application.CreateForm(TPlayer1frm, Player1frm);
  SplashFrm.MemoProgress('Creating Player Module 1......  Done');

  SplashFrm.EchoProgress('Creating Mimic 2...');
  Application.CreateForm(TTablo2Frm, Tablo2Frm);
  SplashFrm.MemoProgress('Creating Mimic 2......  Done');

  SplashFrm.EchoProgress('Creating Player Module 2..');
  Application.CreateForm(TPlayer2frm, Player2frm);
  SplashFrm.MemoProgress('Creating Player Module1 2......  Done');


//Application.CreateForm(TSplashFrm, SplashFrm);
  //  CheckServersDate('ll');

  SplashFrm.Memo1.Lines.SaveToFile('log.txt');
  SplashFrm.EchoProgress('Ready to Go..');
  SplashFrm.CustomShowMessage('ეკივოკი',
                                   'პროგრამა მზადაა სამუშაოდ',
                                   mtInformation, [mbOk], mbOK);

//  showMessage('პროგრამა მზადაა სამუშაოდ');
  SplashFrm.CloseSplash;

      end
     else begin
       SplashFrm.Memo1.Lines.SaveToFile('log.txt');

       SplashFrm.EchoProgress('Error!! see Log file ..');
       SplashFrm.CustomShowMessage('შეცდომა: ეკივოკიში',
                                   'პროგრამა წყვეტს მუშაობას. რატო? ნახე ლოგი',
                                   mtError, [mbOk], mbOK);



//        showMessage('პროგრამა წყვეტს მუშაობას. რატო? ნახე ლოგი')

//       SplashFrm.ShowModal;
//       SplashFrm.BitBtn1.Enabled :=True;
     end;


  Application.Run;

end.
                        {


  Application.Initialize;
//  Application.MainFormOnTaskbar := True;



//  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Form1.CloseSplash;
  Application.Run;
}


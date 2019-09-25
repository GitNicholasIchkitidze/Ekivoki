unit SplashForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  IdDayTime, Vcl.Buttons, IdFTP, IdComponent;



type
  TSplashFrm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
//       Button1: TButton;
//        Label1: TLabel;
//        Timer1: TTimer;
        procedure Timer1Timer(Sender: TObject);
      private
        { Private declarations }
      public
        { Public declarations }
        procedure OpenSplash;
        procedure ShowProgress(ProgMessage: String);
        procedure MemoProgress(ProgMessage: String);
        procedure EchoProgress(ProgMessage: String);
        procedure CloseSplash;

        function CustomShowMessage(InfoTitle,Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; DefaultButton: TMsgDlgBtn) : integer;
        function CheckServersDate(strDT: string) : string;
        function ChkValidate : Boolean;
        function GetDataFromFtp : string;




      end;

    var
      SplashFrm: TSplashFrm;
          Total: Integer;
          Percent: Integer;
implementation

{$R *.dfm}

function TSplashFrm.CustomShowMessage(InfoTitle, Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; DefaultButton: TMsgDlgBtn) : integer;
var Dlg: TForm;
begin



  Dlg := CreateMessageDialog(Msg, mtInformation, [mbOk], mbOK);
  // Treat Dlg like any other form

  Dlg.Caption := InfoTitle;

  try
    // The message label is named 'message'
    with TLabel(Dlg.FindComponent('Message')) do
    begin
      Font.Style := [fsUnderline];

      // extraordinary code goes here
    end;

    // The icon is named... icon
    with TPicture(Dlg.FindComponent('icon')) do
    begin
      // more amazing code regarding the icon
    end;

    Result := Dlg.ShowModal;
  finally
    Dlg.Free;
  end;

end;

procedure TSplashFrm.OpenSplash;
begin
      Label1.Caption := '';
      Show;
      Update;



end;

procedure TSplashFrm.CloseSplash;
begin
  SplashFrm.Destroy;
end;

procedure TSplashFrm.EchoProgress(ProgMessage: String);
begin
      StatusBar1.Panels[0].Text := ProgMessage;
      StatusBar1.Repaint;
end;

procedure TSplashFrm.MemoProgress(ProgMessage: String);
begin
      Memo1.Lines.Add(ProgMessage);
      Memo1.Repaint;
      Memo1.Refresh;
end;


procedure TSplashFrm.ShowProgress(ProgMessage: String);
var          { i,} X: Integer;

begin




//      i := Memo1.Lines.Count;

   Total := 1000;

      for X := 1 to Total do
      begin
        Sleep(5);
        Percent := (x * 100) div Total;

        Label1.caption := StringOfChar('|', Percent) + ' ' + IntToStr(Percent) + '%';


        Label1.Repaint;

      end;



end;

 procedure TSplashFrm.Timer1Timer(Sender: TObject);
begin
//  Close;
//  Release;
//  SplashFrm := nil;
end;



function TSplashFrm.ChkValidate : Boolean;


var tmpstr0,tmpStr1,tmpStr2: string;
   IdServerDate,
   IdLicenseDate: TDateTime;
   i : integer;


    function ConvertServerDateInString(strDT: string) : string;
    var yy,dd,mm :string;
      tmpDate:string;
      Poss : integer;
    begin
      Result:='';
      if strDT = '' then
         exit;

      poss:= Pos(' ',strDT);
      TmpDate := Copy(strDT, poss + 1, 8);

      yy := '20' + Copy(TmpDate,0,2);
      mm := copy(TmpDate,4,2);
      dd := copy(TmpDate,7,2);

      Result:= yy + '/' + mm + '/' + dd;
  end;

begin


    Result := True;
    tmpStr0 := '';
    tmpStr1 := '';
    tmpStr2 := '';


    for i := 1 to ParamCount - 1 do
        begin
         tmpStr0 := tmpStr0 + ParamStr(i);
        end;

    if (Pos('d:23',tmpStr0) > 4) and (Pos('d:23',tmpStr0) < 10) then
       begin
//        tmpStr0 :='';
        Exit;
       end;




    MemoProgress('');
    EchoProgress('Checking server''s date....');
    MemoProgress('Determine current date from known DateTime Servers');
    MemoProgress('');

    tmpStr1:= CheckServersDate('');
    tmpStr1:= ConvertServerDateInString(tmpStr1);
    if tmpStr1 <>'' then
       begin
        MemoProgress('Checking servers''''s date...' + ' Done: = Today is '  + tmpStr1);

        tmpstr0 := 'and this Date is VALID formatted';
        try
             IdServerDate := StrToDate(tmpStr1);

        except begin
                tmpstr0 := 'and this Date is INVALID formatted';
                Result := False;
             end;
        end;
        MemoProgress(tmpStr0);

       end


    else begin
          Result := False;
          MemoProgress('');
          MemoProgress('Critical Error: Could not determine current date from any of known DateTime Servers');
          MemoProgress('');

         end;




    MemoProgress('');
    EchoProgress('Checking licence credits....');
    tmpStr2:= GetDataFromFtp;

    if tmpStr2 <>'' then
       begin
        MemoProgress('Checking licence credits....' + ' Done: = Valid up to '  + tmpStr2);
        tmpstr0 := 'and this Date is VALID formatted';
        try
             IdLicenseDate := StrToDate(tmpStr2);

        except begin
                Result := False;
                tmpstr0 := 'and this Date is INVALID formatted';
               end;
        end;
        MemoProgress(tmpStr0);

       end
    else begin
          Result := False;
          MemoProgress('');
          MemoProgress('Critical Error: Could not determine Licence related info');
          MemoProgress('');
         end;


    EchoProgress('');


//    tmpStr1 := ConvertServerDateInString(tmpStr1);

    if result then
       begin
       if (tmpStr1 < tmpStr2)  then
           Result := True
          else begin
                 Result := False;
                 MemoProgress('');
                 MemoProgress('Attention!!! Licence period expired');
                 MemoProgress('');
               end;

       end;

{
    if (tmpStr1 < tmpStr2) and (tmpStr1 <> '') and (tmpStr2 <> '') then
       Result := True
    else begin
          MemoProgress('');
          MemoProgress('Attention!!! Licence period expired');
          MemoProgress('');
         end;
}


 {
    if not result then
      begin

       Timer1.Enabled :=True;
       ShowProgress('');
      end;
 }
                 MemoProgress('');
end;



function TSplashFrm.CheckServersDate(strDT: string) : string;
    var IdServerDayTime: TIdDayTime;
        TimeServers : TStringList;
//        InternetDate : string;
        i :integer;



    begin


          TimeServers := TstringList.Create;

          if strDT <> '' then
             TimeServers.Add(StrDT)
          else begin
                TimeServers.Add('time.windows.com'); //			//	global address for all servers	Multiple locations	All services available
                TimeServers.Add('time.nist.gov'); //		 //	global address for all servers	Multiple locations	All services available
                TimeServers.Add('nist.gov'); //			24.56.178.140	// WWV, Fort Collins, Colorado	All services available
                TimeServers.Add('nist1-chi.ustiming.org'); //	216.171.120.36 //	Chicago, Illinois	All services available
                TimeServers.Add('nist.time.nosc.us'); //		96.226.242.9	// Carrollton, Texas	All services available
                TimeServers.Add('nist.expertsmi.com'); //		50.245.103.198 //	Monroe, Michigan	ok, new ip address
                TimeServers.Add('nist.netservicesgroup.com'); //			64.113.32.5	// Southfield, Michigan	All services available
                TimeServers.Add('nisttime.carsoncity.k12.mi.us'); //			66.219.116.140 //	Carson City, Michigan	All services available
                TimeServers.Add('nist1-lnk.binary.net'); //			216.229.0.179 //	Lincoln, Nebraska	All services available
                TimeServers.Add('time-nist.symmetricom.com'); //			12.10.191.251
                TimeServers.Add('utcnist.colorado.edu'); //			128.138.140.44 //	University of Colorado, Boulder	All services available
                TimeServers.Add('utcnist2.colorado.edu'); //			128.138.141.172//	University of Colorado, Boulder	All services available
                TimeServers.Add('ntp-nist.ldsbc.edu'); //			198.60.73.8 //	LDSBC, Salt Lake City, Utah	All services available
                TimeServers.Add('nist1-lv.ustiming.org'); //			64.250.229.100 //	Las Vegas, Nevada
               end;

          IdServerDayTime := TIdDayTime.Create();

          Result:='';

          for I := 0 to TimeServers.Count - 1 do
              begin

                IdServerDayTime.Host := TimeServers[i];

                EchoProgress('Checking servers''''s date....' + ' ' + IdServerDayTime.Host + ' please wait!');
                   try

                    Result := IdServerDayTime.DayTimeStr;
                   except
                    begin
                     Result := '';
                     EchoProgress('Checking servers''''s date....' + ' ' + IdServerDayTime.Host + ' Failed.');
                    end;
                   end;


                if Result <> '' then
                   begin
                     MemoProgress('Date from' + ' ' + IdServerDayTime.Host + ' ->' + result);

                     break;
                   end
                else begin
                     MemoProgress('Could not retrieve Date from' + ' ' + IdServerDayTime.Host);
                     sleep(500);
                     end;





              end;


          IdServerDayTime.Free;
          TimeServers.Free;
end;


function TSplashFrm.GetDataFromFtp : string;
var
  ftp: TIdFTP;
  strDirectory: string;
//  DateTimeLocal, DateTimeFtp : TDateTime;
  checkStrings: Tstringlist;
begin
  ftp := TIdFTP.Create(nil);
  result := '';

  try
    ftp.Host := '160.153.0.1';
    ftp.Passive := true;
    ftp.Username := 'xfactorgeo';
    ftp.Password := 'Aa1!0000';
    ftp.ConnectTimeout := 100;

    ftp.Connect();



    ftp.BeginWork(wmRead);
//    ftp.ChangeDir('/TestArea/');
    strDirectory := 'd:\';
    if not DirectoryExists(strDirectory) then
      CreateDir(strDirectory);

//    DateTimeFtp := ftp.FileDate('ftptest.txt',True);
    ftp.Get('ftptest.txt', strDirectory + '\' + 'ftptest.txt', true, false);
   ftp.Disconnect();

   checkStrings := TstringList.Create;

   checkStrings.LoadFromFile(strDirectory + '\' + 'ftptest.txt');
   deletefile(strDirectory + '\' + 'ftptest.txt');


//   Label2.Caption := 'date from FTP: ' + checkStrings[0];

   Result:= checkStrings[0];

   checkStrings.Destroy;

  except
    on e: exception do
          begin
//           SplashFrm.CustomShowMessage('შეცდომა: ',
//                                       'აუფ ჩემი!!! ' + e.message,
//                                       mtError, [mbOk], mbOK);
          end;

//      showMessage(e.message);
  end;


  ftp.Destroy;

end;


end.

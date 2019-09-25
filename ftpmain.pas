unit ftpmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls,

  WinINet,

  Chilkat_v9_5_0_TLB,
    OleCtrls, Vcl.Samples.Spin, Vcl.Grids, Vcl.Samples.Calendar,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, IdDayTime,
  idGlobal,  IdTime;

type
  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button1: TButton;
    Calendar1: TCalendar;
    SpinButton1: TSpinButton;
    Label1: TLabel;
    Edit1: TEdit;
    IdFTP1: TIdFTP;
    Button4: TButton;
    IdDayTime1: TIdDayTime;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setISOtoDateTime(strDT: string) : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses  Masks, DateUtils, Types;

var ufs, dfs:TFormatSettings;

function extractblock(var s:string):string;
const whitespaces:set of char=[#9, #32];
var i:integer;
begin
  i:=1;
  while not (s[i] in whitespaces) do
    inc(i);
  result:=copy(s,1,i-1);
  delete(s,1,i);
  while (s<>'') and (s[1] in whitespaces) do
    delete(s,1,1);
end;

function tonumber(name:string; fs:TFormatSettings):string;
var i:integer;
begin
  i:=0;
  while (i<12) and (fs.ShortMonthNames[i+1]<>name) do
    inc(i);
  if i<12 then
    result:=inttostr(i+1)
  else
    raise exception.createfmt('Cannot find month name %s in format settings short month names.', [name]);
end;

function getfilename(line:string; var d:TDateTime):string;
var s, t:string;
begin
  s:=extractBlock(line);
  if s[1] in ['0'..'9'] then// dos format
  begin
    s:=s+' '+extractBlock(line);// got date time here
    d:=StrToDateTime(s, dfs);
    s:=extractBlock(line);// <DIR> or file size
    result:=line;// filename
  end else// // unix format
  begin
    if s[1]='d' then// dir
    else ;// file
    s:=extractBlock(line);// some number
    s:=extractBlock(line);// user
    s:=extractBlock(line);// group
    s:=extractBlock(line);// size
    if s<>'' then
      ;
    // there is a stupid bug in strtodatetime which prevents a valid datetime like
    // "Jun 8 2008 00:00" to be converted using format string "mmm d yyyy hh:nn"
    // so we change the string to use number instead of name
    s:=tonumber(extractBlock(line), ufs)+'-'+extractBlock(line)+'-';
    t:=extractBlock(line);
    if pos(':', t)>0 then s:=s+inttostr(CurrentYear)+' '+t
                     else s:=s+t+' 00:00';
    // got date time
    d:=StrToDateTime(s, ufs);
    result:=line;
  end;
end;

function downloadFtpFile(server, user, pass, path, filepattern, destination:string; ispassive:boolean):boolean;
var f:tidftp;
    l:TStringList;
    i:integer;
    m:TMask;
    d, ld:TDateTime;
    fn, s:string;
begin
  result:=false;
  f:=TIdFtp.Create(nil);
  try
    f.Host:=server;
    f.Username:=user;
    f.Password:=pass;
    f.Passive:=ispassive;
    f.Connect();
    if path<>'' then
      f.ChangeDir(path);
    l:=TStringList.Create;
    try
      f.List(l);
      m:=TMask.Create(filepattern);
      try
        ld:=0;// very old
        fn:='';// no filename found
        for i:=0 to l.count-1 do
        begin
          Form1.Memo1.Lines.Add(l[i]);
          s:=getfilename(l[i], d);
          if m.Matches(s) and (CompareDateTime(ld, d)=LessThanValue) then
            fn:=s;
        end;
      finally
        freeandnil(m);
      end;
      if fn<>'' then
      begin
        f.Get(fn, destination);
        result:=true;
      end;
    finally
      freeandnil(l);
    end;
  finally
    freeandnil(f);
  end;
end;


function TForm1.setISOtoDateTime(strDT: string) : string;
var
  // Delphi settings save vars
  ShortDF, ShortTF : string;
  TS, DS : char;
  // conversion vars
  dd, tt, ddtt: TDateTime;
begin
  // example datetime test string in ISO format
//  strDT := '2009-07-06T01:53:23Z';

  // save Delphi settings
{  DS := DateSeparator;
  TS := TimeSeparator;
  ShortDF := ShortDateFormat;
  ShortTF := ShortTimeFormat;

  // set Delphi settings for string to date/time
  DateSeparator := '-';
  ShortDateFormat := 'yyyy-mm-dd';
  TimeSeparator := ':';
  ShortTimeFormat := 'hh:mm:ss';

  // convert test string to datetime
  try

    dd := StrToDate( Copy(strDT, 1, Pos('T',strDT)-1) );
    tt := StrToTime( Copy(strDT, Pos('T',strDT)+1, 8) );
    ddtt := trunc(dd) + frac(tt);

  except
    on EConvertError do
      ShowMessage('Error in converting : ' + strDT);
  end;

  // restore Delphi settings
  DateSeparator := DS;
  ShortDateFormat := ShortDF;
  TimeSeparator := TS;
  ShortTimeFormat := ShortTF;

  // display test string
  ShowMessage ( FormatDateTime('mm/dd/yyyy hh:mm:ss', ddtt) );
  }
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  SystemTime: TSystemTime; InternetDate,
  NewTime, NewDate: string;
  TimeServers : TstringList;
  i: integer;
  UTCDateTime: string;

  function getDateinStringFromUCT(UCTDate: string) : string;
  var yy,dd,mm :string;
      tmpDate:string;
      Poss : integer;
  begin

   poss:= Pos(' ',UCTDate);
   TmpDate := Copy(UCTDate, poss + 1, 8);

   yy := '20' + Copy(TmpDate,0,2);
   mm := copy(TmpDate,4,2);
   dd := copy(TmpDate,7,2);

   Result:= yy + '/' + mm + '/' + dd;


  end;

begin
//  NewTime := '12:00:00';
//  NewDate := '06/15/2014';
//  DateTimeToSystemTime(StrToDate(NewDate) + StrToTime(NewTime), SystemTime);
// SetLocalTime(SystemTime);
  // Tell windows, that the Time changed!
//  PostMessage(HWND_BROADCAST, WM_TIMECHANGE, 0, 0); // *

    Label1.Caption := 'Web DateTaime: Unknown ';
    Label2.Caption := 'Local DateTaime: Unknown ';


//    IdDayTime1.Host := '165.193.126.229';
    IdDayTime1.Host := '160.153.0.1';
    IdDayTime1.Host := 'time.nist.gov';
//    IdDayTime1.Connect;

    Label1.Caption := 'Web DateTaime: ' + IdDayTime1.DayTimeStr;



//
// http://www.nist.gov/pml/div688/grp40/auth-ntp.cfm
//


          TimeServers := TstringList.Create;

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


          Memo1.Lines.Clear;
//          IdDayTime1.ConnectTimeout :=1000;
//          IdDayTime1.ReadTimeout :=1000;

          InternetDate:='';
          while InternetDate='' do
                begin


                   for i := 0 to timeServers.Count - 1 do
                        begin
                         Memo1.Lines.Add(timeServers[i]);
                         try
                          InternetDate := IdDayTime1.DayTimeStr;
                         except

                          Memo1.Lines.Add('Error from Server');

                         end;
                         if InternetDate ='' then
                            Memo1.Lines.Add('No Data received or timed out from this Server')
                         else
                            begin
                             Memo1.Lines.Add(InternetDate);
                             Memo1.Lines.Add(getDateinStringFromUCT(InternetDate));
                            end;
                         Memo1.Lines.Add('');
                        end;
                end;




//          .TTimeZone.Local.ToLocalTime(IdDayTime1.DayTimeStr);






    IdDayTime1.Disconnect;

    Label2.Caption := 'Local DateTaime: ' + DateTimeToStr(now);


end;

procedure TForm1.Button2Click(Sender: TObject);
var
ftp: TChilkatFtp2;
success: Integer;
unlocktext: string;

begin

ftp := TChilkatFtp2.Create(Self);

//  Any string unlocks the component for the 1st 30-days.


unlocktext:='doIt - ' + IntToStr(random(10000));

success := ftp.UnlockComponent('unlocktext');
if (success <> 1) then
  begin
    ShowMessage(ftp.LastErrorText);

  end;

ftp.Hostname  := '160.153.0.1';
ftp.Username  := 'xfactorgeo';
ftp.Password  := 'Aa1!0000';
ftp.Passive := 1;

//  Connect and login to the FTP server.
success := ftp.Connect();
if (success <> 1) then
  begin
    ShowMessage(ftp.LastErrorText);

  end;

//  ...

//  At any point in an FTP session, the IsConnected property
//  can be checked to determine if the component has remained
//  connected to the FTP server.
if (ftp.IsConnected = 1) then
  begin
    ShowMessage('Connected!');
  end
else
  begin
    ShowMessage('Not connected!');
  end;

//  ...

ftp.Disconnect();

end;

procedure TForm1.Button3Click(Sender: TObject);
var
ftp: TChilkatFtp2;
success: Integer;
fileContents: String;
remoteFilename: String;

begin
ftp := TChilkatFtp2.Create(Self);

//  Any string unlocks the component for the 1st 30-days.


success := ftp.UnlockComponent('doIt - ' + IntToStr(random(10000)));
if (success <> 1) then
  begin
    ShowMessage(ftp.LastErrorText);
    Exit;
  end;



ftp.Hostname  := '160.153.0.1';
ftp.Username  := 'xfactorgeo';
ftp.Password  := 'Aa1!0000';
ftp.Passive := 1;

//  Connect and login to the FTP server.
success := ftp.Connect();
if (success <> 1) then
  begin
    ShowMessage(ftp.LastErrorText);
    Exit;
  end;

//  Change to the remote directory where the existing file is located.
//success := ftp.ChangeRemoteDir('junk');
//if (success <> 1) then
//  begin
//    ShowMessage(ftp.LastErrorText);
//    Exit;
//  end;

//  Download the contents of the remote file into memory.

remoteFilename := 'ftptest.txt';

fileContents := ftp.GetRemoteFileTextData(remoteFilename);
if (fileContents = NULL ) then
  begin
    Memo1.Lines.Add(ftp.LastErrorText);
  end
else
  begin
    Memo1.Lines.Add(fileContents);
  end;

ftp.Disconnect();



end;

procedure TForm1.Button4Click(Sender: TObject);
var
  ftp: TIdFTP;
  strDirectory: string;
  DateTimeLocal, DateTimeFtp : TDateTime;
  checkStrings: Tstringlist;
begin
  ftp := TIdFTP.Create(nil);
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


   Label2.Caption := 'date from FTP: ' + checkStrings[0];


  except
    on e: exception do
      showMessage(e.message);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);

var server, user, pass: string;
   i: integer;
     origin : cardinal;
     IsInternet: boolean;
begin
//  assert(downloadftpfile(server, user, pass, ''{current dir}, '*_testing.zip', 'testing.zip', true {passive}));
// add all other files here with proper format and name



     if InternetGetConnectedState(@origin,0) then
        ShowMessage('InterNet --- YES')
     else
        ShowMessage('InterNet --- NO');

  ShowMessage('There are '+ IntToStr(ParamCount)+' parameters');

  // Scan for parm1, parm2 and parm3 parameters
  if FindCmdLineSwitch('abc')
  then ShowMessage('abc found')
  else ShowMessage('abc NOT found');

  if FindCmdLineSwitch('def')
  then ShowMessage('def found')
  else ShowMessage('def NOT found');

  if FindCmdLineSwitch('ghi')
  then ShowMessage('ghi found')
  else ShowMessage('ghi NOT found');



  for i := 0 to ParamCount do
    ShowMessage('Parameter '+ IntToStr(i) + ' = '+ParamStr(i));




end;

procedure TForm1.SpinButton1DownClick(Sender: TObject);
begin

      label1.Caption := IntToStr(calendar1.Month)
end;

procedure TForm1.SpinButton1UpClick(Sender: TObject);
begin

      label1.Caption := IntToStr(calendar1.Month)
end;

initialization
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, ufs);
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, dfs);

  // change these if needed

  dfs.ShortTimeFormat:='hh:nnAM/PM';
  dfs.LongTimeFormat:='hh:nnAM/PM';
  dfs.ShortDateFormat:='mm-dd-yy t';
  dfs.LongDateFormat:='mm-dd-yy t';
  dfs.DateSeparator:='-';
  dfs.TimeSeparator:=':';

  ufs.LongDateFormat:='m d yyyy t';
  ufs.ShortDateFormat:='m d yyyy t';
  ufs.ShortTimeFormat:='hh:nn';
  ufs.LongTimeFormat:='hh:nn';
  ufs.DateSeparator:='-';
end.

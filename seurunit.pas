unit seurunit;



interface

uses IdDayTime, System.Classes;


    function CheckServersDate(strDT: string) : string;
    function GetResponceFromServer(strDT: string) : string;



implementation

    function GetResponceFromServer(strDT: string) : string;
    begin

    end;



    function ConvertServerDateInString(strDT: string) : string;
    var yy,dd,mm :string;
      tmpDate:string;
      Poss : integer;
    begin

      poss:= Pos(' ',strDT);
      TmpDate := Copy(strDT, poss + 1, 8);

      yy := '20' + Copy(TmpDate,0,2);
      mm := copy(TmpDate,4,2);
      dd := copy(TmpDate,7,2);

      Result:= yy + '/' + mm + '/' + dd;
  end;


    function CheckServersDate(strDT: string) : string;
    var IdServerDayTime: TIdDayTime;
        TimeServers : TStringList;
//        InternetDate : string;
        i :integer;


    begin

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

          IdServerDayTime := TIdDayTime.Create();

          Result:='';

          for I := 0 to TimeServers.Count do
              begin

                IdServerDayTime.Host := TimeServers[i];

                   try
                    Result := IdServerDayTime.DayTimeStr;
                   except
                     Result := '';
                   end;


                if Result <> '' then
                   break;




              end;


          IdServerDayTime.Free;
          TimeServers.Free;
    end;

end.

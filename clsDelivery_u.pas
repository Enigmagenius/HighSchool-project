unit clsDelivery_u;

interface

uses SysUtils, Dialogs, Math, DateUtils;

type
Tdelivery = class (TObject)
  private
     fRecipiantName: string;
     fNumberBoxes: integer;
     fDescription: string;
     fProvince: string;
     fCity: string;
     fDistance: Real;
     fFragile: Boolean;
     fOrderDate: TDateTime;
     fCost: Real;

  public
    constructor create(sRecipientName: string; iNumberOfBoxes: integer; sDescription, sProvince, sCity: string; bFragile: boolean; dOrderDate: TDateTime);
    Function GetDeliveryCode: string;
    Procedure FindDistance;
    Function GetDistance: Real;
    function CalculateArrivalTime(Departure: TDateTime; DistanceKM: real; AvgSpeedKPH: real = 90): TDateTime;
    function GetNextMonday5PM(OrderDateTime: TDateTime): TDateTime;
    Procedure CalcCost(fuelcost: real);
    Function GetCost: real;
    Function ToString: string;


end;

implementation

{ Tdelivery }

procedure Tdelivery.CalcCost(fuelcost: real);
begin
 fCost:= (fNumberBoxes * 92.12) + fuelcost;
end;

function Tdelivery.CalculateArrivalTime(Departure: TDateTime; DistanceKM,
  AvgSpeedKPH: real): TDateTime;
var
  DriveTimeHours: Double;
  BreakCount: Integer;
  TotalMinutes: Integer;
  BreakHours: real;
  TotalHours: real;
begin

  // Calculate base drive time
  DriveTimeHours := DistanceKM / AvgSpeedKPH;

  // Calculate number of breaks (1 break every 500 km, not including final segment)
  BreakCount := Trunc(DistanceKM / 500);

  // Total break time (5 hours per break)
  BreakHours := BreakCount * 5;

  // Total time = driving + break
  TotalHours := DriveTimeHours + BreakHours;

  // Return the final arrival time
  TotalMinutes := Round(TotalHours * 60);
  Result := IncMinute(Departure, TotalMinutes);
  //Result := IncHour(Departure, Trunc(TotalHours));
  //Result := IncMinute(Result, Round(Frac(TotalHours) * 60));

end;

constructor Tdelivery.create(sRecipientName: string; iNumberOfBoxes: integer;
  sDescription, sProvince, sCity: string; bFragile: boolean; dOrderDate: TDateTime);
begin
  fRecipiantName:= sRecipientName;
  fNumberBoxes:= iNumberOfBoxes;
  fDescription:= sDescription;
  fProvince:= sProvince;
  fCity:= sCity;
  fFragile:= bFragile;
  fOrderDate:= dOrderdate;
end;


procedure Tdelivery.FindDistance;
begin
  if (fProvince = 'Eastern Cape') then
  begin
     if (fCity = 'Port Elizabeth') then
      begin
        fDistance:=  290;
      end
      else
     if (fCity = 'East London') then
      begin
        fDistance:=  0;
      end
      else
     if (fCity = 'Grahamstown (Makhanda)') then
      begin
        fDistance:=  180;
      end
      else
     if (fCity = 'King William’s Town') then
      begin
        fDistance:=  50;
      end
      else
     if (fCity = 'Queenstown') then
      begin
        fDistance:=  185;
      end
      else
     if (fCity = 'Uitenhage') then
      begin
        fDistance:=  310;
      end
      else
     if (fCity = 'Mthatha') then
      begin
        fDistance:=  230;
      end
      else
     if (fCity = 'Aliwal North') then
      begin
        fDistance:=  370;
      end
      else
     if (fCity = 'Cradock') then
      begin
        fDistance:=  400;
      end
      else
     if (fCity = 'Graaff-Reinet') then
      begin
        fDistance:=  520;
      end;
  end
  else
 if (fProvince = 'Free State') then
  begin
     if (fCity = 'Bethlehem') then
      begin
        fDistance:=  620;
      end
      else
     if (fCity = 'Bloemfontein') then
      begin
        fDistance:=  640;
      end
      else
     if (fCity = 'Welkom') then
      begin
        fDistance:=  710;
      end
      else
     if (fCity = 'Kroonstad') then
      begin
        fDistance:=  770;
      end
      else
     if (fCity = 'Sasolburg') then
      begin
        fDistance:=  850;
      end
      else
     if (fCity = 'Parys') then
      begin
        fDistance:=  810;
      end
      else
     if (fCity = 'Harrismith') then
      begin
        fDistance:=  660;
      end
      else
     if (fCity = 'Phuthaditjhaba') then
      begin
        fDistance:=  620;
      end
      else
     if (fCity = 'Virginia') then
      begin
        fDistance:=  700;
      end
      else
     if (fCity = ' Ficksburg') then
      begin
        fDistance:=  560;
      end;
  end
  else
 if (fProvince = 'Gauteng') then
  begin
     if (fCity = 'Johannesburg') then
      begin
        fDistance:=  960;
      end
      else
     if (fCity = 'Soweto') then
      begin
        fDistance:=  970;
      end
      else
     if (fCity = 'Pretoria') then
      begin
        fDistance:=  1000;
      end
      else
     if (fCity = 'Benoni') then
      begin
        fDistance:=  980;
      end
      else
     if (fCity = 'Tembisa') then
      begin
        fDistance:=  990;
      end
      else
     if (fCity = 'Vereeniging') then
      begin
        fDistance:=  940;
      end
      else
     if (fCity = 'Boksburg') then
      begin
        fDistance:=  970;
      end
      else
     if (fCity = 'Krugersdorp') then
      begin
        fDistance:=  990;
      end
      else
     if (fCity = 'Diepsloot') then
      begin
        fDistance:=  1020;
      end
      else
     if (fCity = 'Randburg') then
      begin
        fDistance:=  970;
      end;
  end
  else
 if (fProvince = 'KwaZulu-Natal') then
  begin
     if (fCity = 'Durban') then
      begin
        fDistance:=  660;
      end
      else
     if (fCity = 'Pietermaritzburg') then
      begin
        fDistance:=  620;
      end
      else
     if (fCity = 'Richards Bay') then
      begin
        fDistance:=  810;
      end
      else
     if (fCity = 'Newcastle') then
      begin
        fDistance:=  800;
      end
      else
     if (fCity = 'Empangeni') then
      begin
        fDistance:=  800;
      end
      else
     if (fCity = 'Ladysmith') then
      begin
        fDistance:=  720;
      end
      else
     if (fCity = 'Port Shepstone') then
      begin
        fDistance:=  520;
      end
      else
     if (fCity = 'Howick') then
      begin
        fDistance:=  600;
      end
      else
     if (fCity = 'Stanger (KwaDukuza)') then
      begin
        fDistance:=  720;
      end
      else
     if (fCity = 'Margate') then
      begin
        fDistance:=  500;
      end;
  end
  else
 if (fProvince = 'Limpopo') then
  begin
     if (fCity = 'Polokwane') then
      begin
        fDistance:=  1050;
      end
      else
     if (fCity = 'Lephalale (Ellisras)') then
      begin
        fDistance:=  1200;
      end
      else
     if (fCity = 'Tzaneen') then
      begin
        fDistance:=  1160;
      end
      else
     if (fCity = 'Thohoyandou') then
      begin
        fDistance:=  1300;
      end
      else
     if (fCity = 'Mokopane (Potgietersrus)') then
      begin
        fDistance:=  1060;
      end
      else
     if (fCity = 'Bela-Bela (Warmbaths)') then
      begin
        fDistance:=  1010;
      end
      else
     if (fCity = 'Modimolle (Nylstroom)') then
      begin
        fDistance:=  1040;
      end
      else
     if (fCity = 'Musina') then
      begin
        fDistance:=  1460;
      end
      else
     if (fCity = 'Phalaborwa') then
      begin
        fDistance:=  1270;
      end
      else
     if (fCity = 'Giyani') then
      begin
        fDistance:=  1220;
      end;
  end
  else
 if (fProvince = 'Mpumalanga') then
  begin
     if (fCity = 'Mbombela (Nelspruit)') then
      begin
        fDistance:=  1080;
      end
      else
     if (fCity = 'Witbank (eMalahleni)') then
      begin
        fDistance:=  930;
      end
      else
     if (fCity = 'Middelburg') then
      begin
        fDistance:=  960;
      end
      else
     if (fCity = 'Secunda') then
      begin
        fDistance:=  960;
      end
      else
     if (fCity = 'Ermelo') then
      begin
        fDistance:=  960;
      end
      else
     if (fCity = 'Lydenburg (Mashishing)') then
      begin
        fDistance:=  1090;
      end
      else
     if (fCity = 'Hazyview') then
      begin
        fDistance:=  1150;
      end
      else
     if (fCity = 'Barberton') then
      begin
        fDistance:=  1130;
      end
      else
     if (fCity = 'Bethal') then
      begin
        fDistance:=  940;
      end
      else
     if (fCity = 'Sabie') then
      begin
        fDistance:=  1120;
      end;
  end
  else
 if (fProvince = 'Northern Cape') then
  begin
     if (fCity = 'Kimberley') then
      begin
        fDistance:=  770;
      end
      else
     if (fCity = 'Upington') then
      begin
        fDistance:=  1050;
      end
      else
     if (fCity = 'Springbok') then
      begin
        fDistance:=  1400;
      end
      else
     if (fCity = 'Kuruman') then
      begin
        fDistance:=  1000;
      end
      else
     if (fCity = 'De Aar') then
      begin
        fDistance:=  630;
      end
      else
     if (fCity = 'Colesberg') then
      begin
        fDistance:=  520;
      end
      else
     if (fCity = 'Douglas') then
      begin
        fDistance:=  850;
      end
      else
     if (fCity = 'Hartswater') then
      begin
        fDistance:=  920;
      end
      else
     if (fCity = 'Prieska') then
      begin
        fDistance:=  880;
      end
      else
     if (fCity = 'Postmasburg') then
      begin
        fDistance:=  950;
      end;
  end
  else
 if (fProvince = 'North West') then
  begin
      if (fCity = 'Rustenburg') then
      begin
        fDistance:=  980;
      end
      else
     if (fCity = 'Mahikeng (Mafikeng)') then
      begin
        fDistance:=  1030;
      end
      else
     if (fCity = 'Klerksdorp') then
      begin
        fDistance:=  870;
      end
      else
     if (fCity = 'Potchefstroom') then
      begin
        fDistance:=  900;
      end
      else
     if (fCity = 'Brits') then
      begin
        fDistance:=  1020;
      end
      else
     if (fCity = 'Lichtenburg') then
      begin
        fDistance:=  990;
      end
      else
     if (fCity = 'Zeerust') then
      begin
        fDistance:=  1080;
      end
      else
     if (fCity = 'Vryburg') then
      begin
        fDistance:=  930;
      end
      else
     if (fCity = 'Hartbeespoort') then
      begin
        fDistance:=  1010;
      end
      else
     if (fCity = 'Taung') then
      begin
        fDistance:=  940;
      end;
  end
  else
 if (fProvince = 'Western Cape') then
  begin
    if (fCity = 'Cape Town') then
      begin
        fDistance:=  1020;
      end
      else
     if (fCity = 'Stellenbosch') then
      begin
        fDistance:=  1010;
      end
      else
     if (fCity = 'George') then
      begin
        fDistance:=  660;
      end
      else
     if (fCity = 'Paarl') then
      begin
        fDistance:=  980;
      end
      else
     if (fCity = 'Mossel Bay') then
      begin
        fDistance:=  640;
      end
      else
     if (fCity = 'Knysna') then
      begin
        fDistance:=  570;
      end
      else
     if (fCity = 'Worcester') then
      begin
        fDistance:=  940;
      end
      else
     if (fCity = 'Hermanus') then
      begin
        fDistance:=  1030;
      end
      else
     if (fCity = 'Beaufort West') then
      begin
        fDistance:=  710;
      end
      else
     if (fCity = 'Oudtshoorn') then
      begin
        fDistance:=  640;
      end;
  end;
end;

function Tdelivery.GetCost: real;
begin
  Result:= fCost;
end;

function Tdelivery.GetDeliveryCode: string;
var sProv: string;
begin
 if (fProvince = 'Eastern Cape') then
  begin
    sProv:= 'EST';
  end
  else
 if (fProvince = 'Free State') then
  begin
    sProv:= 'FS';
  end
  else
 if (fProvince = 'Gauteng') then
  begin
    sProv:= 'GU';
  end
  else
 if (fProvince = 'KwaZulu-Natal') then
  begin
    sProv:= 'KWZ';
  end
  else
 if (fProvince = 'Limpopo') then
  begin
    sProv:= 'LMP';
  end
  else
 if (fProvince = 'Mpumalanga') then
  begin
    sProv:= 'MPL';
  end
  else
 if (fProvince = 'Northern Cape') then
  begin
    sProv:= 'NRC';
  end
  else
 if (fProvince = 'North West') then
  begin
    sProv:= 'NRW';
  end
  else
 if (fProvince = 'Western Cape') then
  begin
    sProv:= 'WST';
  end;


 Result:=  Copy(fRecipiantName,1,3)+'#'+ inttostr(RandomRange(1,999))+ sProv;;
end;

function Tdelivery.GetDistance: Real;
begin
  Result:= fDistance;
end;

function Tdelivery.GetNextMonday5PM(OrderDateTime: TDateTime): TDateTime;
var
  Today: TDateTime;
  DaysUntilMonday: Integer;
  MondayDate: TDateTime;
  Monday5PM: TDateTime;
begin
  Today := Trunc(OrderDateTime); // Strip time, keep only date
  DaysUntilMonday := 2 - DayOfWeek(Today); // 2 = Monday

  if DaysUntilMonday < 0 then
    DaysUntilMonday := DaysUntilMonday + 7;

  // Tentative Friday date
  MondayDate := Today + DaysUntilMonday;

  // Set Friday 2 PM
Monday5PM := MondayDate + EncodeTime(17, 0, 0, 0);

  // If today is Friday and current time >= 2 PM, move to next Friday
  if (DayOfWeek(Today) = 2) and (OrderDateTime >= Monday5PM) then
    Monday5PM := Monday5PM + 7; // add 7 days

  // Business day enforcement: if the resulting date is Saturday or Sunday, move to next Monday
  while (DayOfWeek(Monday5PM) = 1) or (DayOfWeek(Monday5PM) = 7) do
    Monday5PM := Trunc(Monday5PM) + 1 + EncodeTime(17, 0, 0, 0); // Next day at 5 PM

                                                        //Route
                                                       //Weekends
                                                       //Delievery Textfile
  Result := Monday5PM;


end;

function Tdelivery.ToString: string;
begin
 Result:=  'Description'+ #13 +
  '----------------------------------' + #13 +
 'Name: '+ fRecipiantName + #13 +
 'Delivery Code: '+ GetDeliveryCode + #13 +'Boxes: '+ IntToStr(fNumberBoxes) + #13 +
 'Description: ' + fDescription + #13 + 'Order Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',fOrderDate) + #13 +
 'Location: ' + fProvince + ', ' + fCity + #13 +
 'Shipment Date: ' + FormatDateTime('dd/mm/yyyy hh:nn',GetNextMonday5PM(Date)) + #13 +
 'Delivery Date: ' + FormatDateTime('dd/mm/yyyy hh:nn',CalculateArrivalTime(GetNextMonday5PM(Date),fDistance,90))+ #13 +
 'Cost: ' + FloatToStrF(fCost,ffCurrency,8,2) ;
end;

end.

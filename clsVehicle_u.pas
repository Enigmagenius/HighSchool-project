unit clsVehicle_u;

interface

uses SysUtils, Dialogs, Math, DateUtils;

type
 // Base Class
  TVehicle = class(TObject)
  private
    fName: string;
    fMake: string;
    fModel: string;
    fFuelType: string;
    fPurchaseDate: TDate;
  public
    constructor Create(bName, bMake, bModel, bFuelType: string; bPurchaseDate: TDate);
    function CalcPrice: real; virtual;
    function GetTruckCode: string; virtual;
    function MaxCapacity: integer; virtual;
    function FuelConsRate: Real; virtual;
    function Services: integer; virtual;
    function ToString: string; virtual;
  end;

  // Derived Class - Truck
  TTruck = class(TVehicle)
  private
    fHasTrailer: Boolean;
  public
    constructor Create(bName, bMake, bModel, bFuelType: string; bPurchaseDate: TDate; hasTrailer: Boolean);
    function CalcPrice: real; override;
    function MaxCapacity: integer; override;
    function FuelConsRate: Real; override;
    function Services: integer; override;
    function ToString: string; override;
  end;

  // Small Delivery Truck
  TSmallTruck = class(TTruck)
  public
    function CalcPrice: real; override;
    function GetTruckCode: string; override;
    function MaxCapacity: integer; override;
    function FuelConsRate: Real; override;
    function ToString: string; override;
  end;

  // Medium Delivery Truck
  TMediumTruck = class(TTruck)
  public
    function CalcPrice: real; override;
    function GetTruckCode: string; override;
    function MaxCapacity: integer; override;
    function FuelConsRate: Real; override;
    function ToString: string; override;
  end;

  // Large Delivery Truck
  TLargeTruck = class(TTruck)
  public
    function CalcPrice: real; override;
    function GetTruckCode: string; override;
    function MaxCapacity: integer; override;
    function FuelConsRate: Real; override;
    function ToString: string; override;
  end;

  // Passenger Bus
  TBus = class(TVehicle)
  private
    fSeatingCapacity: Integer;
  public
    constructor Create(bName, bMake, bModel, bFuelType: string; bPurchaseDate: TDate; seats: Integer);
    function CalcPrice: real; override;
    function MaxCapacity: integer; override;
    function FuelConsRate: Real; override;
    function ToString: string; override;
  end;

  // Utility Van
  TVan = class(TVehicle)
  public
    function CalcPrice: real; override;
    function MaxCapacity: integer; override;
    function FuelConsRate: Real; override;
    function ToString: string; override;
  end;
implementation

{ TVehicle }

function TVehicle.CalcPrice: real;
begin
  Result := 0.00;
end;

constructor TVehicle.Create(bName, bMake, bModel, bFuelType: string; bPurchaseDate: TDate);
begin
  fName := bName;
  fMake := bMake;
  fModel := bModel;
  fFuelType := bFuelType;
  fPurchaseDate := bPurchaseDate;
end;

function TVehicle.MaxCapacity: integer;
begin
  Result := 0;
end;

function TVehicle.FuelConsRate: Real;
begin
  Result := 0.0;
end;

function TVehicle.Services: integer;
begin
  Result := 1;
end;

function TVehicle.ToString: string;
begin
  Result := 'Vehicle Name: '+ fName + #13 +
  'Make: ' + fMake + #13 +
  'Model: ' + fModel + #13 +
  'Fuel Type: ' + fFuelType + #13 +
  'Purchase Date: ' + DateToStr(fPurchaseDate);
end;

function TVehicle.GetTruckCode: string;
const
  // Allowed characters: uppercase letters and digits
  Chars = '0123456789';
var
  i: Integer;
begin
  Randomize;

  Result:= 'ARTR';

  for i := 1 to 5 do
  begin
    // Add a random character from the Chars string to the result
    Result := Result + Chars[Random(Length(Chars)) + 1];
  end;
end;

///////////////////////////////////////////////////////////////////////////////////
{ TTruck }

function TTruck.CalcPrice: real;
begin
Result:= 1500000.00;
if (fHasTrailer = True) then
  Result:= Result + 3000.00
else
  Result:= Result;

end;

constructor TTruck.Create(bName, bMake, bModel, bFuelType: string; bPurchaseDate: TDate; hasTrailer: Boolean);
begin
  inherited Create(bName, bMake, bModel, bFuelType, bPurchaseDate);
  fHasTrailer := hasTrailer;
end;

function TTruck.MaxCapacity: integer;
begin
  if (fHasTrailer = true) then
    begin
      Result := 25000 + 1000;
    end
    else
      Result := 25000;
end;

function TTruck.FuelConsRate: Real;
begin
  Result := 7.5;
end;

function TTruck.Services: integer;
begin
  Result := 2;
end;

function TTruck.ToString: string;
begin
  Result := inherited ToString + #13 +'Trailer ' + BoolToStr(fHasTrailer) + #13 + ' [Truck]';
end;

{ TSmallTruck }

function TSmallTruck.MaxCapacity: integer;
begin
    if (fHasTrailer = true) then
    begin
      Result := 3000 + 1000;
    end
    else
      Result := 3000; // in kg
end;

function TSmallTruck.CalcPrice: real;
begin
  if (fMake = 'Isuzu N-Series') then
    Result:= 700000
  else if (fMake = 'Mercedes-Benz') then
    Result:= 900000
  else if (fMake = 'Hino') then
    Result:= 600000;

  if (fFuelType = 'Dissel') then
    Result:= Result + 10000
  else if (fFuelType = 'Fuel') then
    Result:= Result + 15000
  else if (fFuelType = 'Hydro') then
    Result:= Result + 15000;

  if (fHasTrailer = True) then
    Result:= Result + 20000
  else 
    Result:= Result;
    
        
end;

function TSmallTruck.FuelConsRate: Real;
begin
  Result := 4.5;
end;

function TSmallTruck.GetTruckCode: string;
const
  // Allowed characters: uppercase letters and digits
  Chars = '0123456789';
var
  i: Integer;
begin
  Randomize;

  Result:= 'SMTR';

  for i := 1 to 5 do
  begin
    // Add a random character from the Chars string to the result
    Result := Result + Chars[Random(Length(Chars)) + 1];
  end;
end;

function TSmallTruck.ToString: string;
begin
  Result := inherited ToString + #13 + ' [Small Delivery Truck]';
end;

{ TMediumTruck }

function TMediumTruck.MaxCapacity: integer;
begin
  if (fHasTrailer = true) then
    begin
      Result := 8000 + 1000;
    end
    else
      Result := 8000;
end;

function TMediumTruck.GetTruckCode: string;
const
  // Allowed characters: uppercase letters and digits
  Chars = '0123456789';
var
  i: Integer;
begin
  Randomize;

  Result:= 'METR';

  for i := 1 to 5 do
  begin
    // Add a random character from the Chars string to the result
    Result := Result + Chars[Random(Length(Chars)) + 1];
  end;
end;

function TMediumTruck.CalcPrice: real;
begin
  if (fMake = 'Isuzu N-Series') then
    Result:= 900000
  else if (fMake = 'Mercedes-Benz') then
    Result:= 1100000
  else if (fMake = 'Volvo') then
    Result:= 850000;

  if (fFuelType = 'Dissel') then
    Result:= Result + 10000
  else if (fFuelType = 'Fuel') then
    Result:= Result + 15000
  else if (fFuelType = 'Hydro') then
    Result:= Result + 15000;

  if (fHasTrailer = True) then
    Result:= Result + 20000
  else 
    Result:= Result;

end;

function TMediumTruck.FuelConsRate: Real;
begin
  Result := 6.0;
end;

function TMediumTruck.ToString: string;
begin
  Result := inherited ToString + #13 +' [Medium Delivery Truck]';
end;

{ TLargeTruck }

function TLargeTruck.MaxCapacity: integer;
begin
  Result := 15000;
end;

function TLargeTruck.GetTruckCode: string;
const
  // Allowed characters: uppercase letters and digits
  Chars = '0123456789';
var
  i: Integer;
begin
  Randomize;

  Result:= 'LATR';

  for i := 1 to 5 do
  begin
    // Add a random character from the Chars string to the result
    Result := Result + Chars[Random(Length(Chars)) + 1];
  end;
end;

function TLargeTruck.CalcPrice: real;
begin
  if (fMake = 'Mercedes-Benz') then
    Result:= 1100000
  else if (fMake = 'Scania') then
    Result:= 760000
  else if (fMake = 'Volvo') then
    Result:= 1050000;

  if (fFuelType = 'Dissel') then
    Result:= Result + 10000
  else if (fFuelType = 'Fuel') then
    Result:= Result + 15000
  else if (fFuelType = 'Hydro') then
    Result:= Result + 15000;

  if (fHasTrailer = True) then
    Result:= Result + 20000
  else 
    Result:= Result;
end;

function TLargeTruck.FuelConsRate: Real;
begin
  Result := 8.5;
end;

function TLargeTruck.ToString: string;
begin
  Result := inherited ToString + ' [Large Delivery Truck]';
end;

////////////////////////////////////////////////////////////////////////////

{ TBus }

function TBus.CalcPrice: real;
begin
  if (fMake = 'Ford') then
    Result:= 650000
  else if (fMake = 'Mercedes-Benz') then
    Result:= 910000
  else if (fMake = 'Toyota') then
    Result:= 500000;

  if (fFuelType = 'Dissel') then
    Result:= Result + 10000
  else if (fFuelType = 'Fuel') then
    Result:= Result + 15000
  else if (fFuelType = 'Hydro') then
    Result:= Result + 15000;

  Result:= Result + (fSeatingCapacity * 100)
end;

constructor TBus.Create(bName, bMake, bModel, bFuelType: string; bPurchaseDate: TDate; seats: Integer);
begin
  inherited Create(bName, bMake, bModel, bFuelType, bPurchaseDate);
  fSeatingCapacity := seats;
end;

function TBus.MaxCapacity: integer;
begin
  Result := fSeatingCapacity;
end;

function TBus.FuelConsRate: Real;
begin
  Result := 12.0; // Assume buses consume more fuel
end;

function TBus.ToString: string;
begin
  Result := inherited ToString + Format(' [Bus: %d seats]', [fSeatingCapacity]);
end;

{ TVan }

function TVan.MaxCapacity: integer;
begin
  Result := 1200; // in kg
end;

function TVan.CalcPrice: real;
begin
  if (fMake = 'Mercedes-Benz') then
    Result:= 790000
  else if (fMake = 'MAN') then
    Result:= 840000
  else if (fMake = 'Scania') then
    Result:= 520000;

  if (fFuelType = 'Dissel') then
    Result:= Result + 10000
  else if (fFuelType = 'Fuel') then
    Result:= Result + 15000
  else if (fFuelType = 'Hydro') then
    Result:= Result + 15000;
end;

function TVan.FuelConsRate: Real;
begin
  Result := 5.5;
end;

function TVan.ToString: string;
begin
  Result := inherited ToString + ' [Utility Van]';
end;
end.

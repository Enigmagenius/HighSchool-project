unit Database_u;

interface

uses
  SysUtils, Classes, DB, ADODB;  // Add ADODB and DB

type
  TdmTriWay = class(TDataModule)
    conTriWayDatabase: TADOConnection;
    qryUsers: TADOQuery;
    qryDriver: TADOQuery;
    qryAdmin: TADOQuery;
    dscUsers: TDataSource;
    dscDriver: TDataSource;
    dscDeliveries: TDataSource;
    dscAdmin: TDataSource;
    qryDeliveries: TADOQuery;
    qryVehicles: TADOQuery;
    dscVehicles: TDataSource;
    procedure DataModuleSetUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    conData:  TADOConnection;  //Connect to database

    // Connect to table in DB
    tblUsers: TADOTable;
    tblDriver: TADOTable;
    tblDeliveries: TADOTable;
    tblAdmin: TADOTable;
    tblVehicles: TADOTable;
  end;

var
  dmTriWay: TdmTriWay;

implementation

{$R *.dfm}

procedure TdmTriWay.DataModuleSetUp(Sender: TObject);
begin
  // Creating Objects
  conData:= TADOConnection.Create( dmTriWay );
  tblUsers:= TADOTable.Create( dmTriWay );
  tblDriver:= TADOTable.Create( dmTriWay );
  tblDeliveries:= TADOTable.Create( dmTriWay );
  tblAdmin:= TADOTable.Create( dmTriWay );
  tblVehicles:= TADOTable.Create( dmTriWay );

  //Set up connection
  conData.ConnectionString:= 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=TriWay Transport.mdb;Mode=ReadWrite;Persist Security Info=False';
  conData.LoginPrompt:= False;
  conData.Open;

  // Setup tables
  tblUsers.Connection:= conData;
  tblUsers.TableName:= 'tblUsers';
  tblUsers.Open;

  tblDriver.Connection:= conData;
  tblDriver.TableName:= 'tblDriver';
  tblDriver.Open;

  tblDeliveries.Connection:= conData;
  tblDeliveries.TableName:= 'tblDeliveries';
  tblDeliveries.Open;

  tblAdmin.Connection:= conData;
  tblAdmin.TableName:= 'tblAdmin';
  tblAdmin.Open;

  tblVehicles.Connection:= conData;
  tblVehicles.TableName:= 'tblVehicles';
  tblVehicles.Open;
end;

end.

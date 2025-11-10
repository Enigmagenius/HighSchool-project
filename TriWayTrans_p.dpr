program TriWayTrans_p;

uses
  Forms,
  TriWayTrans_u in 'TriWayTrans_u.pas' {frmTriWayTransM},
  Database_u in 'Database_u.pas' {dmTriWay: TDataModule},
  clsDelivery_u in 'clsDelivery_u.pas',
  clsVehicle_u in 'clsVehicle_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTriWayTransM, frmTriWayTransM);
  Application.CreateForm(TdmTriWay, dmTriWay);
  Application.Run;
end.

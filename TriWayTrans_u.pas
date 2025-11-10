{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR OFF}
{$WARN CVT_WIDENING_STRING_LOST OFF}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit TriWayTrans_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, jpeg, Menus,Math, DateUtils, Database_u, clsDelivery_u,
  Spin, Buttons, Grids, DBGrids, ShellAPI, CheckLst, pngimage, DBCtrls, clsVehicle_u;

type
  TfrmTriWayTransM = class(TForm)
    pgclMain: TPageControl;
    tbshtLogin: TTabSheet;
    tbshtRegister: TTabSheet;
    tbshtMainPage: TTabSheet;
    imgLogBackground: TImage;
    pnlLogin: TPanel;
    edtLogID: TEdit;
    edtLogPass: TEdit;
    imgVisible: TImage;
    lblLogID: TLabel;
    lblLogPass: TLabel;
    btnLogin: TButton;
    lblRegisteGo: TLabel;
    popmNavigate: TPopupMenu;
    ExitProgram1: TMenuItem;
    SignOut1: TMenuItem;
    lblLogHead: TLabel;
    tbshtHelp: TTabSheet;
    btnDriverLogin: TButton;
    btnAdminLogin: TButton;
    tbshtDriver: TTabSheet;
    tbshtAdmin: TTabSheet;
    imgRegBackground: TImage;
    pnlRegister: TPanel;
    edtRegName: TEdit;
    lblRegName: TLabel;
    lblRegSurn: TLabel;
    edtRegSurn: TEdit;
    dtpRegDTB: TDateTimePicker;
    lblRegDTB: TLabel;
    edtRegEmail: TEdit;
    lblRegEmail: TLabel;
    cmbxAccess: TComboBox;
    btnRegister: TButton;
    lblRegHead: TLabel;
    lblHeadHelp: TLabel;
    pnlForgotID: TPanel;
    edtFEmail: TEdit;
    lblFIDHead: TLabel;
    lblFEmail: TLabel;
    edtFPass: TEdit;
    lblFPass: TLabel;
    cmbxFAccessID: TComboBox;
    btnFindID: TButton;
    pnlDisplayFID: TPanel;
    pnlForgotPass: TPanel;
    lblFPassHead: TLabel;
    edtFIDpass: TEdit;
    lblFIDpass: TLabel;
    cmbxFAcessPass: TComboBox;
    btnFindPass: TButton;
    pnlDisplayFPass: TPanel;
    pnlContactAdmin: TPanel;
    lblContactAdmin: TLabel;
    cmbxAdminType: TComboBox;
    redDisplayAdContactDetails: TRichEdit;
    redAdDiscrip: TRichEdit;
    imgmainBackground: TImage;
    pnlMainHead: TPanel;
    pnlNewDelivery: TPanel;
    sedNBoxes: TSpinEdit;
    lblNewDeliveries: TLabel;
    lblNumberBoxes: TLabel;
    memDescription: TMemo;
    lblDescriptionItems: TLabel;
    cmbxProvince: TComboBox;
    lblProvince: TLabel;
    cmbxCity: TComboBox;
    chbxFragile: TCheckBox;
    lblCity: TLabel;
    btnNewDelivery: TButton;
    redRecipt: TRichEdit;
    pnlMainNavigation: TPanel;
    edtRecipientName: TEdit;
    lblRecipientName: TLabel;
    bitbtnRegBack: TBitBtn;
    bitbtnLogExit: TBitBtn;
    bitbtnHelp_Back: TBitBtn;
    bitbtnMainLogOut: TBitBtn;
    redDisplayDeliveryInfo: TRichEdit;
    tbshtTrack: TTabSheet;
    tbshtProfile: TTabSheet;
    bitbtnMainHelp: TBitBtn;
    btnMainGoToProfile: TButton;
    btnGoToTrack: TButton;
    tbshtRoster: TTabSheet;
    tbshtTruckManagement: TTabSheet;
    pnlDisplayMainUser: TPanel;
    lblMainDispayID: TLabel;
    lblDisplayMainDate: TLabel;
    dbgDeliveriesDis: TDBGrid;
    pnlDeliveries_Management: TPanel;
    btnDisplayDeliveries: TButton;
    btnWork_Roster: TButton;
    pnlDriverTop: TPanel;
    pnlDriverID: TPanel;
    lblDriverDisplayID: TLabel;
    btnDriversTotalD: TButton;
    btnDriverToProfile: TButton;
    bitbtnDriverHelp: TBitBtn;
    btnCompletedDeliveries: TButton;
    lblDriverDate: TLabel;
    btnPayment: TButton;
    imgTrackBackground: TImage;
    pnlTrackTop: TPanel;
    pnlTrack: TPanel;
    redDeliverySummary: TRichEdit;
    edtDeliveryCode: TEdit;
    btnDeliveryStatus: TButton;
    bitbtnBack: TBitBtn;
    tmrCountDown: TTimer;
    lblCountDown: TLabel;
    pnlTimer: TPanel;
    lstDeliveryCodes: TListBox;
    lblCodeHaeder: TLabel;
    pbCountDown: TProgressBar;
    btnCancelDelivery: TButton;
    pnlProgress: TPanel;
    pnlProfile: TPanel;
    pnlprofile_info: TPanel;
    lblprofile_username: TLabel;
    lblprofile_email: TLabel;
    lblprofile_dateofbirth: TLabel;
    lblprofile: TLabel;
    btnCurrent_Deliveries: TButton;
    cmbxDeliver_Province: TComboBox;
    btnDamaged_Delivery: TButton;
    lblprofile_edtName: TLabel;
    edtprofile_edtName: TEdit;
    edtprofile_edtSurname: TEdit;
    edtprofile_edtEmail: TEdit;
    dtpprofile_edtDateofBirth: TDateTimePicker;
    lblprofile_admin_job: TLabel;
    lblprofile_edtSurname: TLabel;
    lblprofile_edtDateofBirth: TLabel;
    lblprofile_edtEmail: TLabel;
    btnEdit_Profile: TButton;
    btnChange_password: TButton;
    pnlEdit_Delivery: TPanel;
    chkEdit_Delivery: TCheckBox;
    edtEdit_tRecipiantName: TEdit;
    mem_EditDescription: TMemo;
    chkEdit_Fragile: TCheckBox;
    btnEdit_Delivery_info: TButton;
    imgLogo: TImage;
    btnDelete_Profile: TButton;
    bitbtnBack_Profile: TBitBtn;
    lblprofile_TruckID: TLabel;
    sgRoster: TStringGrid;
    btnAssignDeliveries: TButton;
    dbgDriverDis: TDBGrid;
    btnDisplay_Drivers: TButton;
    bitbtnLogout_Drivers: TBitBtn;
    pnlTrucks: TPanel;
    pnlAssign: TPanel;
    redAssignments: TRichEdit;
    lblRoster: TLabel;
    bitbtnBack_Roster: TBitBtn;
    pnlAdmin: TPanel;
    pnlAdmin_info: TPanel;
    lblAdminID_Display: TLabel;
    lblAdminDate: TLabel;
    pnlAd_Drivers: TPanel;
    lblAd_Drivers_head: TLabel;
    pnlAd_Users: TPanel;
    dbgUsersDis: TDBGrid;
    lblAd_Users_Head: TLabel;
    dbnDrivers: TDBNavigator;
    btnDisplay_Users: TButton;
    redFinance: TRichEdit;
    btnFinancial_Report: TButton;
    dbnUsers: TDBNavigator;
    pnlFinance: TPanel;
    btnReceipts: TButton;
    btnCancellations: TButton;
    bitbtnAD_LogOut: TBitBtn;
    btnAd_Vehicles: TButton;
    btnAd_Profile: TButton;
    btnDriver_Roster: TButton;
    rdgpAdmin: TRadioGroup;
    bitbtnLogHelp: TBitBtn;
    btnDR_Total_Deliveries: TButton;
    bitbtnAd_Help: TBitBtn;
    bitbtnRegister_Help: TBitBtn;
    btnTotal_Users_Deliveries: TButton;
    pnlAd_Deliveries: TPanel;
    dbgDeliveries_Ad: TDBGrid;
    dbnDeliveries: TDBNavigator;
    btnAd_Disp_Deliveries: TButton;
    btnAd_Total_Deliveries: TButton;
    lblAd_Deliveries_Head: TLabel;
    btnPending_Deliveries: TButton;
    pnlAssign_Deliveries: TPanel;
    pnlAd_Notes: TPanel;
    lstNotes: TListBox;
    redNotes: TRichEdit;
    lblNotes_Head: TLabel;
    btnWrite_Notes: TButton;
    bitbtnApprove_Note: TBitBtn;
    pnlDisplay_Trucks: TPanel;
    dbgTrucks: TDBGrid;
    pnlNew_Truck: TPanel;
    bitbtnHelp_Edit: TBitBtn;
    cmbxVehicle_Make: TComboBox;
    cmbxVehicle_Model: TComboBox;
    rgpVehicles: TRadioGroup;
    edtVehicle_Name: TEdit;
    cmbxFuel_Type: TComboBox;
    chkHasTrailer: TCheckBox;
    sedSeatingCapacity: TSpinEdit;
    btnNew_Vehicles: TButton;
    lblVehicle_Head: TLabel;
    btnDisplay_Vehicles: TButton;
    rdgEditProfile: TRadioGroup;
    memEditInfo: TMemo;
    lblNewVehicles: TLabel;
    imgVehicles: TImage;
    btnWeek_Roster: TButton;
    lblchange_recipient: TLabel;
    lblchang_description: TLabel;
    pnlDriver_Index: TPanel;
    lblDriverIndex: TLabel;
    lblTotal_Deliveries: TLabel;
    lblDeliveries_Due: TLabel;
    lblCompleted_Deliveries: TLabel;
    lblDeliveries_province: TLabel;
    lblDamaged_deliveries: TLabel;
    btnAssign_Vehicles: TButton;
    btnSell_Vehicles: TButton;
    bitbtnAccept_Edit: TBitBtn;
    bitbtnEdit_Delivery: TBitBtn;
    bitbtnCancel_Delivery: TBitBtn;
    bitbtnConfirm_Delivery: TBitBtn;
    bitbtnCheck_Edit: TBitBtn;
    bitbtnCancel_Edit: TBitBtn;
    pnlAssign_Vehicles: TPanel;
    lblAssign_Vehicles: TLabel;
    lstDrivers_N_Vehicles: TListBox;
    lblDriver_Assign: TLabel;
    redAssign_Info: TRichEdit;
    lstVehicles_N_Drivers: TListBox;
    lblAssign_Vehicles_Un: TLabel;
    edtDriver_Assign: TEdit;
    lblDriver_Assign_Vehicles: TLabel;
    edtVehicles_Assign: TEdit;
    lblAssign_Vehicles_Drivers: TLabel;
    btnAssign_Vehicle: TButton;
    bitbtnClose_Assign_Vehicles: TBitBtn;
    pnlDriver_Vehicles: TPanel;
    bitbtnBack_Vehicles: TBitBtn;
    lblFragile: TLabel;
    lblVehicleID_Drivers: TLabel;
    pnlSell_Vehicles: TPanel;
    lblSell_Vehicles_Head: TLabel;
    lstSell_Vehicles: TListBox;
    redSell_Vehicles_Info: TRichEdit;
    btnSell_Vehicle: TButton;
    lblVehicles_Sell: TLabel;
    bitbtnClose_Sell_Vehicles: TBitBtn;
    lstCompanies: TListBox;
    lblCompany_offers: TLabel;
    redOffers_Display: TRichEdit;
    bitbtnClose_Note: TBitBtn;
    lblRoster_View: TLabel;
    procedure imgVisibleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgVisibleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure lblRegisteGoClick(Sender: TObject);
    procedure ExitProgram1Click(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnDriverLoginClick(Sender: TObject);
    procedure btnAdminLoginClick(Sender: TObject);
    procedure cmbxAdminTypeChange(Sender: TObject);
    procedure cmbxProvinceChange(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure bitbtnLogExitClick(Sender: TObject);
    procedure bitbtnRegBackClick(Sender: TObject);
    procedure btnFindIDClick(Sender: TObject);
    procedure btnFindPassClick(Sender: TObject);
    procedure btnDisplayDeliveriesClick(Sender: TObject);
    procedure btnNewDeliveryClick(Sender: TObject);
    procedure btnGoToTrackClick(Sender: TObject);
    procedure btnDeliveryStatusClick(Sender: TObject);
    procedure bitbtnBackClick(Sender: TObject);
    procedure bitbtnMainLogOutClick(Sender: TObject);
    procedure tmrCountDownTimer(Sender: TObject);
    procedure lstDeliveryCodesClick(Sender: TObject);
    procedure btnCancelDeliveryClick(Sender: TObject);
    procedure bitbtnMainHelpClick(Sender: TObject);
    procedure btnDriversTotalDClick(Sender: TObject);
    procedure btnPaymentClick(Sender: TObject);
    procedure btnMainGoToProfileClick(Sender: TObject);
    procedure btnCompletedDeliveriesClick(Sender: TObject);
    procedure btnCurrent_DeliveriesClick(Sender: TObject);
    procedure cmbxDeliver_ProvinceChange(Sender: TObject);
    procedure btnDamaged_DeliveryClick(Sender: TObject);
    procedure btnDelivery_thisWeekClick(Sender: TObject);
    procedure bitbtnDriverHelpClick(Sender: TObject);
    procedure btnDriverToProfileClick(Sender: TObject);
    procedure chkEdit_DeliveryClick(Sender: TObject);
    procedure btnWork_RosterClick(Sender: TObject);
    procedure edtRecipientNameClick(Sender: TObject);
    procedure btnAssignDeliveriesClick(Sender: TObject);
    procedure btnDisplay_DriversClick(Sender: TObject);
    procedure btnEdit_Delivery_infoClick(Sender: TObject);
    procedure bitbtnHelp_BackClick(Sender: TObject);
    procedure bitbtnLogout_DriversClick(Sender: TObject);
    procedure bitbtnBack_ProfileClick(Sender: TObject);
    procedure bitbtnBack_RosterClick(Sender: TObject);
    procedure btnDisplay_UsersClick(Sender: TObject);
    procedure bitbtnAD_LogOutClick(Sender: TObject);
    procedure btnReceiptsClick(Sender: TObject);
    procedure btnCancellationsClick(Sender: TObject);
    procedure btnFinancial_ReportClick(Sender: TObject);
    procedure rdgpAdminClick(Sender: TObject);
    procedure btnAd_ProfileClick(Sender: TObject);
    procedure btnAd_VehiclesClick(Sender: TObject);
    procedure btnDriver_RosterClick(Sender: TObject);
    procedure btnAdd_UserClick(Sender: TObject);
    procedure btnEdit_UserClick(Sender: TObject);
    procedure btnDR_Total_DeliveriesClick(Sender: TObject);
    procedure bitbtnLogHelpClick(Sender: TObject);
    procedure bitbtnRegister_HelpClick(Sender: TObject);
    procedure btnTotal_Users_DeliveriesClick(Sender: TObject);
    procedure btnBest_DriverClick(Sender: TObject);
    procedure bitbtnAd_HelpClick(Sender: TObject);
    procedure btnAd_Disp_DeliveriesClick(Sender: TObject);
    procedure btnAd_Total_DeliveriesClick(Sender: TObject);
    procedure btnTotal_SalesClick(Sender: TObject);
    procedure btnPending_DeliveriesClick(Sender: TObject);
    procedure btnWrite_NotesClick(Sender: TObject);
    procedure bitbtnHelp_EditClick(Sender: TObject);
    procedure cmbxVehicle_MakeChange(Sender: TObject);
    procedure btnNew_VehiclesClick(Sender: TObject);
    procedure btnEdit_ProfileClick(Sender: TObject);
    procedure chkListEditClick(Sender: TObject);
    procedure rdgEditProfileClick(Sender: TObject);
    procedure btnChange_passwordClick(Sender: TObject);
    procedure bitbtnApprove_NoteClick(Sender: TObject);
    procedure btnDisplay_VehiclesClick(Sender: TObject);
    procedure rgpVehiclesClick(Sender: TObject);
    procedure btnWeek_RosterClick(Sender: TObject);
    procedure bitbtnConfirm_DeliveryClick(Sender: TObject);
    procedure bitbtnEdit_DeliveryClick(Sender: TObject);
    procedure bitbtnCheck_EditClick(Sender: TObject);
    procedure bitbtnAccept_EditClick(Sender: TObject);
    procedure bitbtnCancel_EditClick(Sender: TObject);
    procedure bitbtnCancel_DeliveryClick(Sender: TObject);
    procedure btnAssign_VehiclesClick(Sender: TObject);
    procedure btnAssign_VehicleClick(Sender: TObject);
    procedure bitbtnClose_Assign_VehiclesClick(Sender: TObject);
    procedure lstDrivers_N_VehiclesClick(Sender: TObject);
    procedure bitbtnBack_VehiclesClick(Sender: TObject);
    procedure lstVehicles_N_DriversClick(Sender: TObject);
    procedure btnSell_VehiclesClick(Sender: TObject);
    procedure lstSell_VehiclesClick(Sender: TObject);
    procedure bitbtnClose_Sell_VehiclesClick(Sender: TObject);
    procedure lstCompaniesClick(Sender: TObject);
    procedure btnSell_VehicleClick(Sender: TObject);
    procedure lstNotesClick(Sender: TObject);
    procedure bitbtnClose_NoteClick(Sender: TObject);
  private
    { Private declarations }
    const
    DaysInWeek = 7; // Sunday to Saturday

    arrCompanies: array[0..7] of string = ('DENSONS FIX','CARK $ BEN','East Side','THE GREAT FIX', 'Jordens Vehicles','AUCTION HOUSE','TRI RESAIL','HEAVy Duty');

    arrPrices: array[0..7, 0..5] of Integer =(
    (150000,400000,500000,800000,1000000,2000000),
    (450000,300000,200000,700000,2500000,900000),
    (440000,570000,200000,500000,1300000,700000),
    (450000,3100000,200000,500000,300000,890000),
    (4550000,700000,200000,600000,600000,673000),
    (550000,2100000,200000,400000,750000,568000),
    (460000,500000,200000,3300000,5000000,970000),
    (470000,600000,200000,4300000,5600000,120000)
    );

    type
    TRosterArray = array[1..DaysInWeek, 1..100] of string; // [Day][DeliveryIndex]
    var
    Roster: TRosterArray;
    Deliveries: array of string;   //To collect Unasigned Deliveys
    Drivers: array of string;      //To collect Drivers


  public
    { Public declarations }
    var sUserID,sName,sSurn,sDriver,sAd, sGEmail, sDeliveryCode: string;
    birthDate: TDate;
    TargetDateTime: TDateTime;
    TotalDeliverySeconds, UseVal: Integer;
    rDeliveryCost: real;

    EN,ES,ED,EM: string; // Profile

    sRName, sDel_Desc, sDel_Prov, sDel_Cit: string;    // For Delivery
    bDel_Frag: Boolean;
    iDel_NBox: integer;
    dDel_now: TDateTime;

    sC_RName, sC_Del_Desc, sC_Del_Prov, sC_Del_Cit: string;    // For Delivery
    bC_Del_Frag: Boolean;
    iC_Del_NBox: integer;
    dC_Del_now: TDateTime;
    arrFixedPrices: array[0..7] of integer;



    Function GenerateRecipteCode: string;
    Function GenerateRefundCode: string;
    procedure LoadDriversFromDB;
    procedure LoadPendingDeliveries;
    procedure TrackDelivery;
    procedure AssignDriversRandomly;
    procedure AssignDriverToDelivery(DeliveryCode, DriverID: string);
    procedure DisplayRosterInGrid;
    Function CalcTotalSales: string;
    Function CalcCOS: String;
    Function CalcTotalReturn: Real;
    procedure VerifyEdt(editbox, variable: string);
    procedure DriversWithNoVehicles;
    procedure VehiclesWithNoDrivers;
    procedure LoadVehiclesToSell;
    procedure LoadComapnies;
    procedure LoadNotes;
  end;

var
  frmTriWayTransM: TfrmTriWayTransM;
  objDelivery: Tdelivery;
  objSmallTruck: TSmallTruck;
  objMediumTruck: TMediumTruck;
  objLargeTruck: TLargeTruck;
  objVan: TVan;
  objBus: TBus;
  VTruck: TImage;


implementation

{$R *.dfm}

procedure TfrmTriWayTransM.AssignDriversRandomly;
var
  i, d, RandomIndex: Integer;
begin
  LoadDriversFromDB;      //Loads the Driver collection
  LoadPendingDeliveries;  //Loads the unasigned deliveries

  //If there are no drivers or Deliveries Exit
  if (length(Drivers) = 0) or (length(Deliveries) = 0) then
    begin
      Exit;
    end;

  Randomize;  // Ensuring that the random doesn't repeat

  // For O to the number of the last driver
  for d := 0 to High(Deliveries) do
    begin
      RandomIndex := Random(Length(Drivers));  //Randmiszes the drivers in array
      Roster[1][d + 1] := Drivers[RandomIndex]; // Monday assignments

      //Deliveries2[d]:= Deliveries[RandomIndex];
      //Trucks2[d + 1]:= Trucks[RandomIndex];

      //procedure that assign the random driver to the the coresponding delivery in database
      AssignDriverToDelivery(Deliveries[d], Drivers[RandomIndex]);
    end;

  DisplayRosterInGrid;   // Procedue that displays in the string grid

end;

procedure TfrmTriWayTransM.AssignDriverToDelivery(DeliveryCode,
  DriverID: string);
begin
  // Uses SQL to assign the delivery in the parameters to the driver in the parameters
  with dmTriWay do
    begin
      qryDeliveries.Close;
      qryDeliveries.SQL.Text:= 'UPDATE tblDeliveries SET DriverID = :DriverID WHERE DeliveryCode = :DeliveryCode';
      qryDeliveries.Parameters.ParamByName('DriverID').Value:= DriverID;
      qryDeliveries.Parameters.ParamByName('DeliveryCode').Value:= DeliveryCode;
      qryDeliveries.ExecSQL;
    end;
end;

procedure TfrmTriWayTransM.btnAssign_VehiclesClick(Sender: TObject);
begin
  // Allow Panel to be visable
  pnlAssign_Vehicles.Visible:= True;

  // Deactivate other buttons
  btnDisplay_Vehicles.Enabled:= false;
  btnSell_Vehicles.Enabled:= false;

  // Drivers List
  DriversWithNoVehicles;

  // Deliver List
  VehiclesWithNoDrivers;

  // Deactivate Assign Button
  btnAssign_Vehicles.Enabled:= false;

end;

procedure TfrmTriWayTransM.bitbtnAccept_EditClick(Sender: TObject);
begin


  sRName:= sC_RName;
  iDel_NBox:= iC_Del_NBox;
  sDel_Desc:= sC_Del_Desc;
  sDel_Prov:= sC_Del_Prov;
  sDel_Cit:= sC_Del_Cit;
  bDel_Frag:= bC_Del_Frag;

  edtRecipientName.Enabled:= false;
  sedNBoxes.Enabled:= false;
  memDescription.Enabled:= false;
  cmbxProvince.Enabled:= false;
  cmbxCity.Enabled:= false;
  chbxFragile.Enabled:= false;

  bitbtnCancel_Delivery.Visible:= True;
  bitbtnCancel_Edit.Visible:= False;

  bitbtnCheck_Edit.Visible:= False;
  bitbtnConfirm_Delivery.Visible:= True;

  bitbtnAccept_Edit.Visible:= False;
  bitbtnEdit_Delivery.Visible:= True;

end;

procedure TfrmTriWayTransM.bitbtnAd_HelpClick(Sender: TObject);
begin
  // Opens the help website
  ShellExecute(Handle,'open','https://triwaytransport-help.netlify.app/',nil,nil,0);
end;

procedure TfrmTriWayTransM.bitbtnAD_LogOutClick(Sender: TObject);
begin
  // Back to Login from admin Page
  tbshtLogin.Visible:= true;
  tbshtAdmin.Visible:= false;
end;

procedure TfrmTriWayTransM.bitbtnApprove_NoteClick(Sender: TObject);
var
  sNoteName, sNote: string;
  tNote,tNoteName: TextFile;
begin

  sNote:= redNotes.Text;

  sNoteName:= InputBox('Note','Enter Note Heading','');

  //Test if file exsists
  if not FileExists('Textfiles\Notes\'+sNoteName+'.txt') then
    begin
      // if not assign file to variable & recreate the file
      AssignFile(tNote, 'Textfiles\Notes\'+sNoteName+'.txt');
      Rewrite(tNote);
      ShowMessage('File Does not Exsist');
    end
    else
    begin
      // If it does exist assigned file to variable
      AssignFile(tNote, 'Textfiles\Notes\'+sNoteName+'.txt');
      //ShowMessage('File Exsist');
    end;

  Append(tNote);

  Writeln(tNote, sNote);

  CloseFile(tNote);

  //Test if file exsists
  if not FileExists('Textfiles\Notes.txt') then
    begin
      // if not assign file to variable & recreate the file
      AssignFile(tNoteName, 'Textfiles\Notes.txt');
      Rewrite(tNoteName);
      ShowMessage('File Does not Exsist');
    end
    else
    begin
      // If it does exist assigned file to variable
      AssignFile(tNoteName, 'Textfiles\Notes.txt');
      //ShowMessage('File Exsist');
    end;

  Append(tNoteName);

  Writeln(tNoteName, sNoteName);

  CloseFile(tNoteName);

  MessageDlg('Note: ' + sNoteName + ' saved', mtInformation, [mbOK], 0, mbOK);

  btnWrite_Notes.Enabled:= True;

end;

procedure TfrmTriWayTransM.bitbtnBackClick(Sender: TObject);
begin
  // Go back to main from Track
  tbshtMainPage.TabVisible:= true;
  tbshtTrack.TabVisible:= false;
end;

procedure TfrmTriWayTransM.bitbtnHelp_BackClick(Sender: TObject);
begin
  // back to login page from help page
  tbshtLogin.TabVisible:= true;
  tbshtHelp.TabVisible:= false;
end;

procedure TfrmTriWayTransM.bitbtnHelp_EditClick(Sender: TObject);
begin
  // Opens the help website
  ShellExecute(Handle,'open','https://triwaytransport-help.netlify.app/',nil,nil,0);
end;

procedure TfrmTriWayTransM.bitbtnBack_ProfileClick(Sender: TObject);
begin
  case UseVal of       // if the Value of UseVal whih is set at login = 0 or 1 or 2
    0: begin
      tbshtMainPage.TabVisible:= true;    // Go back to main page
      tbshtProfile.TabVisible:= false;
    end;
    1: begin
      tbshtDriver.TabVisible:= true;      // Go back to Drivers page
      tbshtProfile.TabVisible:= false;
    end;
    2: begin
      tbshtAdmin.TabVisible:= true;       // Go back to admin page
      tbshtProfile.TabVisible:= false;
    end;
end;

end;

procedure TfrmTriWayTransM.bitbtnBack_RosterClick(Sender: TObject);
begin
  case UseVal of       // if the Value of UseVal whih is set at login = 0 or 1 or 2
    1: begin
      tbshtDriver.TabVisible:= true;      // Go back to Drivers page
      tbshtRoster.TabVisible:= false;
    end;
    2: begin
      tbshtAdmin.TabVisible:= true;       // Go back to admin page
      tbshtRoster.TabVisible:= false;
    end;
  end;
  redAssignments.Clear;
end;

procedure TfrmTriWayTransM.bitbtnBack_VehiclesClick(Sender: TObject);
begin
  tbshtAdmin.TabVisible:= true;       // Go back to admin page
  tbshtTruckManagement.TabVisible:= false;
end;

procedure TfrmTriWayTransM.bitbtnCancel_DeliveryClick(Sender: TObject);
begin
  if MessageDlg('Are You Sure You Want To Cancel the Delivery',mtConfirmation,[mbYes,mbNO],0,mbYes)= mrYes  then
    begin
      edtRecipientName.Clear;
      sedNBoxes.Value:= 1;
      memDescription.Clear;
      cmbxProvince.ItemIndex:= -1;
      cmbxCity.ItemIndex:= -1;
      chbxFragile.Checked:= false;
      redRecipt.Clear;
      redDisplayDeliveryInfo.Clear;

      bitbtnCancel_Delivery.Visible:= false;
      bitbtnConfirm_Delivery.Visible:= false;
      bitbtnEdit_Delivery.Visible:= false;

      bitbtnAccept_Edit.Visible:= false;
      bitbtnCheck_Edit.Visible:= false;
      bitbtnCancel_Edit.Visible:= false;

      btnNewDelivery.Visible:= True;
      btnNewDelivery.Enabled:= False;

      btnGoToTrack.Enabled:= True;
      btnMainGoToProfile.Enabled:= True;
      btnPayment.Enabled:= False;
      bitbtnMainLogOut.Enabled:= True;

      edtRecipientName.Enabled:= True;
      sedNBoxes.Enabled:= True;
      memDescription.Enabled:= True;
      cmbxProvince.Enabled:= True;
      cmbxCity.Enabled:= True;
      chbxFragile.Enabled:= True;

    end;
end;

procedure TfrmTriWayTransM.bitbtnCancel_EditClick(Sender: TObject);
var
  rbaseCharge, rsub, rvat : real;
begin
  redDisplayDeliveryInfo.Clear;
  memDescription.Clear;

  edtRecipientName.Text:= sRName;
  sedNBoxes.Value:= iDel_NBox;
  memDescription.Lines.Add(sDel_Desc);
  cmbxProvince.Text:= sDel_Prov;
  cmbxCity.Text:= sDel_Cit;
  chbxFragile.Checked:= bDel_Frag;

  rbaseCharge:=  763.50; // this is the extra cost such as fuel and salaries

  objDelivery:= Tdelivery.create(sRName,iDel_NBox,sDel_Desc,sDel_Prov,sDel_Cit,bDel_Frag,dDel_now);
  objDelivery.FindDistance;
  objDelivery.CalcCost(rbaseCharge);

  sDeliveryCode:= objDelivery.GetDeliveryCode;



  //Gets Cost of Delivery
  rDeliveryCost:= objDelivery.GetCost;
  rvat:= (15/100)*(rDeliveryCost); // Seperates VAT from it
  rsub:= objDelivery.GetCost - rvat;  // Display Cost without VAT

  // Displays Receipt once new delivery created
  redRecipt.Lines.Add('Sub total: '+ FloatToStrF(rsub,ffCurrency,8,2)+ #9 + 'Click Payment Button to pay for delivery before moveing on' +#13 +
  'VAT: '+ FloatToStrF(rvat,ffCurrency,8,2)+ #13 +
  'Final Total: '+ FloatToStrF(rDeliveryCost,ffCurrency,8,2) + #13+
  '============================================================'+ #13 +
  'Bank: First National Bank (FNB)' + #9 + 'Account Number: 62839124567' + #13 +
  'Branch Code: 250655');

  // Displays To string function which is the Delivery info
  redDisplayDeliveryInfo.Lines.Add(objDelivery.ToString);

  bitbtnCancel_Delivery.Visible:= True;
  bitbtnCancel_Edit.Visible:= False;

  bitbtnCheck_Edit.Visible:= False;
  bitbtnConfirm_Delivery.Visible:= True;

  bitbtnAccept_Edit.Visible:= False;
  bitbtnEdit_Delivery.Visible:= True;

  edtRecipientName.Enabled:= false;
  sedNBoxes.Enabled:= false;
  memDescription.Enabled:= false;
  cmbxProvince.Enabled:= false;
  cmbxCity.Enabled:= false;
  chbxFragile.Enabled:= false;

end;

procedure TfrmTriWayTransM.bitbtnCheck_EditClick(Sender: TObject);
var
//dnow: TDateTime;
rbaseCharge, rsub, rvat : real;
begin
redDisplayDeliveryInfo.Clear;
if (edtRecipientName.Text = '') then
  begin
    MessageDlg('Please Enter Recipient/Refrence Name',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sC_RName:= edtRecipientName.Text;
  end;

if (cmbxProvince.ItemIndex = -1) then
  begin
    MessageDlg('Please select a Province to deliver to',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sC_Del_Prov:= cmbxProvince.Items[cmbxProvince.ItemIndex];
  end;

if (cmbxCity.ItemIndex = -1) then
  begin
    MessageDlg('Please select a City to deliver to',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sC_Del_Cit:= cmbxCity.Items[cmbxCity.ItemIndex];
  end;

sC_Del_Desc:= memDescription.Text;
bC_Del_Frag:= chbxFragile.Checked;
iC_Del_NBox:= sedNBoxes.Value;
dC_Del_now:= now;
rbaseCharge:=  763.50; // this is the extra cost such as fuel and salaries

objDelivery:= Tdelivery.create(sC_RName,iC_Del_NBox,sC_Del_Desc,sC_Del_Prov,sC_Del_Cit,bC_Del_Frag,dC_Del_now);
objDelivery.FindDistance;
objDelivery.CalcCost(rbaseCharge);

sDeliveryCode:= objDelivery.GetDeliveryCode;



  //Gets Cost of Delivery
  rDeliveryCost:= objDelivery.GetCost;
  rvat:= (15/100)*(rDeliveryCost); // Seperates VAT from it
  rsub:= objDelivery.GetCost - rvat;  // Display Cost without VAT

  // Displays Receipt once new delivery created
  redRecipt.Lines.Add('Sub total: '+ FloatToStrF(rsub,ffCurrency,8,2)+ #9 + 'Click Payment Button to pay for delivery before moveing on' +#13 +
  'VAT: '+ FloatToStrF(rvat,ffCurrency,8,2)+ #13 +
  'Final Total: '+ FloatToStrF(rDeliveryCost,ffCurrency,8,2) + #13+
  '============================================================'+ #13 +
  'Bank: First National Bank (FNB)' + #9 + 'Account Number: 62839124567' + #13 +
  'Branch Code: 250655');

  // Displays To string function which is the Delivery info
  redDisplayDeliveryInfo.Lines.Add(objDelivery.ToString);


  bitbtnAccept_Edit.Enabled:= true;
end;

procedure TfrmTriWayTransM.bitbtnClose_Assign_VehiclesClick(Sender: TObject);
begin
  pnlAssign_Vehicles.Visible:= false;

  btnDisplay_Vehicles.Enabled:= True;
  btnAssign_Vehicles.Enabled:= True;
  btnSell_Vehicles.Enabled:= True;

  edtDriver_Assign.clear;
  edtVehicles_Assign.Clear;

  lstDrivers_N_Vehicles.Clear;
  lstVehicles_N_Drivers.Clear;


end;

procedure TfrmTriWayTransM.bitbtnClose_NoteClick(Sender: TObject);
begin
  lstNotes.ItemIndex:= -1;
  btnWrite_Notes.Enabled:= True;
  redNotes.Clear;
  redNotes.ReadOnly:= False;

  bitbtnClose_Note.Visible:= false;
end;

procedure TfrmTriWayTransM.bitbtnClose_Sell_VehiclesClick(Sender: TObject);
begin
  pnlSell_Vehicles.Visible:= false;

  btnDisplay_Vehicles.Enabled:= True;
  btnAssign_Vehicles.Enabled:= True;
  btnSell_Vehicles.Enabled:= True;



  lstSell_Vehicles.Clear;
end;

procedure TfrmTriWayTransM.bitbtnConfirm_DeliveryClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      tblDeliveries.Open;
      tblDeliveries.Append;

      tblDeliveries['DeliveryCode']:= sDeliveryCode;
      tblDeliveries['ID']:= sUserID;
      tblDeliveries['RecipientName']:= sRName;
      tblDeliveries['ItemDetails']:= sDel_Desc;
      tblDeliveries['Boxes']:= iDel_NBox;
      tblDeliveries['Delicate']:= bDel_Frag;
      tblDeliveries['Payment']:= objDelivery.GetCost;
      tblDeliveries['Province']:= sDel_Prov;
      tblDeliveries['City']:= sDel_Cit;
      tblDeliveries['OrderDate']:= FormatDateTime('dd/mm/yyyy hh:nn',dDel_now);
      tblDeliveries['DepartureDate']:= FormatDateTime('yyyy/mm/dd hh:nn',objDelivery.GetNextMonday5PM(Date));
      tblDeliveries['DeliveryDate']:= FormatDateTime('yyyy/mm/dd hh:nn',objDelivery.CalculateArrivalTime(objDelivery.GetNextMonday5PM(Date),objDelivery.GetDistance,90));
      tblDeliveries.Post;
      MessageDlg('Congrats ' + sUserID + ' A new Delivery has been created. Please Make Payment Before Procceding',mtInformation,[mbOk],0,mbOk);
      tblDeliveries.Close;
    end;
    btnPayment.Enabled:= true;
    btnPayment.Focused;

    bitbtnCancel_Delivery.Visible:= false;
    bitbtnConfirm_Delivery.Visible:= false;
    bitbtnEdit_Delivery.Visible:= false;

    bitbtnAccept_Edit.Visible:= false;
    bitbtnCheck_Edit.Visible:= false;
    bitbtnCancel_Edit.Visible:= false;

    btnNewDelivery.Visible:= True;
    btnNewDelivery.Enabled:= False;
end;

procedure TfrmTriWayTransM.bitbtnDriverHelpClick(Sender: TObject);
begin
  // Opens the help website
  ShellExecute(Handle,'open','https://triwaytransport-help.netlify.app/',nil,nil,0);
end;

procedure TfrmTriWayTransM.bitbtnEdit_DeliveryClick(Sender: TObject);
begin
  bitbtnConfirm_Delivery.Visible:= false;
  bitbtnCancel_Delivery.Visible:= false;
  bitbtnEdit_Delivery.Visible:= false;

  bitbtnCheck_Edit.Visible:= True;
  bitbtnAccept_Edit.Visible:= True;
  bitbtnAccept_Edit.Enabled:= false;
  bitbtnCancel_Edit.Visible:= True;


  edtRecipientName.Enabled:= True;
  sedNBoxes.Enabled:= True;
  memDescription.Enabled:= True;;
  cmbxProvince.Enabled:= True;
  cmbxCity.Enabled:= True;
  chbxFragile.Enabled:= True;

  edtRecipientName.Clear;
  sedNBoxes.Value:= 1;
  memDescription.Clear;
  cmbxProvince.ItemIndex:= -1;
  cmbxCity.ItemIndex:= -1;
  redRecipt.Clear;
  chbxFragile.Checked:= False;

end;

procedure TfrmTriWayTransM.bitbtnLogExitClick(Sender: TObject);
begin
  if MessageDlg('Are You Sure You Want To Exit Program',mtConfirmation,[mbYes,mbNO],0,mbYes)= mrYes  then
    begin
      Application.Terminate;  //  Terminates program if yes is clicked
    end;
end;

procedure TfrmTriWayTransM.bitbtnLogHelpClick(Sender: TObject);
begin
  // Opens the help website
  ShellExecute(Handle,'open','https://triwaytransport-help.netlify.app/',nil,nil,0);
end;

procedure TfrmTriWayTransM.bitbtnLogout_DriversClick(Sender: TObject);
begin
  // Back to Login from Drivers Page

  tbshtLogin.Visible:= true;
  tbshtDriver.Visible:= false;
end;

procedure TfrmTriWayTransM.bitbtnMainHelpClick(Sender: TObject);
begin
  // Opens the help website
  ShellExecute(Handle,'open','https://triwaytransport-help.netlify.app/',nil,nil,0);
end;

procedure TfrmTriWayTransM.bitbtnMainLogOutClick(Sender: TObject);
begin
  // goes back to login page from main page if yes is clicked
  if MessageDlg('Are You Sure You Want To Log Out of the Programme',mtConfirmation,[mbYes,mbNO],0,mbYes)= mrYes  then
    begin
      edtRecipientName.Clear;
      sedNBoxes.Clear;
      memDescription.Clear;
      sedNBoxes.Value:= 1;

      cmbxProvince.ItemIndex:= -1;
      cmbxCity.ItemIndex:= -1;

      redRecipt.Clear;
      redDisplayDeliveryInfo.Clear;

      tbshtLogin.TabVisible:= true;
      tbshtMainPage.TabVisible:= false;
    end;
end;

procedure TfrmTriWayTransM.bitbtnRegBackClick(Sender: TObject);
begin
  // Goes back to login page from register page
  tbshtLogin.TabVisible:= true;
  pgclMain.TabIndex:= 0;
  tbshtRegister.TabVisible:= false;
end;

procedure TfrmTriWayTransM.bitbtnRegister_HelpClick(Sender: TObject);
begin
  // Opens the help website
  ShellExecute(Handle,'open','https://triwaytransport-help.netlify.app/',nil,nil,0);
end;

procedure TfrmTriWayTransM.btnAdd_UserClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryUsers.Close;
      qryUsers.SQL.Text := 'SELECT * FROM tblUsers';
      qryUsers.Open;
    end;
end;

procedure TfrmTriWayTransM.btnAdminLoginClick(Sender: TObject);
var sAdmin, SPass: string;
bfound: boolean;
begin
sAdmin:= InputBox('Enter Admin ID','Admin ID','AD-IT68T.Bam');
sPass:= InputBox('Enter Password','Admin Password','DemiLade2008');
bfound:= false;
with dmTriWay do
  begin
    tblAdmin.Open;
    tblAdmin.First;
    while (not tblAdmin.Eof) and (bfound = false)  do
      begin
         if (tblAdmin['AdminID'] = sAdmin) AND (tblAdmin['Password'] = sPass) then
          begin
            bfound:= true;
            UseVal:= 2;
            sAd:= tblAdmin['AdminID'];
            sName:= tblAdmin['Name'];
            sSurn:= tblAdmin['Surname'];
            lblAdminID_Display.Caption:= sAd+ ': ' + sName + ' ' + sSurn;
            lblAdminDate.Caption:= DateToStr(now);
            lblprofile_username.Caption:= tblAdmin['AdminID']+': ' + tblAdmin['Name'] + ' ' + tblAdmin['Surname'];
            lblprofile_email.Caption:= 'Email: ' + tblAdmin['Email'];
            lblprofile_dateofbirth.Caption:= 'Date of Birth: ' + DateToStr(tblAdmin['DateOfBirth']);
            lblprofile_admin_job.Visible:= True;
            lblprofile_admin_job.Caption:= 'Department: ' + tblAdmin['Job'];
            LoadNotes;
            tbshtAdmin.Visible:= true;
            pgclMain.TabIndex:= 5;
            tbshtLogin.TabVisible:= false;
          end;
          tblAdmin.Next;
      end;
    if (bfound = false) then
      begin
        if MessageDlg('ID/Password Incorrect!'+#13' Have You forgotten Your Password. If so click Yes if Not click No and try again',mtError,[mbNo,mbYes],0,mbYes) = mrYes then
          begin
            tbshtHelp.TabVisible:= true;
            pgclMain.TabIndex:= 2;
            tbshtLogin.TabVisible:= false;
          end;
      end;
  end;
end;

procedure TfrmTriWayTransM.btnAd_Disp_DeliveriesClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryDeliveries.Close;
      qryDeliveries.SQL.Text := 'SELECT * FROM tblDeliveries';
      qryDeliveries.Open;
    end;
end;

procedure TfrmTriWayTransM.btnAd_ProfileClick(Sender: TObject);
begin
  //Go to profile from Admin Page
  tbshtProfile.TabVisible:= true;
  tbshtAdmin.TabVisible:= false;
end;

procedure TfrmTriWayTransM.btnAd_Total_DeliveriesClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryDeliveries.Close;
      qryDeliveries.SQL.Text := 'SELECT SUM(Payment) AS [Total Sales], COUNT(*) AS [Total Deliveries] FROM tblDeliveries';
      qryDeliveries.Open;
    end;
end;

procedure TfrmTriWayTransM.btnAd_VehiclesClick(Sender: TObject);
begin
 // Go to Tucks Page from Admin
 tbshtAdmin.TabVisible:= false;
 tbshtTruckManagement.TabVisible:= True;
end;

procedure TfrmTriWayTransM.btnAssignDeliveriesClick(Sender: TObject);
begin
  AssignDriversRandomly;
  ShowMessage('Weekly plan generated and saved.');
end;

procedure TfrmTriWayTransM.btnAssign_VehicleClick(Sender: TObject);
var sDriver, sVehicle: string;
bfound: Boolean;
begin
  // Assign Vehicles
  bfound:= false;

  if (edtDriver_Assign.Text = '') then
    begin
      MessageDlg('Please Enter A Driver',mtWarning,[mbOk],0,mbOk);
      Exit;
    end
    else
      sDriver:= edtDriver_Assign.Text;

  if (edtVehicles_Assign.Text = '') then
    begin
      MessageDlg('Please Enter A Vehicle',mtWarning,[mbOk],0,mbOk);
      Exit;
    end
    else
      sVehicle:= edtVehicles_Assign.Text;

  with dmTriWay do
    begin
      tblDriver.Open;
      tblDriver.First;

      while (not tblDriver.Eof) and (not bfound) do
        begin
          if (tblDriver['DriverID'] = sDriver) then
            begin
              bfound := True;
              tblDriver.Edit;

              tblDriver['VehicleID']:= sVehicle;

              MessageDlg('Driver: ' + sDriver + ' now drives ' + sVehicle, mtInformation, [mbOK], 0, mbOK);
              tblDriver.Post;
            end;
          tblDriver.Next;
        end;
    end;

  // Clear Edit Box and Reload Drivers and Delivery List

  redAssign_Info.Clear;

  edtVehicles_Assign.Clear;
  edtDriver_Assign.Clear;

  lstDrivers_N_Vehicles.Clear;
  lstVehicles_N_Drivers.Clear;

  DriversWithNoVehicles;

  VehiclesWithNoDrivers;


end;

procedure TfrmTriWayTransM.btnBest_DriverClick(Sender: TObject);
begin
   with dmTriWay do
    begin

      qryDeliveries.Close;
      //qryDriver.SQL.Text := 'SELECT tblDriver.DriverID, tblDriver.Name AS [Driver Name], Count(tbDeliveries.DeliveryCode) AS [Total Deliveries] FROM tblDriver '+
              //'LEFT JOIN tblDeliveries ON tblDriver.DriverID = tblDeliveres.DriverID ' +
              //'GROUP BY DriverID, tblDriver.[Name] ORDER BY [Total Deliveries] ASC';
      qryDriver.SQL.Text := 'SELECT d.[DriverID], d.[Name], d.[Surname], '+
      'COUNT(dl.[DeliveryCode]) AS [Total Deliveries] '+
      'FROM [tblDriver] AS d INNER JOIN [tblDeliveries] AS dl '+
      'ON d.[DriverID] = dl.[DriverID] GROUP BY d.[DriverID], d.[Name], d.[Surname] '+
      'ORDER BY COUNT(dl.[DeliveryCode]) DESC';
      qryDriver.Open;
    end;
end;

procedure TfrmTriWayTransM.btnCancelDeliveryClick(Sender: TObject);
var bfound: Boolean;
mydelete: TextFile;
dtDeleted: TDateTime;
rpayment: real;
begin
dtDeleted:= Now;
bfound:= false;
redDeliverySummary.Clear;


//Test if file exsists
if not FileExists('Textfiles\Deleted Delivery.txt') then
  begin
    // if not assign file to variable & recreate the file
    AssignFile(mydelete, 'Textfiles\Deleted Delivery.txt');
    Rewrite(mydelete);
    ShowMessage('File Does not Exsist');
  end
  else
  begin
    // If it does exist assigned file to variable
    AssignFile(mydelete, 'Textfiles\Deleted Delivery.txt');
    ShowMessage('File Exsist');
  end;


with dmTriWay do
  begin
    tblDeliveries.Open;
    tblDeliveries.First;   // start at the first recored
    while (not tblDeliveries.Eof) and (bfound = False) do  
      begin
        if (tblDeliveries['DeliveryCode'] = edtDeliveryCode.Text) and (tblDeliveries['ID'] = sUserID) then
          begin
            if (tblDeliveries['DepartureDate'] > Now) then
              begin
                bfound := true;
                rpayment:= tblDeliveries['Payment'];
                Append(mydelete); // Append for writing

                // Write to deleted info to file
                Writeln(mydelete, tblDeliveries['DeliveryCode'] + '|' + GenerateRefundCode + '|' +
                sUserID + '|' + FloatToStrF(rpayment, ffCurrency,8,2) + '|' +
                FormatDateTime('dd/mm/yyyy hh:nn', dtDeleted)  );


                // CloseFile
                CloseFile(mydelete);

                // Delete Delivery from table
                tblDeliveries.Delete;

                // Message to show that delivery no longer exists
                MessageDlg('Your Deivery Has Been Cancelled, please check your account to see your refund',mtInformation,[mbOK],0,mbOK);
              end
              else
              begin
                MessageDlg('Delivery cannot be cancelled as departure date has already passed',mtWarning,[mbOK],0,mbOK);
                Exit;
              end;
          end
          else
            tblDeliveries.Next;   // if not found move to the next recored
      end;
     if (bfound = False) then // if stll false
      begin
        // Display message that the Delivery Code was not found in table and Exit
        MessageDlg('Delivery Code Not Found Plaese check code again.',mtWarning,[mbOk],0,mbOk);
        Exit;
      end;
  end;
  // Clear the components so info can be re-displayed

  lstDeliveryCodes.Clear;

  // Used to re-display the Delivery code in the components
  TrackDelivery;
end;

procedure TfrmTriWayTransM.btnCancellationsClick(Sender: TObject);
var Dfile : TextFile;
ipos: integer;
sline, sUser, sRefund, sDelCode, sAmount : string;
begin

  if (not FileExists('Textfiles\Deleted Delivery.txt')) then
    begin
      MessageDlg('File Does Not Exist', mtError, [mbOK], 0, mbOK);
      Exit;
    end;

  AssignFile(Dfile, 'Textfiles\Deleted Delivery.txt');
  Reset(Dfile);
  redFinance.Clear;
  redFinance.Lines.Add('RefundCode' + #9 + 'Amount' + #9  + 'User' + #9+ #9 + 'Date');


  while not Eof(Dfile) do // while not at the end of the text file
    begin
      Readln(Dfile, sline);

      // ddd#96FS|RF-VWY2I|0802276656187|$947.74|03/08/2025 02:40
      ipos:= pos('|',sline);
      sDelCode:= Copy(sline,1,ipos-1); // ddd#96FS
      Delete(sline,1,ipos); // sLine = RF-VWY2I|0802276656187|$947.74|03/08/2025 02:40

      ipos:= pos('|',sline);
      sRefund:= Copy(sline,1,ipos-1); // RF-VWY2I
      Delete(sline,1,ipos);  // sLine = 0802276656187|$947.74|03/08/2025 02:40

      ipos:= pos('|',sline);
      sUser:= Copy(sline,1,ipos-1); // 0802276656187
      Delete(sline,1,ipos);  // sLine = $947.74|03/08/2025 02:40

      ipos:= pos('|',sline);
      sAmount:= Copy(sline,1,ipos-1); // $947.74
      Delete(sline,1,ipos);  // sLine = 03/08/2025 02:40

      // Display On to Richedit
      redFinance.Lines.Add(sRefund + #9 + sAmount +#9 + sUser + #9 + sline )

    end;
  CloseFile(Dfile);

end;

procedure TfrmTriWayTransM.btnChange_passwordClick(Sender: TObject);
var
  bfound: Boolean;
  sOld, sNew: string;
begin
  sOld:= InputBox('Old Password','Enter Old Password','');
  sNew:= InputBox('New Password','Enter New Password','');

  if (sOld = '') or (sNew = '') then
    begin
      ShowMessage('Password cannot be empty');
      Exit;
    end;

  with dmTriWay do
    begin
      case UseVal of
          0: begin
            qryUsers.SQL.Text:= 'UPDATE tblUsers SET [Password] ='+ QuotedStr(sNew)+
            ' Where [Password] ='+QuotedStr(sOld)+ ' and ID ='+QuotedStr(sUserID);
            qryUsers.ExecSQL;
            MessageDlg('Your Password Has been Updated',mtInformation,[mbOK],0,mbOk);
          end;

          1: begin
            qryDriver.SQL.Text:= 'UPDATE tblDriver SET [Password] ='+ QuotedStr(sNew)+
            ' Where [Password] ='+QuotedStr(sOld)+ ' and DriverID ='+QuotedStr(sDriver);
            qryDriver.ExecSQL;
            MessageDlg('Your Password Has Been Updated',mtInformation,[mbOK],0,mbOk);
          end;

          2: begin
            qryAdmin.SQL.Text:= 'UPDATE tblAdmin SET [Password] ='+ QuotedStr(sNew)+
            ' Where [Password] ='+QuotedStr(sOld) + ' and AdminID ='+QuotedStr(sAd);
            qryAdmin.ExecSQL;
            MessageDlg('Your Password Has Been Updated',mtInformation,[mbOK],0,mbOk);
          end;
      end;
    end;

end;

procedure TfrmTriWayTransM.btnCompletedDeliveriesClick(Sender: TObject);
begin
with dmTriWay do
  begin
    qryDeliveries.Close;
    qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, ItemDetails FROM tblDeliveries where DeliveryDate < NOW() and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
    qryDeliveries.Open;

    ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
  end;
end;

procedure TfrmTriWayTransM.btnCurrent_DeliveriesClick(Sender: TObject);
begin
with dmTriWay do
  begin
    qryDeliveries.Close;
    qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, ItemDetails, Province, City, Delicate, DeliveryDate FROM tblDeliveries where DeliveryDate > NOW() and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
    qryDeliveries.Open;

    ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
  end;
end;

procedure TfrmTriWayTransM.btnDeliveryStatusClick(Sender: TObject);
var bfound: Boolean;
begin
bfound:= false;
redDeliverySummary.Clear;
with dmTriWay do
  begin
    tblDeliveries.Open;
    tblDeliveries.First;
    while (not tblDeliveries.Eof) and (bfound = False) do
      begin
        if (tblDeliveries['DeliveryCode'] = edtDeliveryCode.Text) and (tblDeliveries['ID'] = sUserID) then
          begin
              bfound:= true;
              TargetDateTime:= tblDeliveries['DeliveryDate'];
              TotalDeliverySeconds := Trunc((TargetDateTime - Now) * 24 * 60 * 60);
              pbCountDown.Position := 0;
              tmrCountDown.Enabled := True;
              redDeliverySummary.Lines.Add('Delivery Summary');
              redDeliverySummary.Lines.Add('------------------------');
              redDeliverySummary.Lines.Add('Delivery Code: '+ tblDeliveries['DeliveryCode']);
              redDeliverySummary.Lines.Add('Destination: '+ tblDeliveries['City'] + ', ' +  tblDeliveries['Province']);
              redDeliverySummary.Lines.Add('Order Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['OrderDate']));
              redDeliverySummary.Lines.Add('Departure Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['DepartureDate']));
              redDeliverySummary.Lines.Add('Delivery Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['DeliveryDate']));
          end;
        tblDeliveries.Next;
      end;
     if (bfound = False) then
      begin
        MessageDlg('Delivery Code Not Found Plaese check code again.',mtWarning,[mbOk],0,mbOk);
        Exit;
      end;
  end;

end;

procedure TfrmTriWayTransM.btnDelivery_thisWeekClick(Sender: TObject);
begin
with dmTriWay do
  begin
    qryDeliveries.Close;
    qryDeliveries.SQL.Text := 'SELECT * FROM tblDeliveries where DeliveryDate > NOW() and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
    qryDeliveries.Open;

    ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
  end;
end;

procedure TfrmTriWayTransM.btnDisplayDeliveriesClick(Sender: TObject);
begin
with dmTriWay do
  begin
    qryDeliveries.Close;
    qryDeliveries.SQL.Text := 'SELECT * FROM tblDeliveries where DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
    qryDeliveries.Open;
  end;
end;

procedure TfrmTriWayTransM.btnDriverLoginClick(Sender: TObject);
var sDr,sPass: string;
bfound: boolean;
now: TDate;
begin
sDr:= InputBox('Enter Driver ID','Driver ID','');
sPass:= InputBox('Enter Password','Driver Password','');
bfound:= false;
now:= Date;
with dmTriWay do
  begin
    tblDriver.Open;
    tblDriver.First;
    while (not tblDriver.Eof) and (bfound = false)  do
      begin
         if (tblDriver['DriverID'] = sDr) AND (tblDriver['Password'] = sPass) then
          begin
            bfound:= true;
            UseVal:= 1;
            sDriver:= tblDriver['DriverID'];
            sName:= tblDriver['Name'];
            sSurn:= tblDriver['Surname'];
            lblDriverDisplayID.Caption:= sDr+ ': ' + sName + ' ' + sSurn;
            lblDriverDate.Caption:= DateToStr(now);

            if (tblDriver['VehicleID'] = '') then
              lblVehicleID_Drivers.Caption:= 'VehicleID: Unassigned '
            else
              lblVehicleID_Drivers.Caption:= 'VehicleID: ' + tblDriver['VehicleID'];

            lblprofile_username.Caption:= tblDriver['DriverID']+': ' + tblDriver['Name'] + ' ' + tblDriver['Surname'];
            lblprofile_email.Caption:= 'Email: ' + tblDriver['Email'];
            lblprofile_dateofbirth.Caption:= 'Date of Birth: ' + DateToStr(tblDriver['DateOfBirth']);
            lblprofile_TruckID.Visible:= True;

            if (tblDriver['VehicleID'] = '') then
              lblprofile_TruckID.Caption:= 'VehicleID: Unassigned '
            else
              lblprofile_TruckID.Caption:= 'VehicleID: ' + tblDriver['VehicleID'];

            tbshtDriver.Visible:= true;
            pgclMain.TabIndex:= 4;
            tbshtLogin.TabVisible:= false;
          end;
          tblDriver.Next;
      end;
    if (bfound = false) then
      begin
        if MessageDlg('ID/Password Incorrect!'+#13' Have You forgotten Your Password. If so click Yes if Not click No and try again',mtError,[mbNo,mbYes],0,mbYes) = mrYes then
          begin
            tbshtHelp.TabVisible:= true;
            pgclMain.TabIndex:= 2;
            tbshtLogin.TabVisible:= false;
          end;
      end;
  end;


end;

procedure TfrmTriWayTransM.btnDriversTotalDClick(Sender: TObject);
begin
with dmTriWay do
  begin
    qryDeliveries.Close;
    qryDeliveries.SQL.Text := 'SELECT Count(*) as [Total Deliveries] FROM tblDeliveries where DriverID ='+ QuotedStr(sDriver);
    qryDeliveries.Open;
  end;
end;

procedure TfrmTriWayTransM.btnDriverToProfileClick(Sender: TObject);
begin
 //Go to profile from Drivers Page
  tbshtProfile.TabVisible:= true;
  tbshtDriver.TabVisible:= false;
end;

procedure TfrmTriWayTransM.btnDriver_RosterClick(Sender: TObject);
begin
  // Go to Roster Page from Admin
  tbshtAdmin.TabVisible:= False;
  tbshtRoster.TabVisible:= True;
end;

procedure TfrmTriWayTransM.btnEdit_Delivery_infoClick(Sender: TObject);
var
  cDelivery: string;
  bfound: Boolean;
begin
  cDelivery:= edtDeliveryCode.Text;
  bfound:= false;

  with dmTriWay do
    begin
    tblDeliveries.Open;
    tblDeliveries.First;
      while (not tblDeliveries.Eof) and (bfound = false) do
        begin
          bfound:= true;
          if (tblDeliveries['DeliveryCode'] = cDelivery) and (tblDeliveries['ID'] = sUserID) then
            begin
              tblDeliveries.Edit;
              tblDeliveries['RecipientName']:= edtEdit_tRecipiantName.Text;
              tblDeliveries['ItemDetails']:= mem_EditDescription.Text;
              tblDeliveries['Delicate']:= chkEdit_Fragile.Checked;
              tblDeliveries.Post;
            end;
          tblDeliveries.Next;
        end;
    end;
end;

procedure TfrmTriWayTransM.btnEdit_ProfileClick(Sender: TObject);
var
  sEdName, sEdSurname, sEdEmail: string;
  dEdDateofBirth: TDate;
begin
with dmTriWay do
  begin
    case rdgEditProfile.ItemIndex of
      0: begin
        if (edtprofile_edtName.Text = '') then  // if the edit box is empty
          begin
            // Message to warn user to enter name and exit the register process
            MessageDlg('Please Enter your Name', mtWarning,[mbOk],0,mbOk);
            Exit;
          end
          else
          begin
            // if it is entered put it in variable and continue process
            sEdName:= edtprofile_edtName.Text;
          end;
        case UseVal of
          0: begin
            qryUsers.SQL.Text:= 'UPDATE tblUsers SET Name ='+ QuotedStr(sEdName)+' Where ID ='+QuotedStr(sUserID);
            qryUsers.ExecSQL;
            MessageDlg('Your Name Has Been Updated',mtInformation,[mbOK],0,mbOk);
          end;
          1: begin
            qryDriver.SQL.Text:= 'UPDATE tblDriver SET Name ='+ QuotedStr(sEdName)+' Where DriverID ='+QuotedStr(sDriver);
            qryDriver.ExecSQL;
            MessageDlg('Your Name Has Been Updated',mtInformation,[mbOK],0,mbOk);
          end;
          2: begin
            qryAdmin.SQL.Text:= 'UPDATE tblAdmin SET Name ='+ QuotedStr(sEdName)+' Where AdminID ='+QuotedStr(sAd);
            qryAdmin.ExecSQL;
            MessageDlg('Your Name Has Been Updated',mtInformation,[mbOK],0,mbOk);
          end;
        end;
    end;
    1: begin
      if (edtprofile_edtSurname.Text = '') then  // if the edit box is empty
        begin
          // Message to warn user to enter name and exit the register process
          MessageDlg('Please Enter your Name', mtWarning,[mbOk],0,mbOk);
          Exit;
        end
        else
        begin
          // if it is entered put it in variable and continue process
          sEdSurname:= edtprofile_edtSurname.Text;
        end;
      case UseVal of
        0: begin
          qryUsers.SQL.Text:= 'UPDATE tblUsers SET Surname ='+ QuotedStr(sEdSurname)+' Where ID ='+QuotedStr(sUserID);
          qryUsers.ExecSQL;
          MessageDlg('Your Surname Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
        1: begin
          qryDriver.SQL.Text:= 'UPDATE tblDriver SET Surname ='+ QuotedStr(sEdSurname)+' Where DriverID ='+QuotedStr(sDriver);
          qryDriver.ExecSQL;
          MessageDlg('Your Surname Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
        2: begin
          qryAdmin.SQL.Text:= 'UPDATE tblDriver SET Surname ='+ QuotedStr(sEdSurname)+' Where AdminID ='+QuotedStr(sAd);
          qryAdmin.ExecSQL;
          MessageDlg('Your Surname Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
      end;
    end;
    2: begin
      dEdDateofBirth:= dtpprofile_edtDateofBirth.Date;
      case UseVal of
        0: begin
          qryUsers.SQL.Text:= 'UPDATE tblUsers SET DateOfBirth = :dob Where ID = :uid';//+QuotedStr(sUserID);
          qryUsers.Parameters.ParamByName('dob').Value := Datetostr(dEdDateofBirth);
          qryUsers.Parameters.ParamByName('uid').Value := sUserID;
          qryUsers.ExecSQL;
          MessageDlg('Your Date of Birth Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
        1: begin
          qryDriver.SQL.Text:= 'UPDATE tblDriver SET DateOfBirth = :dob Where DriverID ='+QuotedStr(sDriver);
          qryDriver.Parameters.ParamByName('dob').Value := Datetostr(dEdDateofBirth);
          qryDriver.ExecSQL;
          MessageDlg('Your Date of Birth Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
        2: begin
          qryAdmin.SQL.Text:= 'UPDATE tblAdmin SET DateOfBirth = :dob Where AdminID ='+QuotedStr(sAd);
          qryAdmin.Parameters.ParamByName('dob').Value := Datetostr(dEdDateofBirth);
          qryAdmin.ExecSQL;
          MessageDlg('Your Date of Birth Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
      end;
    end;
    3: begin
      if (edtprofile_edtName.Text = '') then  // if the edit box is empty
        begin
          // Message to warn user to enter name and exit the register process
          MessageDlg('Please Enter your Name', mtWarning,[mbOk],0,mbOk);
          Exit;
        end
        else
        begin
          // if it is entered put it in variable and continue process
          sEdName:= edtprofile_edtName.Text;
        end;
      case UseVal of
        0: begin
          qryUsers.SQL.Text:= 'UPDATE tblUsers SET Email ='+ QuotedStr(sEdEmail)+' Where ID ='+QuotedStr(sUserID);
          qryUsers.ExecSQL;
          MessageDlg('Your Email Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
        1: begin
          qryUsers.SQL.Text:= 'UPDATE tblUsers SET Email ='+ QuotedStr(sEdEmail)+' Where ID ='+QuotedStr(sUserID);
          qryUsers.ExecSQL;
          MessageDlg('Your Email Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
        2: begin
          qryUsers.SQL.Text:= 'UPDATE tblUsers SET Email ='+ QuotedStr(sEdEmail)+' Where ID ='+QuotedStr(sUserID);
          qryUsers.ExecSQL;
          MessageDlg('Your Email Has Been Updated',mtInformation,[mbOK],0,mbOk);
        end;
    end;
    end;
    end;
  end;


end;

procedure TfrmTriWayTransM.btnEdit_UserClick(Sender: TObject);
var
  sVerify: string;
  bfound: Boolean;
begin
  sVerify:= InputBox('UserID', 'Enter UserID', '');
  bfound:= false;
 with dmTriWay do
  begin
    qryUsers.Close;
    qryUsers.SQL.Text:= '';
    qryUsers.Open;

  end;
end;

procedure TfrmTriWayTransM.btnFinancial_ReportClick(Sender: TObject);
var rProfit: real;
begin
  redFinance.Clear;
  redFinance.Lines.Add('Financal Report' + #13);

  // +Total Sales by Deliveries
  redFinance.Lines.Add('Total Sales: '+ CalcTotalSales);
  
  // -Cost of sales boxes
  redFinance.Lines.Add('Cost of Sales: '+ CalcCOS + #13); 

  // - Expenses
  redFinance.Lines.Add('Expenses');   
      // Adveritsment
      // Returns
      redFinance.Lines.Add(#9 + 'Returns: '+ FloatToStrF(CalcTotalReturn, ffCurrency, 8, 2));
      // vechiles 
      // Salaries 
          // Drivers
          // Administartors 
      // Fuel
      // Depriciation 
      // Rent Expense  
  // = Profit/Loss
  //rprofit:= StrToFloat(CalcTotalSales) + StrToFloat(CalcCOS(2.50));
  // + Capital
  // = Total Revenue for business 
end;

procedure TfrmTriWayTransM.btnFindIDClick(Sender: TObject);
var sFIDEmail, sFIDPass : string;
bfound: boolean;
begin
if (edtFEmail.Text = '') then
  begin
   MessageDlg('Please Enter your Email',mtWarning,[mbOk],0,mbOk);
   Exit;
  end
  else
  begin
    sFIDEmail:= edtFEmail.Text;
  end;

if (edtFPass.Text = '') then
  begin
    MessageDlg('Please Enter your Password',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sFIDPass:= edtFPass.Text;
  end;


bfound:= false;
if (cmbxFAccessID.ItemIndex = -1) then
  begin
    With dmTriWay do
      begin
        tblUsers.Open;
        tblUsers.First;
        while (not tblUsers.Eof) and (bfound = false)  do
          begin
            if (tblUsers['Email'] = sFIDEmail) AND (tblUsers['Password'] = sFIDPass) then
              begin
                bfound:= true;
                pnlDisplayFID.Caption:= 'ID: ' + tblUsers['ID'];
              end;
              tblUsers.Next;
          end;
      end;
  end
  else
if (cmbxFAccessID.ItemIndex = 1) then
  begin
    With dmTriWay do
      begin
        tblAdmin.Open;
        tblAdmin.First;
        while (not tblAdmin.Eof) and (bfound = false)  do
          begin
            if (tblAdmin['Email'] = sFIDEmail) AND (tblAdmin['Password'] = sFIDPass) then
              begin
                bfound:= true;
                pnlDisplayFID.Caption:= 'Admin ID: ' + tblAdmin['adminID'];
              end;
              tblAdmin.Next;
          end;
      end;
  end
  else
if (cmbxFAccessID.ItemIndex = 0) then
  begin
    With dmTriWay do
      begin
        tblDriver.Open;
        tblDriver.First;
        while (not tblDriver.Eof) and (bfound = false)  do
          begin
            if (tblDriver['Email'] = sFIDEmail) AND (tblDriver['Password'] = sFIDPass) then
              begin
                bfound:= true;
                pnlDisplayFID.Caption:= 'Driver ID: ' + tblDriver['DriverID'];
              end;
              tblDriver.Next;
          end;
      end;
  end;
  if (bfound = false) then
    begin
      pnlDisplayFID.Caption:= 'Not Found';
    end;

end;

procedure TfrmTriWayTransM.btnFindPassClick(Sender: TObject);
var sFPassID, sKey: string;
bfound: boolean;
begin
if (edtFIDpass.Text = '') then
  begin
   MessageDlg('Please Enter your ID',mtWarning,[mbOk],0,mbOk);
   Exit;
  end
  else
  begin
    sFPassID:= edtFIDpass.Text;
  end;

bfound:= false;
sKey:= InputBox('Enter Access Key','Access Key','');
if (cmbxFAcessPass.ItemIndex = -1) then
  begin
    With dmTriWay do
      begin
        tblUsers.Open;
        tblUsers.First;
        while (not tblUsers.Eof) and (bfound = false)  do
          begin
            if (tblUsers['ID'] = sFPassID) AND (skey = '1235User') then
              begin
                bfound:= true;
                pnlDisplayFPass.Caption:= 'Password: ' + tblUsers['Password'];
              end;
              tblUsers.Next;
          end;
        if (bfound = false) then
          begin
            pnlDisplayFPass.Caption:= 'Not Found';
          end;
      end;
  end
  else
if (cmbxFAcessPass.ItemIndex = 1) then
  begin
    With dmTriWay do
      begin
        tblAdmin.Open;
        tblAdmin.First;
        while (not tblAdmin.Eof) and (bfound = false)  do
          begin
            if (tblAdmin['AdminID'] = sFPassID) AND (skey = '1235Admin') then
              begin
                bfound:= true;
                pnlDisplayFPass.Caption:= 'Ad Password: ' + tblAdmin['Password'];
              end;
              tblAdmin.Next;
          end;
        if (bfound = false) then
          begin
            pnlDisplayFPass.Caption:= 'Not Found';
          end;
      end;
  end
  else
if (cmbxFAcessPass.ItemIndex = 0) then
  begin
    With dmTriWay do
      begin
        tblDriver.Open;
        tblDriver.First;
        while (not tblDriver.Eof) and (bfound = false)  do
          begin
            if (tblDriver['DriverID'] = sFPassID) AND (skey = '1235Driver') then
              begin
                bfound:= true;
                pnlDisplayFPass.Caption:= 'Driver Pass: ' + tblDriver['Password'];
              end;
              tblDriver.Next;
          end;
        if (bfound = false) then
          begin
            pnlDisplayFPass.Caption:= 'Not Found';
          end;
      end;
  end;

end;

procedure TfrmTriWayTransM.btnGoToTrackClick(Sender: TObject);
var icount: integer;
begin
{icount:= 0;
with dmTriWay do
  begin
    tblDeliveries.Open;
    tblDeliveries.First;
    while (not tblDeliveries.Eof) do
      begin
        if (tblDeliveries['ID'] = sUserID) then
          begin
            inc(icount);
            redListDeliveryCode.Lines.Add(IntToStr(icount)+ '. ' +tblDeliveries['DeliveryCode']);

            lstDeliveryCodes.Items.Add(IntToStr(icount) + '. ' + tblDeliveries['DeliveryCode']);
          end;
         tblDeliveries.Next;
      end;
  end; }


redDisplayDeliveryInfo.Clear;

TrackDelivery;
tbshtTrack.TabVisible:= true;
tbshtMainPage.TabVisible:= false;
end;

procedure TfrmTriWayTransM.btnLoginClick(Sender: TObject);
var sID, sPass: string;
bfound: boolean;
now: TDate;
begin
sID:= edtLogID.Text;
sPass:= edtLogPass.Text;
bfound:= False;
now:= Date;

with dmTriWay do
  begin
    tblUsers.Open;
    tblUsers.First;

    while (not tblUsers.Eof) and (bfound = false)  do
      begin
         if (tblUsers['ID'] = sID) AND (tblUsers['Password'] = spass) then
          begin
            bfound:= true;
            UseVal:= 0;
            MessageDlg('Welcome User: '+ sID, mtInformation, [mbOK], 0, mbOk);
            sUserID:= tblUsers['ID'];
            sName:= tblUsers['Name'];
            sSurn:= tblUsers['Surname'];
            birthDate:= tblUsers['DateOfBirth'];
            sGEmail:= tblUsers['Email'];
            lblMainDispayID.Caption:= sUserID+ ': ' + sName + ' ' + sSurn;
            lblDisplayMainDate.Caption:= DateToStr(now);
            lblprofile_username.Caption:= tblUsers['ID']+': ' + tblUsers['Name'] + ' ' + tblUsers['Surname'];
            lblprofile_email.Caption:= 'Email: ' + tblUsers['Email'];
            lblprofile_dateofbirth.Caption:= 'Date of Birth: ' + DateToStr(tblUsers['DateOfBirth']);
            tbshtMainPage.Visible:= true;
            pgclMain.TabIndex:= 3;
            tbshtLogin.TabVisible:= false;
            btnPayment.Enabled:= false;
          end;
          tblUsers.Next;
      end;

    //Drivers
    tblDriver.Open;
    tblDriver.First;
    while (not tblDriver.Eof) and (bfound = false)  do
      begin
         if (tblDriver['DriverID'] = sID) AND (tblDriver['Password'] = sPass) then
          begin
            bfound:= true;
            UseVal:= 1;
            MessageDlg('Welcome Driver: '+ sID, mtInformation, [mbOK], 0, mbOk);
            sDriver:= tblDriver['DriverID'];
            sName:= tblDriver['Name'];
            sSurn:= tblDriver['Surname'];
            lblDriverDisplayID.Caption:= sID+ ': ' + sName + ' ' + sSurn;
            lblDriverDate.Caption:= DateToStr(now);
            if (tblDriver['VehicleID'] = '') then
              lblVehicleID_Drivers.Caption:= 'VehicleID: Unassigned '
            else
              lblVehicleID_Drivers.Caption:= 'VehicleID: ' + tblDriver['VehicleID'];
            lblprofile_username.Caption:= tblDriver['DriverID']+': ' + tblDriver['Name'] + ' ' + tblDriver['Surname'];
            lblprofile_email.Caption:= 'Email: ' + tblDriver['Email'];
            lblprofile_dateofbirth.Caption:= 'Date of Birth: ' + DateToStr(tblDriver['DateOfBirth']);
            lblprofile_TruckID.Visible:= True;
            if (tblDriver['VehicleID'] = '') then
              lblprofile_TruckID.Caption:= 'VehicleID: Unassigned '
            else
              lblprofile_TruckID.Caption:= 'VehicleID: ' + tblDriver['VehicleID'];
            tbshtDriver.Visible:= true;
            pgclMain.TabIndex:= 4;
            tbshtLogin.TabVisible:= false;
          end;
          tblDriver.Next;
      end;

    //Admin
    tblAdmin.Open;
    tblAdmin.First;
    while (not tblAdmin.Eof) and (bfound = false)  do
      begin
         if (tblAdmin['AdminID'] = sID) AND (tblAdmin['Password'] = sPass) then
          begin
            bfound:= true;
            UseVal:= 2;
            MessageDlg('Welcome Admin: '+ sID, mtInformation, [mbOK], 0, mbOk);
            sAd:= tblAdmin['AdminID'];
            sName:= tblAdmin['Name'];
            sSurn:= tblAdmin['Surname'];
            lblAdminID_Display.Caption:= sID+ ': ' + sName + ' ' + sSurn;
            lblAdminDate.Caption:= DateToStr(now);
            lblprofile_username.Caption:= tblAdmin['AdminID']+': ' + tblAdmin['Name'] + ' ' + tblAdmin['Surname'];
            lblprofile_email.Caption:= 'Email: ' + tblAdmin['Email'];
            lblprofile_dateofbirth.Caption:= 'Date of Birth: ' + DateToStr(tblAdmin['DateOfBirth']);
            lblprofile_admin_job.Visible:= True;
            lblprofile_admin_job.Caption:= 'Department: ' + tblAdmin['Job'];
            LoadNotes;
            tbshtAdmin.Visible:= true;
            pgclMain.TabIndex:= 5;
            tbshtLogin.TabVisible:= false;
          end;
          tblAdmin.Next;
      end;

    if (bfound = false) then
      begin
        if MessageDlg('ID/Password Incorrect!'+#13' Have You forgotten Your Password. If so click Yes if Not click No and try again',mtError,[mbNo,mbYes],0,mbYes) = mrYes then
          begin
            tbshtHelp.TabVisible:= true;
            pgclMain.TabIndex:= 2;
            tbshtLogin.TabVisible:= false;
          end;
      end;
  end;

end;

procedure TfrmTriWayTransM.btnMainGoToProfileClick(Sender: TObject);
begin
  //Go to profile from Main Page

  edtRecipientName.Clear;
  sedNBoxes.Clear;
  memDescription.Clear;

  redRecipt.Clear;
  redDisplayDeliveryInfo.Clear;

  tbshtProfile.TabVisible:= true;
  tbshtMainPage.TabVisible:= false;
end;

procedure TfrmTriWayTransM.btnNewDeliveryClick(Sender: TObject);
var
//dnow: TDateTime;
rbaseCharge, rsub, rvat : real;
begin
if (edtRecipientName.Text = '') then
  begin
    MessageDlg('Please Enter Recipient/Refrence Name',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sRName:= edtRecipientName.Text;
  end;

if (cmbxProvince.ItemIndex = -1) then
  begin
    MessageDlg('Please select a Province to deliver to',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sDel_Prov:= cmbxProvince.Items[cmbxProvince.ItemIndex];
  end;

if (cmbxCity.ItemIndex = -1) then
  begin
    MessageDlg('Please select a City to deliver to',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    sDel_Cit:= cmbxCity.Items[cmbxCity.ItemIndex];
  end;

sDel_Desc:= memDescription.Text;
bDel_Frag:= chbxFragile.Checked;
iDel_NBox:= sedNBoxes.Value;
dDel_now:= now;
rbaseCharge:=  763.50; // this is the extra cost such as fuel and salaries

objDelivery:= Tdelivery.create(sRName,iDel_NBox,sDel_Desc,sDel_Prov,sDel_Cit,bDel_Frag,dDel_now);
objDelivery.FindDistance;
objDelivery.CalcCost(rbaseCharge);

sDeliveryCode:= objDelivery.GetDeliveryCode;



  //Gets Cost of Delivery
  rDeliveryCost:= objDelivery.GetCost;
  rvat:= (15/100)*(rDeliveryCost); // Seperates VAT from it
  rsub:= objDelivery.GetCost - rvat;  // Display Cost without VAT

  // Displays Receipt once new delivery created
  redRecipt.Lines.Add('Sub total: '+ FloatToStrF(rsub,ffCurrency,8,2)+ #9 + 'Click Payment Button to pay for delivery before moveing on' +#13 +
  'VAT: '+ FloatToStrF(rvat,ffCurrency,8,2)+ #13 +
  'Final Total: '+ FloatToStrF(rDeliveryCost,ffCurrency,8,2) + #13+
  '============================================================'+ #13 +
  'Bank: First National Bank (FNB)' + #9 + 'Account Number: 62839124567' + #13 +
  'Branch Code: 250655');

  // Displays To string function which is the Delivery info
  redDisplayDeliveryInfo.Lines.Add(objDelivery.ToString);

  // Buttons for confimation and editing
  bitbtnConfirm_Delivery.Visible:= true;
  bitbtnEdit_Delivery.Visible:= True;
  bitbtnCancel_Delivery.Visible:= True;
  btnNewDelivery.Visible:= false;

  edtRecipientName.Enabled:= false;
  sedNBoxes.Enabled:= false;
  memDescription.Enabled:= false;
  cmbxProvince.Enabled:= false;
  cmbxCity.Enabled:= false;
  chbxFragile.Enabled:= false;

  //When New deivey is created only payment button is avaliable so that they make ayment first
  bitbtnMainLogOut.Enabled:= false;
  btnNewDelivery.Enabled:= false;
end;

procedure TfrmTriWayTransM.btnNew_VehiclesClick(Sender: TObject);
var sVeh_Make, sVeh_Model, sVeh_FuelT, SVeh_Name, sVeh_Type: string;
bHasTrail: Boolean;
iCapaity: integer;
Date: TDate;
begin
  // Collection of information
  Date:= Now;

  if (rgpVehicles.ItemIndex = -1) then
    begin
      MessageDlg('Select a Vehicle Type', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end
    else
      sVeh_Type:= rgpVehicles.Items[rgpVehicles.ItemIndex];

  if (cmbxVehicle_Make.Text = '') then
    begin
      MessageDlg('Select a Vehicle Make', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end
    else
      sVeh_Make:= cmbxVehicle_Make.Items[cmbxVehicle_Make.ItemIndex];

  if (cmbxVehicle_Model.Text = '') then
    begin
      MessageDlg('Select a Vehicle Model', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end
    else
      sVeh_Model:= cmbxVehicle_Model.Items[cmbxVehicle_Model.ItemIndex];

  if (cmbxFuel_Type.Text = '') then
    begin
      MessageDlg('Select a Fuel Type', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end
    else
      sVeh_FuelT:= cmbxFuel_Type.Items[cmbxFuel_Type.ItemIndex];

  if (edtVehicle_Name.Text = '') then
    begin
      MessageDlg('Select a Fuel Type', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end
    else
      SVeh_Name:= edtVehicle_Name.Text;


  bHasTrail:= chkHasTrailer.Checked;
  iCapaity:= sedSeatingCapacity.Value;




  // Dependiing on selection in radio-group
  case rgpVehicles.ItemIndex of
    0: begin // Small Truck
      chkHasTrailer.Enabled:= true;
      sedSeatingCapacity.Visible:= false;

      objSmallTruck:= TSmallTruck.Create(SVeh_Name, sVeh_Make, sVeh_Model, sVeh_FuelT, Date, bHasTrail);

      with dmTriWay do
        begin
          tblVehicles.Open;
          tblVehicles.Append;
          tblVehicles['VehicleID']:= objSmallTruck.GetTruckCode;
          tblVehicles['Vehicle_Name']:= SVeh_Name;
          tblVehicles['Vehicle_Type']:= sVeh_Type;
          tblVehicles['Vehicle_Make']:= sVeh_Make;
          tblVehicles['Vehicle_Model']:= sVeh_Model;
          tblVehicles['Fuel_Type']:= sVeh_FuelT;
          tblVehicles['Purchase_Price']:=  objSmallTruck.CalcPrice;
          tblVehicles['Purchase_Date']:=  DateToStr(Date);
          tblVehicles['MaxCapacity']:= objSmallTruck.MaxCapacity;
          tblVehicles['FuelConsumption_Rate']:= objSmallTruck.FuelConsRate;
          tblVehicles['Services']:= objSmallTruck.Services;
          tblVehicles['Has_Trailer']:= bHasTrail;

          tblVehicles.Post;
          tblDeliveries.Close;
        end;

      MessageDlg('Congrats ' + sAd + ' A new Vehicle Order has been made to Manufactures .',mtInformation,[mbOk],0,mbOk);
    end;

    1: begin  // Medium Truck
      chkHasTrailer.Enabled:= true;
      sedSeatingCapacity.Visible:= false;

      objMediumTruck:= TMediumTruck.Create(SVeh_Name, sVeh_Make, sVeh_Model, sVeh_FuelT, Date, bHasTrail);

       with dmTriWay do
        begin
          tblVehicles.Open;
          tblVehicles.Append;
          tblVehicles['VehicleID']:= objMediumTruck.GetTruckCode;
          tblVehicles['Vehicle_Name']:= SVeh_Name;
          tblVehicles['Vehicle_Type']:= sVeh_Type;
          tblVehicles['Vehicle_Make']:= sVeh_Make;
          tblVehicles['Vehicle_Model']:= sVeh_Model;
          tblVehicles['Fuel_Type']:= sVeh_FuelT;
          tblVehicles['Purchase_Price']:=  objMediumTruck.CalcPrice;
          tblVehicles['Purchase_Date']:=  DateToStr(Date);
          tblVehicles['MaxCapacity']:= objMediumTruck.MaxCapacity;
          tblVehicles['FuelConsumption_Rate']:= objMediumTruck.FuelConsRate;
          tblVehicles['Services']:= objMediumTruck.Services;
          tblVehicles['Has_Trailer']:= bHasTrail;

          tblVehicles.Post;
          tblDeliveries.Close;
        end;

      MessageDlg('Congrats ' + sAd + ' A new Vehicle Order has been made to Manufactures .',mtInformation,[mbOk],0,mbOk);
    end;

    2: begin    // Large Truck
      chkHasTrailer.Enabled:= true;
      sedSeatingCapacity.Visible:= false;

      objLargeTruck:= TLargeTruck.Create(SVeh_Name, sVeh_Make, sVeh_Model, sVeh_FuelT, Date, bHasTrail);

       with dmTriWay do
        begin
          tblVehicles.Open;
          tblVehicles.Append;
          tblVehicles['VehicleID']:= objLargeTruck.GetTruckCode;
          tblVehicles['Vehicle_Name']:= SVeh_Name;
          tblVehicles['Vehicle_Type']:= sVeh_Type;
          tblVehicles['Vehicle_Make']:= sVeh_Make;
          tblVehicles['Vehicle_Model']:= sVeh_Model;
          tblVehicles['Fuel_Type']:= sVeh_FuelT;
          tblVehicles['Purchase_Price']:=  objLargeTruck.CalcPrice;
          tblVehicles['Purchase_Date']:=  DateToStr(Date);
          tblVehicles['MaxCapacity']:= objLargeTruck.MaxCapacity;
          tblVehicles['FuelConsumption_Rate']:= objLargeTruck.FuelConsRate;
          tblVehicles['Services']:= objLargeTruck.Services;
          tblVehicles['Has_Trailer']:= bHasTrail;

          tblVehicles.Post;
          tblDeliveries.Close;
        end;

      MessageDlg('Congrats ' + sAd + ' A new Vehicle Order has been made to Manufactures .',mtInformation,[mbOk],0,mbOk);
    end;

    3: begin   // Van
      chkHasTrailer.Enabled:= false;
      sedSeatingCapacity.Visible:= false;

      objVan:= TVan.Create(SVeh_Name, sVeh_Make, sVeh_Model, sVeh_FuelT, Date);

      with dmTriWay do
        begin
          tblVehicles.Open;
          tblVehicles.Append;
          tblVehicles['VehicleID']:= objVan.GetTruckCode;
          tblVehicles['Vehicle_Name']:= SVeh_Name;
          tblVehicles['Vehicle_Type']:= sVeh_Type;
          tblVehicles['Vehicle_Make']:= sVeh_Make;
          tblVehicles['Vehicle_Model']:= sVeh_Model;
          tblVehicles['Fuel_Type']:= sVeh_FuelT;
          tblVehicles['Purchase_Price']:=  objVan.CalcPrice;
          tblVehicles['Purchase_Date']:=  DateToStr(Date);
          tblVehicles['MaxCapacity']:= objVan.MaxCapacity;
          tblVehicles['FuelConsumption_Rate']:= objVan.FuelConsRate;
          tblVehicles['Services']:= objVan.Services;

          tblVehicles.Post;
          tblDeliveries.Close;
        end;

      MessageDlg('Congrats ' + sAd + ' A new Vehicle Order has been made to Manufactures .',mtInformation,[mbOk],0,mbOk);
    end;

    4: begin    // Bus
      chkHasTrailer.Enabled:= false;
      sedSeatingCapacity.Visible:= true;

      objBus:= TBus.Create(SVeh_Name, sVeh_Make, sVeh_Model, sVeh_FuelT, Date, iCapaity);

      with dmTriWay do
        begin
          tblVehicles.Open;
          tblVehicles.Append;
          tblVehicles['VehicleID']:= objBus.GetTruckCode;
          tblVehicles['Vehicle_Name']:= SVeh_Name;
          tblVehicles['Vehicle_Type']:= sVeh_Type;
          tblVehicles['Vehicle_Make']:= sVeh_Make;
          tblVehicles['Vehicle_Model']:= sVeh_Model;
          tblVehicles['Fuel_Type']:= sVeh_FuelT;
          tblVehicles['Purchase_Price']:=  objBus.CalcPrice;
          tblVehicles['Purchase_Date']:=  DateToStr(Date);
          tblVehicles['MaxCapacity']:= objBus.MaxCapacity;
          tblVehicles['FuelConsumption_Rate']:= objBus.FuelConsRate;
          tblVehicles['Services']:= objBus.Services;

          tblVehicles.Post;
          tblDeliveries.Close;
        end;

      MessageDlg('Congrats ' + sAd + ' A new Vehicle Order has been made to Manufactures .',mtInformation,[mbOk],0,mbOk);
    end;

  end;

  // Clear
  rgpVehicles.ItemIndex:= -1;

  edtVehicle_Name.Clear;
  cmbxVehicle_Make.Clear;
  cmbxVehicle_Model.Clear;
  cmbxFuel_Type.ItemIndex:= -1;
  chkHasTrailer.Checked:= false;
  sedSeatingCapacity.Value:= 0;
  imgVehicles.Picture.LoadFromFile('Images\Logo.png');

end;

procedure TfrmTriWayTransM.btnDamaged_DeliveryClick(Sender: TObject);
begin
with dmTriWay do
  begin
    qryDeliveries.Close;
    qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, ItemDetails, Delicate, Payment FROM tblDeliveries where DeliveryDate > NOW() and DriverID ='+ QuotedStr(sDriver)+' and Damaged = true Order by OrderDate ASC';
    qryDeliveries.Open;
  end;
end;

procedure TfrmTriWayTransM.btnPaymentClick(Sender: TObject);
var myReceipt: TextFile;
begin

   // Assign the file for writing


   // Append to existing file or create if it doesn't exist
   if not FileExists('Textfiles\Receipt Book.txt')  then
    begin
      AssignFile(myReceipt, 'Textfiles\Receipt Book.txt');
      Rewrite(myReceipt);
      //ShowMessage('File not exists');
    end
    else
    begin
      AssignFile(myReceipt, 'Textfiles\Receipt Book.txt');
      //ShowMessage('File exists');
    end;
      Append(myReceipt);


   // Write the receipt code to the file
   Writeln(myReceipt, sUserID + '|' + sDeliveryCode + '|' + GenerateRecipteCode + '|' + FloatToStrF(rDeliveryCost,ffCurrency,8,2) + '|' + DateToStr(Date) );

   // Close File
   CloseFile(myReceipt);

   // Edit Paid (yes/No) field in database
   with dmTriWay do
   begin
     tblDeliveries.Open;
     tblDeliveries.Edit;
     if (tblDeliveries['ID'] = sUserID) and (tblDeliveries['DeliveryCode'] = sDeliveryCode) then
      begin
        tblDeliveries['Paid']:= true;
      end;
   end;

   MessageDlg('Once Payment has been made, order will be sent through and receipt will be generated and mailed to your email', mtInformation, [mbYes], 0, mbYes);

   bitbtnCancel_Delivery.Visible:= false;
   bitbtnConfirm_Delivery.Visible:= false;
   bitbtnEdit_Delivery.Visible:= false;
   bitbtnAccept_Edit.Visible:= false;

   edtRecipientName.Clear;
   sedNBoxes.Value:= 1;
   memDescription.Clear;
   cmbxProvince.ItemIndex:= -1;
   cmbxCity.ItemIndex:= -1;
   chbxFragile.Checked:= false;
   redRecipt.Clear;

   btnGoToTrack.Enabled:= true;
   btnMainGoToProfile.Enabled:= true;
   bitbtnMainLogOut.Enabled:= true;
   btnNewDelivery.Enabled:= true;
   ShellExecute(Handle,'open','https://triwaytransport-payment.netlify.app/',nil,nil,0);

   btnPayment.Enabled:= True;

   lstDeliveryCodes.Clear;

end;

procedure TfrmTriWayTransM.btnPending_DeliveriesClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryDeliveries.Close;
      qryDeliveries.SQL.Text := 'SELECT * FROM tblDeliveries where DeliveryDate > NOW() Order by OrderDate ASC';
      qryDeliveries.Open;

      ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
    end;
end;

procedure TfrmTriWayTransM.btnReceiptsClick(Sender: TObject);
var Rfile : TextFile;
ipos: integer;
sline, sUser, sReceipt, sDelCode, sAmount : string;
begin
  if (not FileExists('Textfiles\Receipt Book.txt')) then
    begin
      MessageDlg('File Does Not Exist', mtError, [mbOK], 0, mbOK);
      Exit;
    end;

  AssignFile(Rfile, 'Textfiles\Receipt Book.txt');
  Reset(Rfile);
  redFinance.Clear;
  redFinance.Lines.Add('Receipt' + #9 + 'Amount' + #9 + 'Date' + #9 + 'DeliveryCode' + #9 + 'User');


  while not Eof(Rfile) do // while not at the end of the text file
    begin
      Readln(Rfile, sline);

      // 0802276656187|Lov#216GU|RC-CHJ8ETE22W|R3 066.50|2025/08/08
      ipos:= pos('|',sline);
      sUser:= Copy(sline,1,ipos-1); // 0802276656187
      Delete(sline,1,ipos); // sLine = Lov#216GU|RC-CHJ8ETE22W|R3 066.50|2025/08/08

      ipos:= pos('|',sline);
      sDelCode:= Copy(sline,1,ipos-1); // Lov#216GU
      Delete(sline,1,ipos);  // sLine = RC-CHJ8ETE22W|R3 066.50|2025/08/08

      ipos:= pos('|',sline);
      sReceipt:= Copy(sline,1,ipos-1); // RC-CHJ8ETE22W
      Delete(sline,1,ipos);  // sLine = R3 066.50|2025/08/08

      ipos:= pos('|',sline);
      sAmount:= Copy(sline,1,ipos-1); // R3 066.50
      Delete(sline,1,ipos);  // sLine = 2025/08/08


      redFinance.Lines.Add(sReceipt + #9 + sAmount + #9 + sline +#9 + sDelCode + #9 + sUser)

    end;
  CloseFile(Rfile);
end;

procedure TfrmTriWayTransM.btnRegisterClick(Sender: TObject);
var ssName, ssSurn, ssEmail,sspass,sCUser,sAdJob, sJob : string;
dtb,dnow: TDate;
rSalary: real;
begin
  Randomize; // Making sure there are no repititions

  // Verification 
  if (edtRegName.Text = '') then  // if the edit box is empty
    begin
      // Message to warn user to enter name and exit the register process
      MessageDlg('Please Enter your Name',mtWarning,[mbOk],0,mbOk);
      Exit;
    end
    else
    begin
      // if it is entered put it in variable and continue process 
      ssName:= edtRegName.Text;
    end;

  if (edtRegSurn.Text = '') then   // if the edit box is empty
    begin
      // Message to warn user to enter surname and exit the register process
      MessageDlg('Please Enter your Surname',mtWarning,[mbOk],0,mbOk);
      Exit;
    end
    else
    begin
      // if it is entered put it in variable and continue process
      ssSurn:= edtRegSurn.Text;
    end;
  
  if (edtRegEmail.Text = '') then   // if the edit box is empty
    begin
      // Message to warn user to enter email and exit the register process
      MessageDlg('Please Enter your Email',mtWarning,[mbOk],0,mbOk);
      Exit;
    end
    else
    begin
      // if it is entered put it in variable and continue process
      ssEmail:= edtRegEmail.Text;
    end;

  // Date of Birth 
  dtb:= dtpRegDTB.Date;
  dnow:= Now;

  // if the combo box is empty users is registering 
  if (cmbxAccess.ItemIndex = -1) then
    begin
      With dmTriWay do
        begin
          tblUsers.Open;
          tblUsers.Append;  // open users database to write to 

          // Create User ID
          sCUser:= LowerCase(copy(ssname,1,1))+'.'+LowerCase(Copy(ssSurn,1,3))+inttostr(RandomRange(1,101))+ '@user';
          ShowMessage('ID: '+ sCUser);
          tblUsers['ID']:= sCUser;

          // Create Password
          sspass:= InputBox('Password','Create a Password','');  // to add password
          if length(sspass)<8 then  // if less than 8 characters 
            begin
              // message to show that password should be more that 8 charcacters & exit
              MessageDlg('Password Must be 8 Characters or More.',mtwarning,[mbOk],0,mbOk);
              Exit;
            end
            else
            begin
              // Else append to the users table 
              tblUsers['Password']:= sspass;
            end;

          // Append info to Users table   
          tblUsers['Name']:= ssname;
          tblUsers['Surname']:= ssSurn;
          tblUsers['Email']:= ssEmail;
          tblUsers['DateofBirth']:= DateToStr(dtb);
          tblUsers['RegDate']:= DateToStr(dnow);
          tblUsers.Post;
          MessageDlg('Congrats User: ' + sCUser + ' You Are Successfuly Registered in as a User.',mtInformation,[mbOk],0,mbOk);

          edtRegName.Clear;
          edtRegSurn.Clear;
          edtRegEmail.Clear;
          dtpRegDTB.Date:= Now;
          cmbxAccess.ItemIndex:= -1;

        end;
    end
    else
    // If Admin in the combo box is selected and Acess key is correctly enterd 
  if (cmbxAccess.ItemIndex = 0) and (InputBox('Enter Access Key','Admin Access Key','') = 'Admin1234') then
    begin
      with dmTriWay do
        begin
          tblAdmin.Open;
          tblAdmin.Append;  // open Admin table to write to

          // Collect admin Job  
          sAdJob:= InputBox('Enter Admin Job','Admin Type','');
          case sAdJob[1] of    // Special code for specific Admin
          'F': sJob:= 'FN';  // Finanace
          'H': sJob:= 'HR';  // Human Resources
          'C': sJob:= 'CEO'; // CEO
          'T': sJob:= 'TRP'; // Transportaion Management
          'S': sJob:= 'SEC'; // Secritary
          'I': sJob:= 'IT';  // Information Technology
          'M': sJob:= 'MG';  // Management
          end;

          case sAdJob[1] of    // Special code for specific Admin
          'F': rSalary:= 819000.00;  // Finanace
          'H': rSalary:= 640000.00;  // Human Resources
          'C': rSalary:= 1400000.00; // CEO
          'T': rSalary:= 1150206.00; // Transportaion Management
          'S': rSalary:= 441000.00; // Secritary
          'I': rSalary:= 960000.00;  // Information Technology
          'M': rSalary:= 500000.00;  // Management
          end;

          // Create Admin ID
          sCUser:= 'AD-'+ sJob +inttostr(RandomRange(100,1000)) + UpperCase(copy(ssname,1,1)) + UpperCase(copy(ssSurn,1,3)) ;
          ShowMessage('AdminID: '+ sCUser);
          tblAdmin['AdminID']:= sCUser;

          // Create password 
          sspass:= InputBox('Password','Create a Password','');
          if length(sspass)<8 then  // if less than 8 characters 
            begin
              // message to show that password should be more that 8 charcacters & exit
              MessageDlg('Password Must be 8 Characters or More.',mtwarning,[mbOk],0,mbOk);
              Exit;
            end
            else
            begin
              // else append to the Admin table 
              tblAdmin['Password']:= sspass;
            end;
            
          // Append info to admin table   
          tblAdmin['Job']:= sAdJob;
          tblAdmin['Name']:= ssname;
          tblAdmin['Surname']:= ssSurn;
          tblAdmin['Email']:= ssEmail;
          tblAdmin['DateofBirth']:= DateToStr(dtb);
          tblAdmin['Salary']:= rSalary;
          tblAdmin['RegDate']:= DateToStr(dnow);
          tblAdmin.Post;
          MessageDlg('Congrats User: ' + sCUser + ' You Are Successfuly Registered in as a Admin.',mtInformation,[mbOk],0,mbOk);

          edtRegName.Clear;
          edtRegSurn.Clear;
          edtRegEmail.Clear;
          dtpRegDTB.Date:= Now;
          cmbxAccess.ItemIndex:= -1;


        end;
    end
    else
    // If Admin in the combo box is selected and Acess key is correctly enterd
  if (cmbxAccess.ItemIndex = 1) and (InputBox('Enter Access Key','Driver Access Key','') = 'Driver1234') then
    begin
      with dmTriWay do
        begin
          tblDriver.Open;
          tblDriver.Append;  // open Admin table to write to

          // Create Driver ID
          sCUser:= 'DR-'+inttostr(RandomRange(100,1000)) + UpperCase(copy(ssname,1,1)) + UpperCase(copy(ssSurn,1,3));
          ShowMessage('DriverID: '+ sCUser);
          tblDriver['DriverID']:= sCUser;

          // Create password 
          sspass:= InputBox('Password','Create a Password','');
          if length(sspass)<8 then    // if less than 8 characters
            begin
              // message to show that password should be more that 8 charcacters & exit
              MessageDlg('Password Must be 8 Characters or More.',mtwarning,[mbOk],0,mbOk);
              Exit;
            end
            else
            begin
              tblDriver['Password']:= sspass;
            end;

          // append info to drivers table   
          tblDriver['Name']:= ssname;
          tblDriver['Surname']:= ssSurn;
          tblDriver['Email']:= ssEmail;
          tblDriver['DateofBirth']:= DateToStr(dtb);
          tblDriver['Salary']:= 154000.00;
          tblDriver['RegDate']:= DateToStr(dnow);
          tblDriver.Post;
          MessageDlg('Congrats User: ' + sCUser + ' You Are Successfuly Registered in as a Driver.',mtInformation,[mbOk],0,mbOk);

          edtRegName.Clear;
          edtRegSurn.Clear;
          edtRegEmail.Clear;
          dtpRegDTB.Date:= Now;
          cmbxAccess.ItemIndex:= -1;


        end;
    end;
end;

procedure TfrmTriWayTransM.btnSell_VehicleClick(Sender: TObject);
var sVeh, sComp: string;
idx: integer;
tSell: TextFile;
bfound: Boolean;
begin

  bfound:= false;

  if (lstSell_Vehicles.ItemIndex = -1) then
    begin
      MessageDlg('Please Select a Vehicle', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end
    else
      sVeh:= lstSell_Vehicles.Items[lstSell_Vehicles.ItemIndex];

  idx:= lstCompanies.ItemIndex;
  if (idx < 0) then
    begin
      MessageDlg('Please Select a Company', mtWarning, [mbOK], 0, mbOK);
      Exit;
    end;

    //Test if file exsists
  if not FileExists('Textfiles\Sold Vehicles.txt') then
    begin
      // if not assign file to variable & recreate the file
      AssignFile(tSell, 'Textfiles\Sold Vehicles.txt');
      Rewrite(tSell);
      ShowMessage('File Does not Exsist');
    end
    else
    begin
      // If it does exist assigned file to variable
      AssignFile(tSell, 'Textfiles\Sold Vehicles.txt');
      //ShowMessage('File Exsist');
    end;





  if MessageDlg('Confirming that You want to sell ' + sVeh + ' to ' + arrCompanies[idx],mtConfirmation,[mbYes,mbNO],0,mbYes)= mrYes  then
    begin

      with dmTriWay do
        begin
          tblVehicles.Open;
          tblVehicles.First;   // start at the first recored
            while (not tblVehicles.Eof) and (bfound = False) do
              begin
                if (tblVehicles['VehicleID'] = sVeh) then
                  begin
                    bfound := true;

                    Append(tSell); // Append for writing

                    // Write to deleted info to file
                    Writeln(tSell, sVeh + '|' + tblVehicles['Vehicle_Type'] + '|' +
                    tblVehicles['Vehicle_Name'] + '|' + tblVehicles['Vehicle_Make'] + ', ' + tblVehicles['Vehicle_Model'] + '|' +
                    + tblVehicles['Fuel_Type'] + '|');
                    Writeln(tSell, 'Purchase Price:' + FloatToStrF(tblVehicles['Purcahse_Price'], ffCurrency, 8, 2) + '|' + 'Purchase Date: ' + DateToStr(tblVehicles['Purchase_Date']));
                    Writeln(tSell, 'Company: ' + arrCompanies[idx] + '|' + 'Price: R' + IntToStr(arrFixedPrices[idx]));
                    Writeln(tSell, 'Date of Sale: ' + FormatDateTime('dd/mm/yyyy', now) + #13);

                    // CloseFile
                    CloseFile(tSell);

                    // Delete Delivery from table
                    tblVehicles.Delete;

                    // Message to show that delivery no longer exists
                    MessageDlg('Your Vehicle Has been sold for R' + IntToStr(arrFixedPrices[idx]) + '.00',mtInformation,[mbOK],0,mbOK);
                  end
                  else
                    tblDeliveries.Next;   // if not found move to the next recored
              end;
        end;

      lstCompanies.Clear;
      lstSell_Vehicles.Clear;
       // Vehicles List
      LoadVehiclesToSell;

      // Load Companies
      LoadComapnies;

      redOffers_Display.Clear;
    end
    else Exit;



end;

procedure TfrmTriWayTransM.btnSell_VehiclesClick(Sender: TObject);
begin
 // Allow Panel to be visable
  pnlSell_Vehicles.Visible:= True;

  // Deactivate other buttons
  btnDisplay_Vehicles.Enabled:= false;
  btnSell_Vehicles.Enabled:= false;
  btnAssign_Vehicles.Enabled:= false;

  // Vehicles List
  LoadVehiclesToSell;

  // Load Companies
  LoadComapnies;

end;

procedure TfrmTriWayTransM.btnTotal_SalesClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryDeliveries.Close;
      qryDeliveries.SQL.Text := 'SELECT SUM(Payment) AS [Total Sales] FROM tblDeliveries';
      qryDeliveries.Open;
    end;
end;

procedure TfrmTriWayTransM.btnTotal_Users_DeliveriesClick(Sender: TObject);
begin
  with dmTriWay do
    begin

      qryUsers.Close;
      qryUsers.SQL.Text := 'SELECT d.[ID], d.[Name], d.[Surname], '+
      'COUNT(dl.[DeliveryCode]) AS [Total Deliveries], ' +
      'SUM(dl.[Payment]) AS [Total Payment] ' +
      'FROM [tblUsers] AS d INNER JOIN [tblDeliveries] AS dl '+
      'ON d.[ID] = dl.[ID] GROUP BY d.[ID], d.[Name], d.[Surname] '+
      'ORDER BY COUNT(dl.[DeliveryCode]) DESC';
      qryUsers.Open;
    end;
end;

procedure TfrmTriWayTransM.btnWeek_RosterClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryDeliveries.Close;
      qryDeliveries.SQL.Text := 'SELECT DeliveryCode, DriverID FROM tblDeliveries where DeliveryDate > NOW()';
      qryDeliveries.Open;

      redAssignments.Clear;
      redAssignments.SelAttributes.Style:= [fsBold];
      redAssignments.Lines.Add(#9 + 'DeliveryCode' + #9 + 'Driver' + #13);
      redAssignments.SelAttributes.Style:= [];

      while not qryDeliveries.Eof do
        begin
          redAssignments.Lines.Add(#9 + qryDeliveries.FieldByName('DeliveryCode').AsString + #9 + qryDeliveries.FieldByName('DriverID').AsString);
          redAssignments.Lines.Add(#9 + '--------------------------------------------------------');
          qryDeliveries.Next;
        end;
    end;
end;

procedure TfrmTriWayTransM.btnWrite_NotesClick(Sender: TObject);
var
 sApprovePass: string;
begin
  if (redNotes.Text = '') then
    begin
      MessageDlg('Note Pad is Empty Please Write Contract', mtError, [mbOK], 0, mbOK);
      Exit;
    end
    else
      sApprovePass:= InputBox('Password', 'Enter Password', '');


  if (sApprovePass = 'NOTE') then
    begin
      bitbtnApprove_Note.Enabled:= True;
      btnWrite_Notes.Enabled:= false;
    end
    else
    begin
      MessageDlg('Incorrect Password = NOTE', mtError, [mbOK], 0, mbOK);
      Exit;
    end;
end;

procedure TfrmTriWayTransM.btnDR_Total_DeliveriesClick(Sender: TObject);
begin
  with dmTriWay do
    begin

      qryDeliveries.Close;
      //qryDriver.SQL.Text := 'SELECT tblDriver.DriverID, tblDriver.Name AS [Driver Name], Count(tbDeliveries.DeliveryCode) AS [Total Deliveries] FROM tblDriver '+
              //'LEFT JOIN tblDeliveries ON tblDriver.DriverID = tblDeliveres.DriverID ' +
              //'GROUP BY DriverID, tblDriver.[Name] ORDER BY [Total Deliveries] ASC';
      qryDriver.SQL.Text := 'SELECT d.[DriverID], d.[Name], d.[Surname], '+
      'COUNT(dl.[DeliveryCode]) AS [Total Deliveries] '+
      'FROM [tblDriver] AS d INNER JOIN [tblDeliveries] AS dl '+
      'ON d.[DriverID] = dl.[DriverID] GROUP BY d.[DriverID], d.[Name], d.[Surname] '+
      'ORDER BY COUNT(dl.[DeliveryCode]) DESC';
      qryDriver.Open;
  end;
end;

function TfrmTriWayTransM.CalcCOS: String;
var TotalBoxes: integer;
rCOS, rPricePerBox: real;
begin
  with dmTriWay do 
    begin 
      qryDeliveries.Close;
      qryDeliveries.SQL.Clear;
      qryDeliveries.SQL.Text:= 'SELECT SUM(Boxes) As [Total Boxes] from tblDeliveries ';
      qryDeliveries.Open;

      // if there are no rcords sum will return null
      if (not qryDeliveries.FieldByName('Total Boxes').IsNull) then
        begin
          TotalBoxes:= qryDeliveries.FieldByName('Total Boxes').AsInteger;
        end
        else
          TotalBoxes:= 0;

      rPricePerBox:= 2.30;    
      rCOS:= TotalBoxes * rPricePerBox;

      Result:= FloatToStrF(rCOS, ffCurrency, 8, 2);
      
    end;

end;

function TfrmTriWayTransM.CalcTotalReturn: Real;
var Dfile : TextFile;
ipos: integer;
sline, sUser, sRefund, sDelCode, sAmount : string;
rAmount: real;
begin
  if (not FileExists('Textfiles\Deleted Delivery.txt')) then
    begin
      MessageDlg('File Does Not Exist', mtError, [mbOK], 0, mbOK);
      Exit;
    end;

  AssignFile(Dfile, 'Textfiles\Deleted Delivery.txt');
  Reset(Dfile);


  rAmount:= 0;

  while not Eof(Dfile) do // while not at the end of the text file
    begin
      Readln(Dfile, sline);

      // ddd#96FS|RF-VWY2I|0802276656187|$947.74|03/08/2025 02:40
      ipos:= pos('|',sline);
      sDeliveryCode:= Copy(sline,1,ipos-1); // ddd#96FS
      Delete(sline,1,ipos); // sLine = RF-VWY2I|0802276656187|$947.74|03/08/2025 02:40

      ipos:= pos('|',sline);
      sRefund:= Copy(sline,1,ipos-1); // RF-VWY2I
      Delete(sline,1,ipos);  // sLine = 0802276656187|$947.74|03/08/2025 02:40

      ipos:= pos('|',sline);
      sUser:= Copy(sline,1,ipos-1); // 0802276656187
      Delete(sline,1,ipos+1);  // sLine = 947.74|03/08/2025 02:40

      ipos:= pos('|',sline);
      sAmount:= Copy(sline,1,ipos-1);

      // Remove spaces (thousand separator)
      sAmount:= StringReplace(sAmount, ',', '', [rfReplaceAll]);
      rAmount:= rAmount + StrToFloat(sAmount); // 947.74 + Previous Amount


    end;
  Result:= rAmount;
  CloseFile(Dfile);
end;

function TfrmTriWayTransM.CalcTotalSales: string;
var Totalpayments: real;
begin
  with dmTriWay do 
    begin 
      qryDeliveries.Close;
      qryDeliveries.SQL.Clear;
      qryDeliveries.SQL.Text:= 'SELECT SUM(Payment) As [Total Income] from tblDeliveries where Paid = true';
      qryDeliveries.Open;

      // if there are no rcords sum will return null 
      if (not qryDeliveries.FieldByName('Total Income').IsNull) then
        begin
          Totalpayments:= qryDeliveries.FieldByName('Total Income').AsCurrency;
        end
        else
          Totalpayments:= 0;
      
      Result:= FloatToStrF(Totalpayments,ffCurrency,8,2);

    end;
end;

procedure TfrmTriWayTransM.btnDisplay_DriversClick(Sender: TObject);
begin
with dmTriWay do
  begin
    if not conTriWayDatabase.Connected then
   conTriWayDatabase.Connected := True;

  qryDriver.Close;
  qryDriver.SQL.Text := 'SELECT * FROM tblDriver';
  qryDriver.Open;
  end;

end;

procedure TfrmTriWayTransM.btnDisplay_UsersClick(Sender: TObject);
begin
  with dmTriWay do
    begin
      qryUsers.Close;
      qryUsers.SQL.Text := 'SELECT * FROM tblUsers';
      qryUsers.Open;
    end;
end;

procedure TfrmTriWayTransM.btnDisplay_VehiclesClick(Sender: TObject);
begin
   with dmTriWay do
    begin
      qryVehicles.Close;
      qryVehicles.SQL.Text := 'SELECT * FROM tblVehicles';
      qryVehicles.Open;
    end;
end;

procedure TfrmTriWayTransM.chkEdit_DeliveryClick(Sender: TObject);
begin
if (chkEdit_Delivery.Checked = true) then
  begin
    pnlEdit_Delivery.Visible:= True;

  end
  else
    pnlEdit_Delivery.Visible:= false;

end;

procedure TfrmTriWayTransM.chkListEditClick(Sender: TObject);
begin
  case rdgEditProfile.ItemIndex of
    0: EN:= 'N';
    1: ES:= 'S';
    2: ED:= 'D';
    3: EM:= 'M';
  end;
end;

procedure TfrmTriWayTransM.cmbxVehicle_MakeChange(Sender: TObject);
begin
cmbxVehicle_Model.Clear;
cmbxVehicle_Model.Enabled:= true;

  case rgpVehicles.ItemIndex of
    0: begin    // Small Truck
        case cmbxVehicle_Make.ItemIndex of
          0: begin      //Isuzu N-Series
              cmbxVehicle_Model.Items.Add('NPR 400');
              imgVehicles.Picture.LoadFromFile('Images\Isuzu.jpg');
             end;

          1: begin  //Mercedes-Benz
              cmbxVehicle_Model.Items.Add('Actros');
              imgVehicles.Picture.LoadFromFile('Images\Mercedes-Benz Actros.jpg');
             end;

          2: begin  //Hino
              cmbxVehicle_Model.Items.Add('300 Series');
              imgVehicles.Picture.LoadFromFile('Images\Hino 300 Series.jpg');
             end;
        end;
      end;

    1: begin  // Medium Truck
        case cmbxVehicle_Make.ItemIndex of
          0: begin   //Isuzu N-Series
               cmbxVehicle_Model.Items.Add('NPR 400');
               imgVehicles.Picture.LoadFromFile('Images\Isuzu.jpg');
             end;

          1: begin  //Mercedes-Benz
               cmbxVehicle_Model.Items.Add('Atego');
               imgVehicles.Picture.LoadFromFile('Images\Mercedes-Benz Atego.jpg');
             end;

          2: begin //Volvo
               cmbxVehicle_Model.Items.Add('FL Series');
               imgVehicles.Picture.LoadFromFile('Images\Volvo FL Series.jpeg');
             end;
        end;
      end;

    2: begin   // Large Truck
        case cmbxVehicle_Make.ItemIndex of
          0: begin //Mercedes-Benz
               cmbxVehicle_Model.Items.Add('Actros');
               imgVehicles.Picture.LoadFromFile('Images\Mercedes-Benz Actros.jpg');
             end;

          1: begin //Scania
               cmbxVehicle_Model.Items.Add('R-Serieso');
               imgVehicles.Picture.LoadFromFile('Images\Scania R-Series.jpg');
             end;

          2: begin //Volvo
               cmbxVehicle_Model.Items.Add('FH Series');
               imgVehicles.Picture.LoadFromFile('Images\Volvo FH Series.jpg');
             end;
        end;
      end;

    3: begin  // Van
        case cmbxVehicle_Make.ItemIndex of
          0: begin  //Ford
               cmbxVehicle_Model.Items.Add('Transit');
               imgVehicles.Picture.LoadFromFile('Images\Ford Transit.jpg');
             end;

          1: begin //Mercedes-Benz
               cmbxVehicle_Model.Items.Add('Sprinter');
               imgVehicles.Picture.LoadFromFile('Images\Mercedes-Benz Sprinter.jpg');
             end;

          2: begin //Toyota
               cmbxVehicle_Model.Items.Add('HiAce');
               imgVehicles.Picture.LoadFromFile('Images\Toyota HiAce.jpg');
             end;
        end;
      end;

    4: begin  // Bus
        case cmbxVehicle_Make.ItemIndex of
          0: begin //Mercedes-Benz
               cmbxVehicle_Model.Items.Add('Citaro');
               imgVehicles.Picture.LoadFromFile('Images\Mercedes-Benz Citaro.jpg');
             end;

          1: begin //MAN
               cmbxVehicle_Model.Items.Add('Lion’s City');
               imgVehicles.Picture.LoadFromFile('Images\MAN Lion’s City.png');
             end;

          2: begin //Scania
               cmbxVehicle_Model.Items.Add('Citywide');
               imgVehicles.Picture.LoadFromFile('Images\Scania Citywide.jpg');
             end;
        end;
      end;

  end;

end;

procedure TfrmTriWayTransM.cmbxAdminTypeChange(Sender: TObject);
begin
  //When the admin Type is selected thier information will be displayed
  if (cmbxAdminType.ItemIndex = 0) then  // Finance
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1508'+ #13 + 'Email: finance@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Refunds'+#13+'-Extentions on payments'+#13+'-Discounts'+#13+'-Salaries/Wages'+#13+'-Shares');
    end
    else
  if (cmbxAdminType.ItemIndex = 1) then // Human Resources
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1509'+ #13 + 'Email: hr@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Emloyment'+#13+'-Termination of employment'+#13+'-Increase in Salaries/Wages'+#13+'-FRights issues'+#13+'-Reports');
    end
    else
  if (cmbxAdminType.ItemIndex = 2) then // Transportation
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1510'+ #13 + 'Email: transport@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Loss of Deliverys'+#13+'-Canceling Deliveries'+#13+'-Changing Delivery Routes'+#13+'-Damaged Items'+#13+'-Drivers');
    end
    else
  if (cmbxAdminType.ItemIndex = 3) then  // Management
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1511'+ #13 + 'Email: manage@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Trucks Deliveries Go To'+#13+'-Contacting Driverss'+#13+'-Editing Packages'+#13+'-Damaged Items');
    end
    else
  if (cmbxAdminType.ItemIndex = 4) then  // Secretary
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1512'+ #13 + 'Email: secretary@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Booking Appointments'+#13+'-Investments'+#13+'-Documents'+#13+'-Projects'+#13+'-Files');
    end
    else
  if (cmbxAdminType.ItemIndex = 5) then  // CEO 
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1513'+ #13 + 'Email: ceo@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('Only Executives/Directors are allowed to contact'+#13+'-Meetings'+#13+'-Documents'+#13+'-Projects'+#13+'-Important');
    end
    else
  if (cmbxAdminType.ItemIndex = 6) then   // IT engineer
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1514'+ #13 + 'Email: engineer@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Programme issues'+#13+'-Bugs'+#13+'-Updates'+#13+'-Security'+#13+'-Overall Functions');
    end
    else
  if (cmbxAdminType.ItemIndex = 7) then   // Customer Services
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1515'+ #13 + 'Email: Help@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Issues with Functions'+#13+'-Help in delivery'+#13+'-Payment Issues'+#13+'-Damaged Package'+#13+'-Overall Functions');
    end
    else
  if (cmbxAdminType.ItemIndex = 8) then   // Legal Team
    begin
      redDisplayAdContactDetails.Clear;
      redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1516'+ #13 + 'Email: legal@tryway.com');
      redAdDiscrip.Clear;
      redAdDiscrip.Lines.Add('-Contracts'+#13+'-Loans'+#13+'-Employeement Contracts'+#13+'Abitration'+#13+'-Company Secretary');
    end;
end;

procedure TfrmTriWayTransM.cmbxDeliver_ProvinceChange(Sender: TObject);
begin
with dmTriWay do
  begin
    case cmbxDeliver_Province.ItemIndex of
      0: begin  //Eastern Cape
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%EST" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      1: begin  //Free State
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%FS" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      2: begin //Gauteng
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%GU" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      3: begin  //KwaZulu-Natal
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%KWZ" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      4: begin //Limpopo
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%LMP" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      5: begin //Mpumalanga
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%MPL" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      6: begin //Northern Cape
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%NRC" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      7: begin //North West
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%NRW" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
      8: begin //Western Cape
        qryDeliveries.Close;
        qryDeliveries.SQL.Text := 'SELECT DeliveryCode, ID, RecipientName, Boxes, City FROM tblDeliveries where DeliveryCode Like "%WST" and DriverID ='+ QuotedStr(sDriver)+' Order by OrderDate ASC';
        qryDeliveries.Open;

        ShowMessage('Number of Records: ' + IntToStr(qryDeliveries.RecordCount));
      end;
    end;
  end;

end;

procedure TfrmTriWayTransM.cmbxProvinceChange(Sender: TObject);
begin  //Once a province is selected these are the options that will be displayed in the cities
cmbxCity.Clear;
case cmbxProvince.ItemIndex of
-1: begin
      cmbxCity.Items.Add('Please select a Province First.');
    end;
0: begin  //Eastern Cape
    cmbxCity.Items.Add('Port Elizabeth');
    cmbxCity.Items.Add('East London');
    cmbxCity.Items.Add('Grahamstown (Makhanda)');
    cmbxCity.Items.Add('King William’s Town');
    cmbxCity.Items.Add('Queenstown');
    cmbxCity.Items.Add('Uitenhage');
    cmbxCity.Items.Add('Mthatha');
    cmbxCity.Items.Add('Aliwal North');
    cmbxCity.Items.Add('Cradock');
    cmbxCity.Items.Add('Graaff-Reinet');
  end;
1: begin  //Free State
    cmbxCity.Items.Add('Bethlehem');
    cmbxCity.Items.Add('Bloemfontein');
    cmbxCity.Items.Add('Welkom');
    cmbxCity.Items.Add('Kroonstad');
    cmbxCity.Items.Add('Sasolburg');
    cmbxCity.Items.Add('Parys');
    cmbxCity.Items.Add('Harrismith');
    cmbxCity.Items.Add('Phuthaditjhaba');
    cmbxCity.Items.Add('Virginia');
    cmbxCity.Items.Add('Ficksburg');
  end;
2: begin //Gauteng
    cmbxCity.Items.Add('Johannesburg');
    cmbxCity.Items.Add('Soweto');
    cmbxCity.Items.Add('Pretoria');
    cmbxCity.Items.Add('Benoni');
    cmbxCity.Items.Add('Tembisa');
    cmbxCity.Items.Add('Vereeniging');
    cmbxCity.Items.Add('Boksburg');
    cmbxCity.Items.Add('Krugersdorp');
    cmbxCity.Items.Add('Diepsloot');
    cmbxCity.Items.Add('Randburg');
  end;
3: begin  //KwaZulu-Natal
    cmbxCity.Items.Add('Durban');
    cmbxCity.Items.Add('Pietermaritzburg');
    cmbxCity.Items.Add('Richards Bay');
    cmbxCity.Items.Add('Newcastle');
    cmbxCity.Items.Add('Empangeni');
    cmbxCity.Items.Add('Ladysmith');
    cmbxCity.Items.Add('Port Shepstone');
    cmbxCity.Items.Add('Howick');
    cmbxCity.Items.Add('Stanger (KwaDukuza)');
    cmbxCity.Items.Add('Margate');
  end;
4: begin //Limpopo
    cmbxCity.Items.Add('Polokwane');
    cmbxCity.Items.Add('Lephalale');
    cmbxCity.Items.Add('Tzaneen');
    cmbxCity.Items.Add('Thohoyandou');
    cmbxCity.Items.Add('Mokopane');
    cmbxCity.Items.Add('Bela-Bela (Warmbaths)');
    cmbxCity.Items.Add('Modimolle (Nylstroom) ');
    cmbxCity.Items.Add('Musina');
    cmbxCity.Items.Add('Phalaborwa');
    cmbxCity.Items.Add('Giyani');
  end;
5: begin //Mpumalanga
    cmbxCity.Items.Add('Mbombela (Nelspruit)');
    cmbxCity.Items.Add('Witbank (eMalahleni)');
    cmbxCity.Items.Add('Middelburg');
    cmbxCity.Items.Add('Secunda');
    cmbxCity.Items.Add('Ermelo');
    cmbxCity.Items.Add('Lydenburg (Mashishing)');
    cmbxCity.Items.Add('Hazyview');
    cmbxCity.Items.Add('Barberton');
    cmbxCity.Items.Add('Bethal');
    cmbxCity.Items.Add('Sabie');
  end;
6: begin //Northern Cape
    cmbxCity.Items.Add('Kimberley');
    cmbxCity.Items.Add('Upington');
    cmbxCity.Items.Add('Springbok');
    cmbxCity.Items.Add('Kuruman');
    cmbxCity.Items.Add('De Aar');
    cmbxCity.Items.Add('Colesberg');
    cmbxCity.Items.Add('Douglas');
    cmbxCity.Items.Add('Hartswater');
    cmbxCity.Items.Add('Prieska');
    cmbxCity.Items.Add('Postmasburg');
  end;
7: begin //North West
    cmbxCity.Items.Add('Rustenburg');
    cmbxCity.Items.Add('Mahikeng (Mafikeng)');
    cmbxCity.Items.Add('Klerksdorp');
    cmbxCity.Items.Add('Potchefstroom');
    cmbxCity.Items.Add('Brits');
    cmbxCity.Items.Add('Lichtenburg');
    cmbxCity.Items.Add('Zeerust');
    cmbxCity.Items.Add('Vryburg');
    cmbxCity.Items.Add('Hartbeespoort');
    cmbxCity.Items.Add('Taung');
  end;
8: begin //Western Cape
    cmbxCity.Items.Add('Cape Town');
    cmbxCity.Items.Add('Stellenbosch');
    cmbxCity.Items.Add('George');
    cmbxCity.Items.Add('Paarl');
    cmbxCity.Items.Add('Mossel Bay');
    cmbxCity.Items.Add('Knysna');
    cmbxCity.Items.Add('Worcester');
    cmbxCity.Items.Add('Hermanus');
    cmbxCity.Items.Add('Beaufort West');
    cmbxCity.Items.Add('Oudtshoorn');
  end;
end;
end;

procedure TfrmTriWayTransM.DisplayRosterInGrid;
var
  col: integer;
begin
  sgRoster.RowCount := 2; // Just show Monday for now
  sgRoster.ColCount := Length(Deliveries) + 1;

  sgRoster.Cells[0, 0] := 'Deliveries';
  sgRoster.Cells[0, 1] := 'Drivers';

  for Col := 1 to High(Deliveries) + 1 do
  begin
    sgRoster.Cells[Col, 0] := 'Delivery #' + IntToStr(Col);
    //sgRoster.Cells[Col, 0] := Deliveries2[col];
    sgRoster.Cells[Col, 1] := Roster[1][Col]; // Monday's row
  end;
end;

procedure TfrmTriWayTransM.DriversWithNoVehicles;
begin
  with dmTriWay do
    begin

      qryDriver.Close;
      qryDriver.SQL.Text:= 'Select DriverID from tblDriver where VehicleID is Null';
      qryDriver.Open;

      SetLength(Drivers, qryDriver.RecordCount);

      qryDriver.First;

      while not qryDriver.Eof do
        begin
          lstDrivers_N_Vehicles.Items.Add(qryDriver.FieldByName('DriverID').AsString);
          qryDriver.Next;
        end;

    end;
end;

procedure TfrmTriWayTransM.edtRecipientNameClick(Sender: TObject);
begin
  //When typing has begun for new delivery the Track and Profile buttons are unavalible
  btnGoToTrack.Enabled:= false;
  btnMainGoToProfile.Enabled:= false;

  btnNewDelivery.Enabled:= true;
end;

procedure TfrmTriWayTransM.ExitProgram1Click(Sender: TObject);
begin
if MessageDlg('Are You Sure You Want To Exit Program',mtConfirmation,[mbYes,mbNO],0,mbYes)= mrYes  then
  begin
    Application.Terminate;   //Confirms termination of program and if true terminates
  end;
end;

procedure TfrmTriWayTransM.FormCreate(Sender: TObject);
var myfile: TextFile;
bfound: Boolean;
begin

//Tabsheets
pgclMain.TabIndex:= 0;
tbshtRegister.TabVisible:= false;
tbshtMainPage.TabVisible:= false;
tbshtHelp.TabVisible:= false;
tbshtDriver.TabVisible:= false;
tbshtAdmin.TabVisible:= false;
tbshtTrack.TabVisible:= false;
tbshtProfile.TabVisible:= false;
tbshtRoster.TabVisible:= false;
tbshtTruckManagement.TabVisible:= false;

//Richedits
redRecipt.ReadOnly:= true;
redDisplayDeliveryInfo.ReadOnly:= true;
redDisplayAdContactDetails.Clear;
redDisplayAdContactDetails.ReadOnly:= true;
redAdDiscrip.Clear;
redAdDiscrip.ReadOnly:= true;
redDeliverySummary.ReadOnly:= true;

//Tab Count
redRecipt.Paragraph.TabCount := 2;
redRecipt.Paragraph.Tab[0] := 150;

redAssignments.Paragraph.TabCount:= 2;
redAssignments.Paragraph.Tab[0]:= 50;
redAssignments.Paragraph.Tab[1]:= 150;

redFinance.Paragraph.TabCount:= 6;
  redFinance.Paragraph.Tab[0]:= 25;
  redFinance.Paragraph.Tab[1]:= 75;
  redFinance.Paragraph.Tab[2]:= 125;
  redFinance.Paragraph.Tab[3]:= 175;
  redFinance.Paragraph.Tab[4]:= 250;
  redFinance.Paragraph.Tab[5]:= 275;


//TbshtTrack- Edit Delivery
pnlEdit_Delivery.Visible:= false;

// Profile
lblprofile_admin_job.Visible:= False;
lblprofile_TruckID.Visible:= false;

chbxFragile.Font.Color:= clNavy;

// Admin Pannels
pnlAd_Drivers.Visible:= false;
pnlAd_Users.Visible:= false;
pnlAd_Deliveries.Visible:= false;

bitbtnApprove_Note.Enabled:= false;
bitbtnClose_Note.Visible:= false;

//Vehicles
chkHasTrailer.Enabled:= false;
sedSeatingCapacity.Enabled:= false;

cmbxVehicle_Make.Enabled:= false;
cmbxVehicle_Model.Enabled:= false;

pnlAssign_Vehicles.Visible:= false;
pnlSell_Vehicles.Visible:= false;


// Deliveries
bitbtnCancel_Delivery.Visible:= false;
bitbtnConfirm_Delivery.Visible:= false;
bitbtnEdit_Delivery.Visible:= false;

bitbtnAccept_Edit.Visible:= false;
bitbtnCheck_Edit.Visible:= false;
bitbtnCancel_Edit.Visible:= false;

sgRoster.Visible:= false;

// Login
btnAdminLogin.Visible:= false;
btnDriverLogin.Visible:= false;


// Insuring that the Deliveries end up in a file if collected
bfound:= false;
{AssignFile(myfile,'Collected Deliveries.txt');
with dmTriWay do
  begin
    tblDeliveries.Open;
    tblDeliveries.First;

    while (not tblDeliveries.Eof) and ( bfound = false) do
      begin
        if (tblDeliveries['Collected'] = true) then
          begin
            bfound:= true;
            if (FileExists('Collected Deliveries.txt')<> true) then
              begin
                Rewrite(myfile);
              end
              else
              begin
                Append(myfile);
              end;
             Writeln(myfile, tblDeliveries['ID'] + ': ' + tblDeliveries['DeiveryCode'] + ' on ' + FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['DeliveryDate']));
          end;
         tblDeliveries.Next;
      end;
    CloseFile(myfile);
    ShowMessage('Textfile Loaded');
  end; }




end;

function TfrmTriWayTransM.GenerateRecipteCode: string;
const
  // Allowed characters: uppercase letters and digits
  Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
var
  i: Integer;
begin
  Randomize; // Initialize the random number generator (call once per run for randomness)

  Result := 'RC-'; // Start the receipt code with a fixed prefix

  // Loop to generate a 10-character random string
  for i := 1 to 10 do
  begin
    // Add a random character from the Chars string to the result
    Result := Result + Chars[Random(Length(Chars)) + 1];
  end;

end;

function TfrmTriWayTransM.GenerateRefundCode: string;
const
  // Allowed characters: uppercase letters and digits
  Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
var
  i: Integer;
begin
  Randomize; // Initialize the random number generator (call once per run for randomness)

  Result := 'RF-'; // Start the Refund code with a fixed prefix

  // Loop to generate a 5-character random string
  for i := 1 to 5 do
  begin
    // Add a random character from the Chars string to the result
    Result := Result + Chars[Random(Length(Chars)) + 1];
  end;
end;

procedure TfrmTriWayTransM.imgVisibleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtLogPass.PasswordChar:= #0;// when picture is pressed down it allows the password to be seen
  imgVisible.Picture.LoadFromFile('Images\Visible.jpg');   //Loads the visible picture
end;

procedure TfrmTriWayTransM.imgVisibleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtLogPass.PasswordChar:= '*'; // when picture is not pressed down the password cannot be seen
 imgVisible.Picture.LoadFromFile('Images\Not visible.jpg'); //Loads the not visible picture
end;

procedure TfrmTriWayTransM.lblRegisteGoClick(Sender: TObject);
begin
tbshtRegister.TabVisible:= true;
pgclMain.TabIndex:= 1;
tbshtLogin.TabVisible:= false;
end;

procedure TfrmTriWayTransM.LoadComapnies;
var i, rndIndex: integer;
begin
  Randomize;


  for i := 0 to High(arrCompanies) do
    begin
      rndIndex:= Random(Length(arrPrices[i]));
      arrFixedPrices[i]:= arrPrices[i, rndIndex];

      lstCompanies.Items.Add(arrCompanies[i]);
    end;
end;

procedure TfrmTriWayTransM.LoadDriversFromDB;
var
  i: integer;
begin
  with dmTriWay do
    begin

      qryDriver.Close;
      qryDriver.SQL.Text:= 'Select DriverID from tblDriver';
      qryDriver.Open;

      SetLength(Drivers, qryDriver.RecordCount);

      i:= 0;
      qryDriver.First;

      while not qryDriver.Eof do
        begin
          Drivers[i]:= qryDriver.FieldByName('DriverID').AsString;
          //Trucks[i]:= qryDriver.FieldByName('VehicleID').AsString;
          inc(i);
          qryDriver.Next;
        end;

    end;
end;

procedure TfrmTriWayTransM.LoadNotes;
var
  tNoteName: TextFile;
  sline: string;
begin
  if not FileExists('Textfiles\Notes.txt') then
    begin
      MessageDlg('File Does Not Exist', mtError, [mbOK], 0, mbOK);
      Exit;
    end;

      // If it does exist assigned file to variable
      AssignFile(tNoteName, 'Textfiles\Notes.txt');
      Reset(tNoteName);

      while not Eof(tNoteName) do
        begin
          Readln(tNoteName, sline);
          lstNotes.Items.Add(sline);
        end;
     CloseFile(tNoteName);

end;

procedure TfrmTriWayTransM.LoadPendingDeliveries;
var
 i: integer;
begin
  with dmTriWay do
    begin

      qryDeliveries.close;
      qryDeliveries.sql.Text:= 'SELECT DeliveryCode FROM tblDeliveries WHERE DepartureDate >= Date() AND DriverID IS NULL';
      qryDeliveries.Open;

      setLength(Deliveries, qryDeliveries.RecordCount);

      i := 0;
      qryDeliveries.First;

      while not qryDeliveries.Eof do
        begin
          Deliveries[i] := qryDeliveries.FieldByName('DeliveryCode').AsString;
          Inc(i);
          qryDeliveries.Next;
        end;



    end;
end;

procedure TfrmTriWayTransM.LoadVehiclesToSell;
begin
  with dmTriWay do
    begin

      qryVehicles.Close;

      //qryVehicles.SQL.Text:= 'Select tblVehicles.VehicleID from tblVehicles, ' +
      //'tblDriver where tblVehicles.VehicleID = tblDriver.VehicleID is Null';

      qryVehicles.SQL.Text:= 'Select VehicleID from tblVehicles ';

      qryVehicles.Open;

      SetLength(Drivers, qryVehicles.RecordCount);

      qryVehicles.First;

      while not qryVehicles.Eof do
        begin
          lstSell_Vehicles.Items.Add(qryVehicles.FieldByName('VehicleID').AsString);
          qryVehicles.Next;
        end;
    end;

end;

procedure TfrmTriWayTransM.lstCompaniesClick(Sender: TObject);
var idx: integer;
begin
  idx:= lstCompanies.ItemIndex;
  if (idx < 0) then
    Exit;

  redOffers_Display.Clear;
  redOffers_Display.Lines.Add(arrCompanies[idx] + #13 + 'Offer: R' + IntToStr(arrFixedPrices[idx]) + '.00');

end;

procedure TfrmTriWayTransM.lstDeliveryCodesClick(Sender: TObject);
var
  SelectedItem, DeliveryCodeOnly: string;
  SeparatorPos: Integer;
  bfound, bCollect, bDelicate: Boolean;
begin
  if lstDeliveryCodes.ItemIndex = -1 then
    Exit;

  // Get the selected item text
  SelectedItem := lstDeliveryCodes.Items[lstDeliveryCodes.ItemIndex];

  // Extract the DeliveryCode (after ". ")
  SeparatorPos := Pos('. ', SelectedItem);
  if SeparatorPos > 0 then
    DeliveryCodeOnly := Copy(SelectedItem, SeparatorPos + 2, Length(SelectedItem))
  else
    DeliveryCodeOnly := SelectedItem;

  // Now reuse your summary logic
  redDeliverySummary.Clear;
  bfound := False;

  with dmTriWay do
  begin
    tblDeliveries.Open;
    tblDeliveries.First;

    while not tblDeliveries.Eof and not bfound do
    begin
      if tblDeliveries['DeliveryCode'] = DeliveryCodeOnly then
      begin
        bfound := True;
        TargetDateTime := StrToDateTime(tblDeliveries['DeliveryDate']);
        TotalDeliverySeconds := Trunc((TargetDateTime - Now) * 24 * 60 * 60); // For Timer
        pbCountDown.Position := 0;    // Set progress bar
        tmrCountDown.Enabled := True;   // Enable Timer

        redDeliverySummary.Lines.Add('Delivery Summary');
        redDeliverySummary.Lines.Add('------------------------');
        redDeliverySummary.Lines.Add('Delivery Code: '+ tblDeliveries['DeliveryCode']);
        redDeliverySummary.Lines.Add('Destination: '+ tblDeliveries['City'] + ', ' +  tblDeliveries['Province']);
        redDeliverySummary.Lines.Add('Order Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['OrderDate']));
        redDeliverySummary.Lines.Add('Departure Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['DepartureDate']));
        redDeliverySummary.Lines.Add('Delivery Date: '+ FormatDateTime('dd/mm/yyyy hh:nn',tblDeliveries['DeliveryDate']));

        redDeliverySummary.Lines.Add(#13 + #13);

        redDeliverySummary.Lines.Add('Recipient: ' + tblDeliveries['RecipientName']);
        redDeliverySummary.Lines.Add('Boxes: ' + Inttostr(tblDeliveries['Boxes']));
        redDeliverySummary.Lines.Add('Item Details: ' + tblDeliveries['ItemDetails']);
        redDeliverySummary.Lines.Add('Delicate: ' + BoolToStr(tblDeliveries['Delicate']));
        redDeliverySummary.Lines.Add('Collected: ' + BoolToStr(tblDeliveries['Collected']));

        edtDeliveryCode.Text:= DeliveryCodeOnly;
      end;
      tblDeliveries.Next;
    end;
  end;

  if (bfound = False) then
      begin
        MessageDlg('Delivery Code Not Found Plaese check code again.',mtWarning,[mbOk],0,mbOk);
        Exit;
      end;

end;

procedure TfrmTriWayTransM.lstDrivers_N_VehiclesClick(Sender: TObject);
var
SelectedItem: string;
bfound: Boolean;
begin
  redAssign_Info.Clear;
  bfound:= false;

  if (lstDrivers_N_Vehicles.ItemIndex = -1) then
    Exit;

  // Get the selected item text
  SelectedItem := lstDrivers_N_Vehicles.Items[lstDrivers_N_Vehicles.ItemIndex];
  with dmTriWay do
    begin
      tblDriver.Open;
      tblDriver.First;

      while (not tblDriver.Eof) and (not bfound) do
        begin
          if (tblDriver['DriverID'] = SelectedItem) then
            begin
              bfound := True;

              edtDriver_Assign.Text:= SelectedItem;

              redAssign_Info.Lines.Add('Driver: ' + tblDriver['DriverID']);
              redAssign_Info.Lines.Add('-------------------------------------');
              redAssign_Info.Lines.Add('Name: ' + tblDriver['Name']);
              redAssign_Info.Lines.Add('Surname: ' + tblDriver['Surname']);
              redAssign_Info.Lines.Add('Email: ' + tblDriver['Email']);
              redAssign_Info.Lines.Add('Salary: ' + FloatToStrF(tblDriver['Salary'],ffCurrency,8,2));
              redAssign_Info.Lines.Add('Date of Registration: ' + Datetostr(tblDriver['RegDate']));

            end;
          tblDriver.Next;
        end;
    end;


end;

procedure TfrmTriWayTransM.lstNotesClick(Sender: TObject);
var
  tNote: TextFile;
  sline, sNoteName: string;
begin
  sNoteName:= lstNotes.Items[lstNotes.ItemIndex];

  if lstNotes.ItemIndex = -1 then
    Exit;


  if not FileExists('Textfiles\Notes\'+ sNoteName +'.txt') then
    begin
      MessageDlg('File Does Not Exist', mtError, [mbOK], 0, mbOK);
      Exit;
    end;

    // If it does exist assigned file to variable
    AssignFile(tNote, 'Textfiles\Notes\'+ sNoteName +'.txt');
    Reset(tNote);

    while not Eof(tNote) do
      begin
        Readln(tNote, sline);
        redNotes.Lines.Add(sline);
      end;

    redNotes.ReadOnly:= True;
    bitbtnClose_Note.Visible:= True;

    btnWrite_Notes.Enabled:= false;
    CloseFile(tNote);


end;

procedure TfrmTriWayTransM.lstSell_VehiclesClick(Sender: TObject);
var
SelectedItem: string;
bfound: Boolean;
begin
  redSell_Vehicles_Info.Clear;
  bfound:= false;

  if lstSell_Vehicles.ItemIndex = -1 then
    Exit;

  // Get the selected item text
  SelectedItem := lstSell_Vehicles.Items[lstSell_Vehicles.ItemIndex];
  with dmTriWay do
    begin
      tblVehicles.Open;
      tblVehicles.First;

      while (not tblVehicles.Eof) and (not bfound) do
        begin
          if (tblVehicles['VehicleID'] = SelectedItem) then
            begin
              bfound := True;


              redSell_Vehicles_Info.Lines.Add('VehicleID: ' + tblVehicles['VehicleID']);
              redSell_Vehicles_Info.Lines.Add('-------------------------------------');
              redSell_Vehicles_Info.Lines.Add('Vehicle Type: ' + tblVehicles['Vehicle_Type']);
              redSell_Vehicles_Info.Lines.Add('Vehicle Name: ' + tblVehicles['Vehicle_Name']);
              redSell_Vehicles_Info.Lines.Add('Make & Model: ' + tblVehicles['Vehicle_Make'] + ', ' + tblVehicles['Vehicle_Model'] );
              redSell_Vehicles_Info.Lines.Add('Fuel Type: ' + tblVehicles['Fuel_Type']);
              redSell_Vehicles_Info.Lines.Add('Fuel Consumption Rate: ' + FloatToStrF(tblVehicles['FuelConsumption_Rate'], ffFixed, 8, 2) + ' liters per hour');
              redSell_Vehicles_Info.Lines.Add('Services: ' + IntToStr(tblVehicles['Services']) + ' times a year');
              if (tblVehicles['Vehicle_Type'] = 'Bus') then
                begin
                  redSell_Vehicles_Info.Lines.Add('Seating Capacity: ' + IntToStr(tblVehicles['MaxCapacity']) + ' People');
                end
                else
                  redSell_Vehicles_Info.Lines.Add('Max Capacity: ' + IntToStr(tblVehicles['MaxCapacity']) + ' Boxes');

              if (BoolToStr(tblVehicles['Has_Trailer']) = '-1') then
                begin
                  redSell_Vehicles_Info.Lines.Add('Has Trailer: No');
                end
                else
                  redSell_Vehicles_Info.Lines.Add('Has Trailer: Yes');

              redSell_Vehicles_Info.Lines.Add('Purchase Date: ' + Datetostr(tblVehicles['Purchase_Date']));
              redSell_Vehicles_Info.Lines.Add('Purcahse Price: ' + FloatToStrF(tblVehicles['Purcahse_Price'], ffCurrency, 8, 2));

            end;
          tblVehicles.Next;
        end;
    end;

end;

procedure TfrmTriWayTransM.lstVehicles_N_DriversClick(Sender: TObject);
var
SelectedItem: string;
bfound: Boolean;
begin
  redAssign_Info.Clear;
  bfound:= false;

  if lstVehicles_N_Drivers.ItemIndex = -1 then
    Exit;

  // Get the selected item text
  SelectedItem := lstVehicles_N_Drivers.Items[lstVehicles_N_Drivers.ItemIndex];
  with dmTriWay do
    begin
      tblVehicles.Open;
      tblVehicles.First;

      while (not tblVehicles.Eof) and (not bfound) do
        begin
          if (tblVehicles['VehicleID'] = SelectedItem) then
            begin
              bfound := True;

              edtVehicles_Assign.Text:= SelectedItem;

              redAssign_Info.Lines.Add('VehicleID: ' + tblVehicles['VehicleID']);
              redAssign_Info.Lines.Add('-------------------------------------');
              redAssign_Info.Lines.Add('Vehicle Type: ' + tblVehicles['Vehicle_Type']);
              redAssign_Info.Lines.Add('Vehicle Name: ' + tblVehicles['Vehicle_Name']);
              redAssign_Info.Lines.Add('Make & Model: ' + tblVehicles['Vehicle_Make'] + ', ' + tblVehicles['Vehicle_Model'] );
              redAssign_Info.Lines.Add('Fuel Type: ' + tblVehicles['Fuel_Type']);
              redAssign_Info.Lines.Add('Purchase Date: ' + Datetostr(tblVehicles['Purchase_Date']));
              if (tblVehicles['Vehicle_Type'] = 'Bus') then
                begin
                  redSell_Vehicles_Info.Lines.Add('Seating Capacity: ' + IntToStr(tblVehicles['Seating_Capacity']) + ' People');
                end
                else
                  redSell_Vehicles_Info.Lines.Add('Max Capacity: ' + IntToStr(tblVehicles['MaxCapacity']) + ' Boxes');


            end;
          tblVehicles.Next;
        end;
    end;

end;

procedure TfrmTriWayTransM.rdgEditProfileClick(Sender: TObject);
begin
  case rdgEditProfile.ItemIndex of
    0: EN:= 'N';
    1: ES:= 'S';
    2: ED:= 'D';
    3: EM:= 'M';
  end;
end;

procedure TfrmTriWayTransM.rdgpAdminClick(Sender: TObject);
begin
  case rdgpAdmin.ItemIndex of
    0: begin
      pnlAd_Deliveries.Visible:= false;
      pnlAd_Drivers.Visible:= false;
      pnlAd_Notes.Visible:= false;

      pnlAd_Users.Visible:= true;
    end;
    1: begin
      pnlAd_Users.Visible:= false;
      pnlAd_Deliveries.Visible:= false;
      pnlAd_Notes.Visible:= false;

      pnlAd_Drivers.Visible:= true;
    end;
    2: begin
      pnlAd_Users.Visible:= false;
      pnlAd_Drivers.Visible:= false;
      pnlAd_Notes.Visible:= false;

      pnlAd_Deliveries.Visible:= true;
    end;
    3: begin
      pnlAd_Users.Visible:= false;
      pnlAd_Drivers.Visible:= false;
      pnlAd_Deliveries.Visible:= false;

      pnlAd_Notes.Visible:= true;
    end;


end;
end;

procedure TfrmTriWayTransM.rgpVehiclesClick(Sender: TObject);
begin
chkHasTrailer.Enabled:= false;
sedSeatingCapacity.Enabled:= false;

cmbxVehicle_Make.Clear;
cmbxVehicle_Make.Enabled:= True;


  case rgpVehicles.ItemIndex of
    0: begin
        chkHasTrailer.Enabled:= true;
        sedSeatingCapacity.Enabled:= false;

        cmbxVehicle_Make.Items.Add('Isuzu N-Series');
        cmbxVehicle_Make.Items.Add('Mercedes-Benz');
        cmbxVehicle_Make.Items.Add('Hino');

        imgVehicles.Picture.LoadFromFile('Images/Small Truck.jpg');
      end;
    1: begin
        chkHasTrailer.Enabled:= true;
        sedSeatingCapacity.Enabled:= false;

        cmbxVehicle_Make.Items.Add('Isuzu N-Series');
        cmbxVehicle_Make.Items.Add('Mercedes-Benz');
        cmbxVehicle_Make.Items.Add('Volvo');

        imgVehicles.Picture.LoadFromFile('Images/Medium Truck.jpg');
      end;
    2: begin
        chkHasTrailer.Enabled:= true;
        sedSeatingCapacity.Enabled:= false;

        cmbxVehicle_Make.Items.Add('Mercedes-Benz');
        cmbxVehicle_Make.Items.Add('Scania');
        cmbxVehicle_Make.Items.Add('Volvo');

        imgVehicles.Picture.LoadFromFile('Images/Large Truck.jpg');
      end;
    3: begin
        chkHasTrailer.Enabled:= false;
        sedSeatingCapacity.Enabled:= false;

        cmbxVehicle_Make.Items.Add('Ford');
        cmbxVehicle_Make.Items.Add('Mercedes-Benz');
        cmbxVehicle_Make.Items.Add('Toyota');

        imgVehicles.Picture.LoadFromFile('Images/Van.jpg');
    end;
    4: begin
       chkHasTrailer.Enabled:= false;
       sedSeatingCapacity.Enabled:= true;

       cmbxVehicle_Make.Items.Add('Mercedes-Benz');
       cmbxVehicle_Make.Items.Add('MAN');
       cmbxVehicle_Make.Items.Add('Scania');

       imgVehicles.Picture.LoadFromFile('Images/Bus.jpg');
    end;
  end;
end;

procedure TfrmTriWayTransM.btnWork_RosterClick(Sender: TObject);
begin
  // Go to Rosters page from Drivers Page
  tbshtRoster.TabVisible:= true;
  tbshtDriver.TabVisible:= false;
end;

procedure TfrmTriWayTransM.tmrCountDownTimer(Sender: TObject);
var
  TimeLeft: TDateTime;     // Holds the difference between the target time and now
  TotalSeconds, Hours, Minutes, Seconds, ProgressPercent: Integer;    // Total time left in seconds & Components to display as hh:mm:ss
begin
  // Calculate the time difference between the target delivery time and current time
  TimeLeft := TargetDateTime - Now;

  if TimeLeft > 0 then  // Check if delivery time is still in the future
  begin
    // Convert the time difference (in days) to total seconds
    TotalSeconds := Trunc(TimeLeft * 24 * 60 * 60);  // 1 day = 86400 seconds
    Hours := TotalSeconds div 3600;   // Extract the number of full hours
    Minutes := (TotalSeconds mod 3600) div 60;   // Extract the remaining minutes after removing full hours
    Seconds := TotalSeconds mod 60;   // Extract the remaining seconds after removing full minutes

    // Display the countdown in HH:MM:SS format, padded with zeros if needed
    lblCountDown.Caption := Format('%.2d:%.2d:%.2d', [Hours, Minutes, Seconds]);

    // Update progress bar
    if TotalDeliverySeconds > 0 then
    begin
      ProgressPercent := 100 - Trunc((TotalSeconds / TotalDeliverySeconds) * 100);
      pbCountDown.Position := ProgressPercent;
    end;
  end
  else
  begin
     // Countdown is over — show that the delivery has been completed
    lblCountDown.Caption := 'Delivered!';
    pbCountDown.Position := 100;
    tmrCountDown.Enabled := False;
  end;

end;

procedure TfrmTriWayTransM.TrackDelivery;
var
icount: integer;
begin
  icount:= 0;
with dmTriWay do
  begin
    tblDeliveries.Open;
    tblDeliveries.First;
    while (not tblDeliveries.Eof) do
      begin
        if (tblDeliveries['ID'] = sUserID) then
          begin
            inc(icount);

            lstDeliveryCodes.Items.Add(IntToStr(icount) + '. ' + tblDeliveries['DeliveryCode']);

            //cmbxDeliveries.Items.Add(tblDeliveries['DeliveryCode'])
          end;
         tblDeliveries.Next;
      end;
  end;
end;

procedure TfrmTriWayTransM.VehiclesWithNoDrivers;
begin
  with dmTriWay do
    begin

      qryVehicles.Close;

      //qryVehicles.SQL.Text:= 'Select tblVehicles.VehicleID from tblVehicles, ' +
      //'tblDriver where tblVehicles.VehicleID = tblDriver.VehicleID is Null';

      qryVehicles.SQL.Text:= 'Select v.VehicleID from tblVehicles v ' +
      'LEFT JOIN tblDriver d ON v.VehicleID = d.VehicleID WHERE d.VehicleID is Null';

      qryVehicles.Open;

      SetLength(Drivers, qryVehicles.RecordCount);

      qryVehicles.First;

      while not qryVehicles.Eof do
        begin
          lstVehicles_N_Drivers.Items.Add(qryVehicles.FieldByName('VehicleID').AsString);
          qryVehicles.Next;
        end;
    end;

end;

procedure TfrmTriWayTransM.VerifyEdt(editbox, variable: string);
begin
  // Verification
   if (editbox = '') then  // if the edit box is empty
    begin
      // Message to warn user to enter name and exit the register process
      MessageDlg('Please Enter your Name', mtWarning,[mbOk],0,mbOk);
      Exit;
    end
    else
    begin
      // if it is entered put it in variable and continue process
      variable:= editbox;
    end;
end;


end.

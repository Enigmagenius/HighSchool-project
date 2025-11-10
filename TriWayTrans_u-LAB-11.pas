unit TriWayTrans_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, jpeg, Menus,Math, DateUtils, Database_u, clsDelivery_u,
  Spin;

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
    imgHelpbackground: TImage;
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
    pnContactAdmin: TPanel;
    lblContactAdmin: TLabel;
    cmbxAdminType: TComboBox;
    redDisplayAdContactDetails: TRichEdit;
    pnlDisplayAdDiscrip: TPanel;
    redAdDiscrip: TRichEdit;
    imgmainBackground: TImage;
    pnlMainHead: TPanel;
    pnlNewDelivery: TPanel;
    SpinEdit1: TSpinEdit;
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
    Label1: TLabel;
    lblRecipientName: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
    var sUserID,sName,sSurn,sDriver,sAd: string;
  end;

var
  frmTriWayTransM: TfrmTriWayTransM;

implementation

{$R *.dfm}

procedure TfrmTriWayTransM.btnAdminLoginClick(Sender: TObject);
var sAdmin, SPass: string;
bfound: boolean;
begin
sAdmin:= InputBox('Enter Admin ID','Admin ID','');
sPass:= InputBox('Enter Password','Admin Password','');
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
            sAd:= tblAdmin['AdminID'];
            sName:= tblAdmin['Name'];
            sSurn:= tblAdmin['Surname'];
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

procedure TfrmTriWayTransM.btnDriverLoginClick(Sender: TObject);
var sDr,sPass: string;
bfound: boolean;
begin
sDr:= InputBox('Enter Driver ID','Driver ID','');
sPass:= InputBox('Enter Password','Driver Password','');
bfound:= false;
with dmTriWay do
  begin
    tblDriver.Open;
    tblDriver.First;
    while (not tblDriver.Eof) and (bfound = false)  do
      begin
         if (tblDriver['DriverID'] = sDr) AND (tblDriver['Password'] = sPass) then
          begin
            bfound:= true;
            sDriver:= tblDriver['DriverID'];
            sName:= tblDriver['Name'];
            sSurn:= tblUsers['Surname'];
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

procedure TfrmTriWayTransM.btnLoginClick(Sender: TObject);
var sID, sPass: string;
bfound: boolean;
begin
sID:= edtLogID.Text;
sPass:= edtLogPass.Text;
bfound:= False;

with dmTriWay do
  begin
    tblUsers.Open;
    tblUsers.First;
    tblAdmin.Open;
    tblAdmin.First;

    while (not tblUsers.Eof) and (bfound = false)  do
      begin
         if (tblUsers['ID'] = sID) AND (tblUsers['Password'] = spass) then
          begin
            bfound:= true;
            sUserID:= tblUsers['ID'];
            sName:= tblUsers['Name'];
            sSurn:= tblUsers['Surname'];
            tbshtMainPage.Visible:= true;
            pgclMain.TabIndex:= 3;
            tbshtLogin.TabVisible:= false;
          end;
          tblUsers.Next;
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

procedure TfrmTriWayTransM.btnRegisterClick(Sender: TObject);
var ssName, ssSurn, ssEmail,sspass,sCUser,sAdJob: string;
dtb: TDateTime;
begin
if (edtRegName.Text = '') then
  begin
    MessageDlg('Please Enter your Name',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    ssName:= edtRegName.Text;
  end;
if (edtRegSurn.Text = '') then
  begin
    MessageDlg('Please Enter your Surname',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    ssSurn:= edtRegSurn.Text;
  end;
if (edtRegEmail.Text = '') then
  begin
    MessageDlg('Please Enter your Email',mtWarning,[mbOk],0,mbOk);
    Exit;
  end
  else
  begin
    ssEmail:= edtRegEmail.Text;
  end;
dtb:= dtpRegDTB.Date;

if (cmbxAccess.ItemIndex = -1) then
  begin
    With dmTriWay do
      begin
        tblUsers.Open;
        tblUsers.Append;
        sCUser:= copy(ssname,1,1)+'.'+copy(ssSurn,1,3)+inttostr(RandomRange(1,101))+ '@user';
        ShowMessage('ID: '+ sCUser);
        tblUsers['ID']:= sCUser;
        sspass:= InputBox('Password','Create a Password','');
        if length(sspass)<8 then
          begin
            MessageDlg('Password Must be 8 Characters or More.',mtwarning,[mbOk],0,mbOk);
            Exit;
          end
          else
          begin
             tblUsers['Password']:= sspass;
          end;
        tblUsers['Name']:= ssname;
        tblUsers['Surname']:= ssSurn;
        tblUsers['Email']:= ssEmail;
        tblUsers['DateofBirth']:= DateToStr(date);
        tblUsers.Post;
        MessageDlg('You Are Successfuly Registered in as a User.',mtInformation,[mbOk],0,mbOk);
      end;
  end
  else
if (cmbxAccess.ItemIndex = 0) and (InputBox('Enter Access Key','Admin Access Key','') = 'Admin1234') then
  begin
    with dmTriWay do
      begin
        tblAdmin.Open;
        tblAdmin.Append;
        sAdJob:= InputBox('Enter Admin Job','Admin Type','');
        sCUser:= copy(ssname,1,1)+'.'+copy(ssSurn,1,3)+inttostr(RandomRange(1,101))+ '.'+'ad'+copy(sAdJob,1,3) ;
        ShowMessage('AdminID: '+ sCUser);
        tblAdmin['AdminID']:= sCUser;
        sspass:= InputBox('Password','Create a Password','');
        if length(sspass)<8 then
          begin
            MessageDlg('Password Must be 8 Characters or More.',mtwarning,[mbOk],0,mbOk);
            Exit;
          end
          else
          begin
             tblAdmin['Password']:= sspass;
          end;
        tblAdmin['Job']:= sAdJob;
        tblAdmin['Name']:= ssname;
        tblAdmin['Surname']:= ssSurn;
        tblAdmin['Email']:= ssEmail;
        tblAdmin['DateofBirth']:= DateToStr(date);
        tblAdmin.Post;
        MessageDlg('You Are Successfuly Registered in as a Admin.',mtInformation,[mbOk],0,mbOk);
      end;
  end
  else
if (cmbxAccess.ItemIndex = 1) and (InputBox('Enter Access Key','Driver Access Key','') = 'Driver1234') then
  begin
    with dmTriWay do
      begin
        tblDriver.Open;
        tblDriver.Append;
         sCUser:= copy(ssname,1,1)+'.'+copy(ssSurn,1,3)+inttostr(RandomRange(1,101))+ '@diver';
        //tblDriver['Driver ID']:= InputBox('Enter Driver ID','Driver ID','');
        sspass:= InputBox('Password','Create a Password','');
        if length(sspass)<8 then
          begin
            MessageDlg('Password Must be 8 Characters or More.',mtwarning,[mbOk],0,mbOk);
            Exit;
          end
          else
          begin
             tblDriver['Password']:= sspass;
          end;
        tblDriver['Name']:= ssname;
        tblDriver['Surname']:= ssSurn;
        tblDriver['Email']:= ssEmail;
        tblDriver['DateofBirth']:= DateToStr(date);
        tblDriver.Post;
        MessageDlg('You Are Successfuly Registered in as a Driver.',mtInformation,[mbOk],0,mbOk);
      end;

  end;



end;

procedure TfrmTriWayTransM.cmbxAdminTypeChange(Sender: TObject);
begin    //When the admin Type is selected thier information will be displayed
if (cmbxAdminType.ItemIndex = 0) then
  begin
    redDisplayAdContactDetails.Clear;
    redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1508'+ #13 + 'Email: finance@tryway.com');
    redAdDiscrip.Clear;
    redAdDiscrip.Lines.Add('-Refunds'+#13+'-Extentions on payments'+#13+'-Discounts'+#13+'-Salaries/Wages'+#13+'-Shares');
  end
  else
if (cmbxAdminType.ItemIndex = 1) then
  begin
    redDisplayAdContactDetails.Clear;
    redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1509'+ #13 + 'Email: hr@tryway.com');
    redAdDiscrip.Clear;
    redAdDiscrip.Lines.Add('-Emloyment'+#13+'-Termination of employment'+#13+'-Increase in Salaries/Wages'+#13+'-FRights issues'+#13+'-Reports');
  end
  else
if (cmbxAdminType.ItemIndex = 2) then
  begin
    redDisplayAdContactDetails.Clear;
    redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1510'+ #13 + 'Email: transport@tryway.com');
    redAdDiscrip.Clear;
    redAdDiscrip.Lines.Add('-Loss of Deliverys'+#13+'-Canceling Deliveries'+#13+'-Changing Delivery Routes'+#13+'-Damaged Items'+#13+'-Drivers');
  end
  else
if (cmbxAdminType.ItemIndex = 3) then
  begin
    redDisplayAdContactDetails.Clear;
    redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1511'+ #13 + 'Email: manage@tryway.com');
    redAdDiscrip.Clear;
    redAdDiscrip.Lines.Add('-Trucks Deliveries Go To'+#13+'-Contacting Driverss'+#13+'-Editing Packages'+#13+'-Damaged Items');
  end
  else
if (cmbxAdminType.ItemIndex = 4) then
  begin
    redDisplayAdContactDetails.Clear;
    redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1512'+ #13 + 'Email: secretary@tryway.com');
    redAdDiscrip.Clear;
    redAdDiscrip.Lines.Add('-Booking Appointments'+#13+'-Investments'+#13+'-Documents'+#13+'-Projects'+#13+'-Files');
  end
  else
if (cmbxAdminType.ItemIndex = 5) then
  begin
    redDisplayAdContactDetails.Clear;
    redDisplayAdContactDetails.Lines.Add('Contact NO: 081 864 1513'+ #13 + 'Email: ceo@tryway.com');
    redAdDiscrip.Clear;
    redAdDiscrip.Lines.Add('Only Executives/Directors are allowed to contact'+#13+'-Meetings'+#13+'-Documents'+#13+'-Projects'+#13+'-Important');
  end;



end;

procedure TfrmTriWayTransM.cmbxProvinceChange(Sender: TObject);
begin  //Once a province is selected these are the options that will be displayed in the cities
cmbxCity.Clear;
case cmbxProvince.ItemIndex of
0: begin  //Eastern cape
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

procedure TfrmTriWayTransM.ExitProgram1Click(Sender: TObject);
begin
if MessageDlg('Are You Sure You Want To Exit Program',mtConfirmation,[mbYes,mbNO],0,mbYes)= mrYes  then
  begin
    Application.Terminate;
  end;
end;

procedure TfrmTriWayTransM.FormCreate(Sender: TObject);
begin
tbshtRegister.TabVisible:= false;
tbshtMainPage.TabVisible:= false;
tbshtHelp.TabVisible:= false;
tbshtDriver.TabVisible:= false;
tbshtAdmin.TabVisible:= false;
redDisplayAdContactDetails.Clear;
redDisplayAdContactDetails.ReadOnly:= true;
redAdDiscrip.Clear;
redAdDiscrip.ReadOnly:= true;
end;

procedure TfrmTriWayTransM.imgVisibleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtLogPass.PasswordChar:= #0;// when picture is pressed down it allows the password to be seen
  imgVisible.Picture.LoadFromFile('Visible.jpg');
end;

procedure TfrmTriWayTransM.imgVisibleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtLogPass.PasswordChar:= '*'; // when picture is not pressed down the password cannot be seen
 imgVisible.Picture.LoadFromFile('Not visible.jpg');
end;

procedure TfrmTriWayTransM.lblRegisteGoClick(Sender: TObject);
begin
tbshtRegister.TabVisible:= true;
pgclMain.TabIndex:= 1;
tbshtLogin.TabVisible:= false;
end;

end.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
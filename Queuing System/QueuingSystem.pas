unit QueuingSystem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PDJButton, NxCollection, AdvPanel,
  Vcl.ExtCtrls, frxDock, Vcl.Imaging.pngimage, AdvCurve, AdvFancyLabel, Data.DB,
  DBAccess, MyAccess, Vcl.Menus, MemDS, AdvSmoothLabel, AdvSmoothLedLabel,
  Vcl.StdCtrls, AdvSmoothButton, frxClass, frxDBSet;

type
  TmainFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    PDJButton3: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    PDJButton6: TPDJButton;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvPanel3: TAdvPanel;
    Image1: TImage;
    AdvPanelStyler2: TAdvPanelStyler;
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    Close1: TMenuItem;
    QueueSettings1: TMenuItem;
    insertmanageIn: TMyQuery;
    queCntrQ: TMyQuery;
    queCntrQqueIDcntr: TIntegerField;
    queCntrQtype: TStringField;
    queCntrQnumber: TIntegerField;
    queCntrQdate: TDateField;
    queCntrQtime: TTimeField;
    insertqueQ: TMyQuery;
    insertqueCntrQ: TMyQuery;
    dateTimeL: TNxLabel;
    Timer1: TTimer;
    InsertpubQ: TMyQuery;
    AdvPanel2: TAdvPanel;
    AdvPanel4: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton31: TAdvSmoothButton;
    AdvSmoothButton30: TAdvSmoothButton;
    AdvSmoothButton29: TAdvSmoothButton;
    reportQue: TfrxReport;
    queNoQ: TMyQuery;
    reportQueTfrx: TfrxDBDataset;
    queNoQdate: TStringField;
    queNoQno: TStringField;
    queNoQcode: TStringField;
    arealbl: TLabel;
    queNoQtype: TStringField;
    Timer2: TTimer;
    AdvPanel5: TAdvPanel;
    Label1: TLabel;
    updateQueQ: TMyQuery;
    manageInQ: TMyQuery;
    manageInQidIn: TIntegerField;
    manageInQtype: TStringField;
    manageInQnumber: TIntegerField;
    manageInQdate: TDateField;
    manageInQtime: TTimeField;
    manageInQcode: TStringField;
    procedure Close1Click(Sender: TObject);
    procedure QueueSettings1Click(Sender: TObject);
    function randomChar(): String;
    procedure PDJButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure queEntry(typeString,typeM : String;groupNo:Integer);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure AdvSmoothButton31Click(Sender: TObject);
    procedure AdvSmoothButton29Click(Sender: TObject);
    procedure AdvSmoothButton30Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure dateTimeLDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainFrm: TmainFrm;
  typeStr :String;
  cntrNum :Integer;
  typeStringB,typeMB : String;
  flag:Integer;
implementation

{$R *.dfm}

uses dataQ, settingsForm;


procedure TmainFrm.AdvSmoothButton29Click(Sender: TObject);
begin
  queEntry('BI','Proceed to Billing Inquiry',5);
  AdvPanel1.Enabled := true;
  AdvPanel2.Visible := false;
end;

procedure TmainFrm.AdvSmoothButton30Click(Sender: TObject);
begin
  queEntry('BC','Proceed to Billing Complaint',6);

  AdvPanel1.Enabled := true;
  AdvPanel2.Visible := false;
end;

procedure TmainFrm.AdvSmoothButton31Click(Sender: TObject);
begin
  AdvPanel1.Enabled := true;
  AdvPanel2.Visible := false;
end;

procedure TmainFrm.Close1Click(Sender: TObject);
begin
  close;
end;

procedure TmainFrm.dateTimeLDblClick(Sender: TObject);
begin
  close;
end;

procedure TmainFrm.FormShow(Sender: TObject);
begin
 if not assigned(settingFrm) then
 settingFrm := TsettingFrm.Create(Application);

 settingFrm.ShowModal;

end;

function TmainFrm.randomChar(): String;
const
  Chars = '0123456789ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
 Randomize;
  S := '';
  for i := 1 to 4 do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;
procedure TmainFrm.queEntry(typeString,typeM : String;groupNo:Integer);
begin
  typeStr := typeString;
  cntrNum := 0;
  flag    := 0;

  AdvPanel5.Top  := 261;
  AdvPanel5.Left := 385;
  AdvPanel5.BringToFront;
  AdvPanel5.Visible := true;
  AdvPanel1.Enabled := false;

  Timer2.interval := 1800;
  Timer2.enabled  := true;


      queCntrQ.Close;
      queCntrQ.ParamByName('type').Text := typeStr;
      queCntrQ.ParamByName('date').Text := FormatDateTime('YYYY-MM-DD',now);
      queCntrQ.Open;

       if not queCntrQ.IsEmpty then
      cntrNum := queCntrQnumber.AsInteger;
      //===============================================
      //===============================================

      insertqueCntrQ.ParamByName('type').Text        := typeStr;
      insertqueCntrQ.ParamByName('number').AsInteger := cntrNum+1;
      insertqueCntrQ.ParamByName('date').AsDate      := now;
      insertqueCntrQ.ParamByName('time').AsDateTime  := now;
      insertqueCntrQ.Execute;

      insertqueQ.ParamByName('type').Text            := typeStr;
      insertqueQ.ParamByName('number').AsInteger     := cntrNum+1;
      insertqueQ.ParamByName('date').AsDate          := now;
      insertqueQ.ParamByName('time').AsDateTime      := now;
      insertqueQ.ParamByName('code').Text            := Dataque.publisherQcode.Text;
      insertqueQ.ParamByName('groupno').AsInteger    := groupNo;
      insertqueQ.Execute;

      insertmanageIn.ParamByName('type').Text        := typeStr;
      insertmanageIn.ParamByName('number').AsInteger := cntrNum+1;
      insertmanageIn.ParamByName('date').AsDate      := now;
      insertmanageIn.ParamByName('time').AsDateTime  := now;
      insertmanageIn.ParamByName('code').Text        := Dataque.publisherQcode.Text;
      insertmanageIn.Execute;


      //============================Update idIn of que table =====
      //==========================================================
      manageInQ.Close;
      manageInQ.ParamByName('type').Text             := typeStr;
      manageInQ.ParamByName('number').AsInteger      := cntrNum+1;
      manageInQ.ParamByName('date').Text             := FormatDateTime('YYYY-MM-DD',now);
      manageInQ.Open;

      updateQueQ.ParamByName('type').Text             := typeStr;
      updateQueQ.ParamByName('number').AsInteger      := cntrNum+1;
      updateQueQ.ParamByName('date').Text             := FormatDateTime('YYYY-MM-DD',now);
      updateQueQ.ParamByName('idIn').AsInteger        := manageInQidIn.AsInteger;
      updateQueQ.Execute;
      //==========================================================
      //==========================================================

      queNoQ.Close;
      queNoQ.ParamByName('date').Text := FormatDateTime('m/d/yyyy hh:mm:ss AM/PM', now);
      queNoQ.ParamByName('no').Text   := typeStr+inttostr(cntrNum+1);
      queNoQ.ParamByName('code').Text := Dataque.publisherQcode.Text;
      queNoQ.ParamByName('type').Text := typeM;
      queNoQ.Open;

end;
procedure TmainFrm.Timer1Timer(Sender: TObject);
begin
  dateTimeL.Caption := FormatDateTime('c',now);
end;

procedure TmainFrm.Timer2Timer(Sender: TObject);
begin
 if flag=0 then
 begin
  reportQue.PrepareReport;
  reportQue.PrintOptions.ShowDialog := false;
  reportQue.Print;

   Timer2.interval   := 500;
 end;

 if flag=1 then
 begin
    AdvPanel5.Visible := false;
    AdvPanel1.Enabled := true;
    Timer2.Enabled    := false;
 end;

 flag := 1;
end;

procedure TmainFrm.PDJButton1Click(Sender: TObject);
begin

  queEntry('NA','New Applicant',1);
end;

procedure TmainFrm.PDJButton2Click(Sender: TObject);
begin
 queEntry('CC','Consumer Complaint - ISD',1);
end;

procedure TmainFrm.PDJButton3Click(Sender: TObject);
begin
  queEntry('RD','Reconnection/Disconnection',1);
end;

procedure TmainFrm.PDJButton4Click(Sender: TObject);
begin
  queEntry('SP','Proceed to Senior Citizen Power Bill Payment',4);
end;

procedure TmainFrm.PDJButton5Click(Sender: TObject);
begin
  queEntry('RP','Proceed to Power Bill Payment',3);
end;

procedure TmainFrm.PDJButton6Click(Sender: TObject);
begin
  AdvPanel1.Enabled := false;

  AdvPanel2.Top  := 125;
  AdvPanel2.Left := 415;
  AdvPanel2.BringToFront;
  AdvPanel2.Visible := true;
end;

procedure TmainFrm.QueueSettings1Click(Sender: TObject);
begin
  if not Assigned(settingFrm) then
  settingFrm := TsettingFrm.Create(application);

  settingFrm.ShowModal;

end;

end.

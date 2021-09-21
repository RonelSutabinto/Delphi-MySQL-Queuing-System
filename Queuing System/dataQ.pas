unit dataQ;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  TDataque = class(TDataModule)
    MyConnection1: TMyConnection;
    queQ: TMyQuery;
    publisherQ: TMyQuery;
    manageinQ: TMyQuery;
    manageOutQ: TMyQuery;
    publisherQentry: TIntegerField;
    publisherQcode: TStringField;
    publisherQdate: TDateField;
    publisherQtime: TTimeField;
    queQqueID: TIntegerField;
    queQtype: TStringField;
    queQnumber: TIntegerField;
    queQdate: TDateField;
    queQtime: TTimeField;
    queQcode: TStringField;
    queQgroupno: TIntegerField;
    manageOutQentry: TIntegerField;
    manageOutQtype: TStringField;
    manageOutQnumber: TIntegerField;
    manageOutQdate: TDateField;
    manageOutQtime: TTimeField;
    manageOutQcode: TStringField;
    manageOutQqueid: TIntegerField;
    manageOutQgroupno: TIntegerField;
    manageOutQexecutedby: TStringField;
    manageOutQDepartment: TStringField;
    manageOutQuserid: TStringField;
    manageOutQcounter: TStringField;
    manageOutQidIn: TIntegerField;
    manageinQidIn: TIntegerField;
    manageinQtype: TStringField;
    manageinQnumber: TIntegerField;
    manageinQdate: TDateField;
    manageinQtime: TTimeField;
    manageinQcode: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dataque: TDataque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

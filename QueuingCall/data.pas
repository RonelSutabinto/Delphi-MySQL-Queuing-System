unit data;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  TdataMod = class(TDataModule)
    MyQuery1: TMyQuery;
    MyConnection1: TMyConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataMod: TdataMod;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

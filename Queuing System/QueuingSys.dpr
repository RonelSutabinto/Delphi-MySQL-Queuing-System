program QueuingSys;

uses
  Vcl.Forms,
  QueuingSystem in 'QueuingSystem.pas' {mainFrm},
  dataQ in 'dataQ.pas' {Dataque: TDataModule},
  settingsForm in 'settingsForm.pas' {settingFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainFrm, mainFrm);
  Application.CreateForm(TDataque, Dataque);
  Application.Run;
end.

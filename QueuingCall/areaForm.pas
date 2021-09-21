unit areaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, AdvSmoothLabel,
  Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls, AdvGroupBox, AdvOfficeButtons;

type
  TareaFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  areaFrm: TareaFrm;

implementation

{$R *.dfm}

uses settingForm;

procedure TareaFrm.AdvSmoothButton2Click(Sender: TObject);
begin
  with settingFrm do
  begin
    quecntrQ.Close;
    quecntrQ.Open;

    na_tf.Text := quecntrQtype_na.Text;
    cc_tf.Text := quecntrQtype_cc.Text;
    rd_tf.Text := quecntrQtype_rd.Text;
    rp_tf.Text := quecntrQtype_rp.Text;
    sp_tf.Text := quecntrQtype_sp.Text;
    bi_tf.Text := quecntrQtype_bi.Text;

    OKbtn := false;
    CancelB := true;

    close;
  end;
end;

procedure TareaFrm.AdvSmoothButton3Click(Sender: TObject);
begin
  close;
  settingFrm.Close;
end;

end.

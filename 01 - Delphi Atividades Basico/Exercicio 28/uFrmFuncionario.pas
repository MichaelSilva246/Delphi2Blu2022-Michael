unit uFrmFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFuncionarios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtSalario: TEdit;
    edtSalarioMin: TEdit;
    mmObs: TMemo;
    btnCalcular: TButton;
    bntListar: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

{$R *.dfm}

procedure TfrmFuncionarios.btnCalcularClick(Sender: TObject);
var
  I: Integer;
  xNome: String;
  xSalario, xSalarioMin, xR50, xR20, xR15, xR10, xReajuste, xSalarioAjustado: Currency;
begin
  xNome := edtNome.Text;
  xSalario := StrToFloat(edtSalario.Text);
  xSalarioMin := StrToFloat(edtSalarioMin.Text);

  xR50 := xSalarioMin * 3;
  xR20 := xSalarioMin * 10;
  xR15 := xSalarioMin * 20;

  //for I := Low to High do

  if xSalario < xR50 then
  begin
    xReajuste := xSalario * 50/100;
    xSalarioAjustado := xReajuste + xSalario;
    mmObs.Lines.Add('Nome: ' + xNome + #13#10 +
                    'Reajuste 50%: ' + FloatToStr(xReajuste) + #13#10 +
                    'Salário Ajustado: ' + FloatToStr(xSalarioAjustado) + #13#10);
  end
  else if (xSalario > xR50) and (xSalario < xR20) then
  begin
    xReajuste := xSalario * 20/100;
    xSalarioAjustado := xReajuste + xSalario;
    mmObs.Lines.Add('Nome: ' + xNome + #13#10 +
                    'Reajuste 20%: ' + FloatToStr(xReajuste) + #13#10 +
                    'Salário Ajustado: ' + FloatToStr(xSalarioAjustado) + #13#10);
  end
  else if (xSalario > xR20) and (xSalario < xR15) then
  begin
    xReajuste := xSalario * 15/100;
    xSalarioAjustado := xReajuste + xSalario;
    mmObs.Lines.Add('Nome: ' + xNome + #13#10 +
                    'Reajuste 15%: ' + FloatToStr(xReajuste) + #13#10 +
                    'Salário Ajustado: ' + FloatToStr(xSalarioAjustado) + #13#10);
  end
  else if xSalario > xR15 then
  begin
    xReajuste := xSalario * 10/100;
    xSalarioAjustado := xReajuste + xSalario;
    mmObs.Lines.Add('Nome: ' + xNome + #13#10 +
                    'Reajuste 10%: ' + FloatToStr(xReajuste) + #13#10 +
                    'Salário Ajustado: ' + FloatToStr(xSalarioAjustado) + #13#10);
  end;
end;

end.

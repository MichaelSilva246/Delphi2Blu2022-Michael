unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, uBombaCombustivel;

type
  TTipos = (tpDiesel=2, tpGasolinaComum=0, tpGasolinaAditivada=1, tpAlcool=3);
  TForm1 = class(TForm)
    Label1: TLabel;
    cmbCombustiveis: TComboBox;
    bntEscolher: TButton;
    rdAbastecer: TRadioGroup;
    edtValor: TEdit;
    bntAbastecer: TButton;
    mmResultado: TMemo;
    bntAlterarValor: TButton;
    btnAlteraQtdC: TButton;
    procedure bntEscolherClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bntAbastecerClick(Sender: TObject);
    procedure rdAbastecerClick(Sender: TObject);
    procedure bntAlterarValorClick(Sender: TObject);
    procedure btnAlteraQtdCClick(Sender: TObject);
  private
    { Private declarations }
  public
    xBomba: TBombaCombustivel;
  end;

var
  Form1: TForm1;

implementation

uses
   Vcl.Dialogs;

{$R *.dfm}

procedure TForm1.bntAbastecerClick(Sender: TObject);
var
  xValor: Currency;
begin
  if (rdAbastecer.ItemIndex >= 0) and (TryStrToCurr(edtValor.Text, xValor))
  and (xValor > 0) then
    begin
      if rdAbastecer.ItemIndex = 0 then
        begin
          mmResultado.Lines.Add(xBomba.TipoCombustivel + 'Total de litros: ' + FormatFloat('0.000', xBomba.abastecerPorValor(xValor)));
        end
      else
        begin
          mmResultado.Lines.Add(xBomba.TipoCombustivel + 'Total a ser pago: R$' + xBomba.abastecerPorLitro(xValor));
        end;
    end
  else
    begin
      ShowMessage('Erro na seleção, conversão ou valor inserido.');
    end;
  bntAlterarValor.Enabled := True;
  btnAlteraQtdC.Enabled := True;
end;

procedure TForm1.bntAlterarValorClick(Sender: TObject);
var
  xNovoValor: Currency;
begin
  xNovoValor := StrToFloat(inputbox('Novo valor do litro','Digite o novo valor do litro',''));
  xBomba.alterarValor(FloatToStr(xNovoValor));
end;

procedure TForm1.bntEscolherClick(Sender: TObject);
begin
  if cmbCombustiveis.ItemIndex >= 0 then
    begin
      case TTipos(cmbCombustiveis.ItemIndex) of
        tpGasolinaComum:
          begin
            xBomba.alterarCombustivel('Gasolina Comum');
            xBomba.alterarValor('4,99');
          end;

        tpGasolinaAditivada:
          begin
            xBomba.alterarCombustivel('Gasolina Aditivada');
            xBomba.alterarValor('5,08');
          end;

        tpDiesel:
          begin
            xBomba.alterarCombustivel('Diesel');
            xBomba.alterarValor('5,80');
          end;

        tpAlcool:
          begin
            xBomba.alterarCombustivel('Alcool');
            xBomba.alterarValor('4,65');
          end;
      end;
    end;
  rdAbastecer.Enabled := True;
end;

procedure TForm1.btnAlteraQtdCClick(Sender: TObject);
var
  xNovoValorBomba: Double;
begin
  xNovoValorBomba := StrToFloat(inputbox('Alterar a quantidade de combustivel na bomba','Digite a nova quantidade da bomba',''));
  xBomba.QuantidadeCombustivel := xNovoValorBomba;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(xBomba);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xBomba := TBombaCombustivel.Create;
  xBomba.QuantidadeCombustivel := 1000;
end;

procedure TForm1.rdAbastecerClick(Sender: TObject);
begin
  edtValor.Enabled := True;
  bntAbastecer.Enabled := True;
end;

end.

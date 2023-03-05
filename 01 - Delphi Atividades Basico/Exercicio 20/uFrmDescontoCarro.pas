unit uFrmDescontoCarro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Carro;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Carro;
end;

procedure TForm1.Carro;
var
  xValor, xDesconto: Currency;
  xAno, I, xMaisNovo, xMaisVelho: Integer;
begin
  xMaisVelho := 0;
  xMaisNovo := 0;
  
  repeat
    xValor := StrToFloat(InputBox('Valor do Carro', 'Valor do Carro', '0'));
    xAno := StrToInt(InputBox('Ano do Carro', 'Ano do Carro', '0'));
        
    if xAno <= 2000 then
    begin
      xDesconto := xValor * 12/100;
      xMaisVelho := xMaisVelho + 1;
    end  
    else if xAno > 2000 then
    begin
      xDesconto := xValor * 7/100 ;
      xMaisNovo := xMaisNovo + 1;
    end;     

    ShowMessage('O valor do carro é de: R$' + FloatToStr(xValor) + #13#10 +
                'O valor do desconto é de: R$' + FloatToStr(xDesconto) + #13#10 +
                'O valor a se pagar é : R$' + FloatToStr(xValor - xDesconto));

  until MessageDlg('Deseja continuar calculado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo;

  Showmessage('Carros acima dos ano 2000: ' + IntToStr(xMaisNovo) + #13#10 +
              'Carro abaixo dos ano 2000: ' + IntToStr(xMaisVelho));  

end;
end.

unit uFrmJuros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtDeposito: TEdit;
    Label2: TLabel;
    mmRendimento: TMemo;
    Label3: TLabel;
    btnSimular: TButton;
    Label4: TLabel;
    edtMeses: TEdit;
    procedure btnSimularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSimularClick(Sender: TObject);
var
  xDeposito, xMeses, xRendimento, xJuros: Currency;
begin
  xDeposito := StrToInt(edtDeposito.Text);
  xMeses := StrToInt(edtMeses.Text);
  xJuros := 0.07/100;

  xRendimento := (xDeposito * xJuros) * xMeses;

  mmRendimento.Lines.Text := FloatToStr(xRendimento);
end;

end.

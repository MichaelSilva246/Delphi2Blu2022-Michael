unit uFrmDolarReal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtDolar: TEdit;
    Label2: TLabel;
    EdtValorDolar: TEdit;
    lbObs: TLabel;
    btnConversao: TButton;
    procedure btnConversaoClick(Sender: TObject);
    procedure edtDolarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConversaoClick(Sender: TObject);
var
  xDolar, xReal, xDolarAtual: Currency;
begin
  xDolarAtual := StrToFloat(edtDolar.text);
  xDolar := StrToFloat(edtValorDolar.text);

  lbObs.Caption := 'Seu valor em reais: ' + FloatToStr(xDolarAtual * xDolar);
end;

procedure TForm1.edtDolarChange(Sender: TObject);
var
  xDolar: currency;
begin
  edtDolar.Text := FloatToStr(5.27);
end;

end.

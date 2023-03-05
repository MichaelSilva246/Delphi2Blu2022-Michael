unit uFrmConverterFahrenhet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtCelsius: TEdit;
    lbFahrenheit: TLabel;
    btnConverter: TButton;
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConverterClick(Sender: TObject);
var
  xCelsius, xFahrenheit, xConversao: Double;
begin

  xCelsius := StrToFloat(edtCelsius.Text);
  xConversao := (xCelsius * 9/5) + 32;

  lbFahrenheit.Caption := 'Temperatura em Fahrenheit: ' + FloatToStr(xConversao);

end;

end.

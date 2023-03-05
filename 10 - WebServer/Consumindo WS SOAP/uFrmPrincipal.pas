unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IHello_World1;

type
  TfrmPrincipal = class(TForm)
    edtValor: TEdit;
    btnEchoDouble: TButton;
    btnHelloWorld: TButton;
    Label1: TLabel;
    lblResultado: TLabel;
    procedure btnEchoDoubleClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EchoDouble;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnEchoDoubleClick(Sender: TObject);
begin
  Self.EchoDouble;
end;

procedure TfrmPrincipal.btnHelloWorldClick(Sender: TObject);
begin
  lblResultado.Caption := GetIHello_World.helloWorld;
end;

procedure TfrmPrincipal.EchoDouble;
var
  xValor: Double;
  xResultado: Double;
begin
  if not TryStrToFloat(edtValor.Text, xValor) then
    raise Exception.Create('Valor inválido');

    xResultado := GetIHello_World.echoDouble(xValor);
    lblResultado.Caption := 'Resultado: ' + xResultado.ToString;
end;

end.

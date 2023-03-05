unit uFrmEntre100e200;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtNumero: TEdit;
    btnVerificar: TButton;
    lbResposta: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnVerificarClick(Sender: TObject);
var
  xNumero: Integer;
begin
  xNumero := StrToInt(edtNumero.Text);

  if (xNumero >= 100) and (xNumero <= 200) then
    lbResposta.Caption := 'Resposta: Sim, ' + IntToStr(xNumero) + ' está entre 100 e 200.'
  else
    lbResposta.Caption := 'Resposta: Não, ' + IntToStr(xNumero) + ' não está entre 100 e 200.'

end;

end.

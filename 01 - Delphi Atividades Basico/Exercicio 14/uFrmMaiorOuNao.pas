unit uFrmMaiorOuNao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
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
  xNumero1, xNumero2: Integer;
begin
  xNumero1 := StrToInt(edtNumero1.Text);
  xNumero2 := StrToInt(edtNumero2.Text);

  if xNumero1 > xNumero2 then
    lbResposta.caption := 'Resposta: O valor do Edit1 é maior.'
  else
    lbResposta.caption := 'Resposta: O valor do Edit2 é maior.'
end;
end.

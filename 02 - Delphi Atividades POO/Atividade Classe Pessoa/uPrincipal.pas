unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtDataNascimento: TEdit;
    edtAltura: TEdit;
    btnCadastrar: TButton;
    mmImprimir: TMemo;
    Label5: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
  private
    procedure Cadastrar;
  public
  end;

var
  Form1: TForm1;

implementation

uses
  uPessoa;

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  Cadastrar;
end;

procedure TForm1.Cadastrar;
var
  xPessoa: TPessoa;

begin
  xPessoa := TPessoa.Create;

  try
    xPessoa.Nome := edtNome.Text;
    xPessoa.DataNascimento := StrToDateTime(edtDataNascimento.Text);
    xPessoa.Altura := StrToFloat(edtAltura.Text);

    mmImprimir.Lines.Add('Nome cadastrado: ' + xPessoa.Nome);
    mmImprimir.Lines.Add('Sua data de nascimento: ' + DateTimeToStr(xPessoa.DataNascimento));
    mmImprimir.Lines.Add('Sua altura: ' + FloatToStr(xPessoa.altura));
    mmImprimir.Lines.Add('Idade atual: ' + FloatToStr(trunc((date - xPessoa.DataNascimento) / 365.25)));

  finally
    FreeAndNil(xPessoa);
  end;

end;

end.

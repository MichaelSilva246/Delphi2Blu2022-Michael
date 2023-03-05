unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TfrmPrincipal = class(TForm)
    btnComecar: TButton;
    lblSaldo: TLabel;
    btnAlterarNome: TButton;
    btnDepositar: TButton;
    btnSacar: TButton;
    lblNome: TLabel;
    procedure btnComecarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarNomeClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
  private
    FContaCorrente: TContaCorrente;
    procedure Comecar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

{ TfrmPrincipal }

//Alterar Nome
procedure TfrmPrincipal.btnAlterarNomeClick(Sender: TObject);
begin
  FContaCorrente.AlterarNome;
  lblNome.Caption := 'Nome: ' + FContaCorrente.NomeCorretista;
end;

//Botão para começar
procedure TfrmPrincipal.btnComecarClick(Sender: TObject);
begin
  Comecar;
  btnAlterarNome.Visible := True;
  btnSacar.Visible := True;
  btnDepositar.Visible := True;
end;

//Depositar dinheiro
procedure TfrmPrincipal.btnDepositarClick(Sender: TObject);
begin
  FContaCorrente.Depositar;
  lblSaldo.Caption := 'Saldo: R$' + FContaCorrente.Saldo.ToString;
end;

//Sacar dinheiro
procedure TfrmPrincipal.btnSacarClick(Sender: TObject);
begin
  FContaCorrente.Sacar;
  lblSaldo.Caption := 'Saldo: R$' + FContaCorrente.Saldo.ToString;
end;

//Cadastrar dados
procedure TfrmPrincipal.comecar;
var
  xNumeroConta: Integer;
  xNomeCorretista: String;
  xSaldo: Double;
begin
  xNumeroConta := StrToInt(InputBox('Numero da conta', 'Numero da conta', ''));
  xNomeCorretista := InputBox('Nome do corretista', 'Nome do corretista', '');
  xSaldo := StrToFloat(InputBox('Saldo','Saldo', '0'));

  FContaCorrente := TContaCorrente.Create(xNumeroConta, xNomeCorretista, xSaldo);

  lblNome.Caption := 'Nome: ' + fContaCorrente.NomeCorretista;
  lblSaldo.Caption := 'Saldo: R$' + FloatToStr(fContaCorrente.Saldo);
end;

//Destruir
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FContaCorrente);
end;

end.

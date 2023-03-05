unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ValidaCPF, ValidaCNPJ, UClasses;

type
  TForm1 = class(TForm)
    CPF: TEdit;
    btnValidarCPF: TButton;
    Result: TLabel;
    CNPJ: TEdit;
    Result2: TLabel;
    btnValidarCNPJ: TButton;
    edtNome: TEdit;
    edtEndereco: TEdit;
    btnGravar: TButton;
    lblGravar: TLabel;
    edtIdade: TEdit;
    edtIE: TEdit;
    lblPessoa: TLabel;
    lblPessoaFisica: TLabel;
    lblPessoaJuridica: TLabel;
    mmPessoaFisica: TMemo;
    mmPessoaJuridica: TMemo;
    procedure btnValidarCPFClick(Sender: TObject);
    procedure btnValidarCNPJClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Gravar;
    procedure historicoPF;
    procedure historicoPJ;
  public
    xPessoa: TPessoa;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  Gravar;
  btnValidarCPF.Visible := True;
  btnValidarCNPJ.Visible := True;
  CNPJ.Visible := True;
  CPF.Visible := True;
  edtIdade.Visible := True;
  edtIE.Visible := True;
  result.Visible := True;
  result2.Visible := True;
  lblPessoaJuridica.Visible := True;
  lblPessoaFisica.Visible := True;
  mmPessoaFisica.Visible := True;
  mmPessoaJuridica.Visible := True;
end;

//Validar CPF e Listar
procedure TForm1.btnValidarCPFClick(Sender: TObject);
begin
  if isCPF(CPF.Text)
     then Result.Caption := imprimeCPF(CPF.Text)
  else Result.Caption := 'Erro: CPF inválido !!!';
    TPessoaFisica(xPessoa).Idade := StrToInt(edtIdade.Text);
    TPessoaFisica(xPessoa).CPF := CPF.Text;

  historicopf;
end;

//Validar CNPJ e Listar
procedure TForm1.btnValidarCNPJClick(Sender: TObject);
begin
  if isCNPJ(CNPJ.Text)
     then Result2.Caption := imprimeCNPJ(CNPJ.Text)
  else Result2.Caption := 'Erro: CNPJ inválido !!!';
    TPessoaJuridica(xPessoa).IE := edtIE.Text;
    TPessoaJuridica(xPessoa).CNPJ := CNPJ.Text;

  historicopj;
end;

//Gravar Pessoa
procedure TForm1.Gravar;
begin
  xPessoa := TPessoa.Create;
  xPessoa.Nome := edtNome.Text;
  xPessoa.Endereco := edtEndereco.Text;
  lblGravar.Caption := 'Gravado';
end;

//Procedure listar Pessoa fisica
procedure TForm1.historicopf;
begin
  mmPessoaFisica.Lines.Add('Nome: ' + xPessoa.Nome);
  mmPessoaFisica.Lines.Add('CPF: ' + TPessoaFisica(xPessoa).CPF);
  mmPessoaFisica.Lines.Add('Endereço: ' + xPessoa.Endereco);
  mmPessoaFisica.Lines.Add('Idade: ' + IntToStr(TPessoaFisica(xPessoa).Idade));
end;

//Procedure listar Pessoa Juridica
procedure TForm1.historicoPJ;
begin
  mmPessoaJuridica.Lines.Add('Nome: ' + xPessoa.Nome);
  mmPessoaJuridica.Lines.Add('CNPJ: ' + TPessoaJuridica(xPessoa).CNPJ);
  mmPessoaJuridica.Lines.Add('Endereço: ' + xPessoa.Endereco);
  mmPessoaJuridica.Lines.Add('IE: ' + TPessoaJuridica(xPessoa).IE);
end;

//Desturir
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(xPessoa);
end;
end.

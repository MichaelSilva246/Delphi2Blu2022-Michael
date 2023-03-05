unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPessoa, System.Generics.Collections,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Memo2: TMemo;
    edtCPF: TEdit;
    edtNome: TEdit;
    edtEspecialidade: TEdit;
    btnGravar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    btnProximo: TButton;
    Label3: TLabel;
    lblContar: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
  private

  public
    xPessoa: Tpessoa;
    xFila: TFila;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
begin
  xPessoa := TPessoa.Create;

  xPessoa.CPF := edtCpf.Text;
  xPessoa.Nome := edtNome.Text;
  xPessoa.Especialidade := edtEspecialidade.Text;

  xFila.Adicionar(xPessoa);

  lblContar.Caption := xFila.contar;
end;

procedure TfrmPrincipal.btnProximoClick(Sender: TObject);
begin
  Memo2.Lines := Memo1.Lines;
  Memo1.lines.Clear;
  xPessoa := xFila.proximo;
  Memo1.Lines.Add(xPessoa.Nome);
  Memo1.Lines.Add(xPessoa.Especialidade);

  lblContar.Caption := xFila.contar;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  freeandnil(xPessoa);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  xPessoa := Tpessoa.Create;
  xFila := Tfila.Create;
end;

end.

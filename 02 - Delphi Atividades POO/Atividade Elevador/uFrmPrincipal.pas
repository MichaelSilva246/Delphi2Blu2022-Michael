unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uElevador;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnInicializar: TButton;
    btnEntrar: TButton;
    btnSair: TButton;
    btnSubir: TButton;
    btnDescer: TButton;
    Label2: TLabel;
    Label3: TLabel;
    lblAndarAtual: TLabel;
    lblPessoasElevador: TLabel;
    btnEscolher: TButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInicializarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSubirClick(Sender: TObject);
    procedure btnDescerClick(Sender: TObject);
    procedure btnEscolherClick(Sender: TObject);
  private
    { Private declarations }
    FElevador: TElevador;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnInicializarClick(Sender: TObject);
begin
  FElevador := TElevador.Create;

  lblAndarAtual.Caption := FElevador.AndarAtual.ToString;
  lblPessoasElevador.Caption := FElevador.AndarAtual.ToString;

  btnInicializar.Enabled := False;
  btnEntrar.Enabled := True;
  btnSair.Enabled := True;
  btnSubir.Enabled := True;
  btnDescer.Enabled := True;
  btnEscolher.Enabled := True;
end;

procedure TForm1.btnDescerClick(Sender: TObject);
begin
  lblAndarAtual.Caption := FElevador.Descer.ToString;
end;

procedure TForm1.btnEntrarClick(Sender: TObject);
begin
  lblPessoasElevador.Caption := FElevador.Entrar.ToString;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  lblPessoasElevador.Caption := FElevador.Sair.ToString;
end;

procedure TForm1.btnSubirClick(Sender: TObject);
begin
  lblAndarAtual.Caption := FElevador.Subir.ToString;
end;

procedure TForm1.btnEscolherClick(Sender: TObject);
begin
  lblAndarAtual.Caption := FElevador.EscolherAndar.ToString;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FElevador);
end;

end.

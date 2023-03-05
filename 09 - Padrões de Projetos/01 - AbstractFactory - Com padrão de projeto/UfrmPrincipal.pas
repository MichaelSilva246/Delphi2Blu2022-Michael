unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cmbMarca: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblTamanhoTela: TLabel;
    lblMemoriaRam: TLabel;
    lblProcessador: TLabel;
    lblTamanhoHd: TLabel;
    btnExibir: TButton;
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UInterfaces, UDell, UApple;

procedure TForm1.btnExibirClick(Sender: TObject);
var
  xMarca: IFactoryMarca;
  xNotebook: INotebook;
  xDesktop: IDesktop;
begin
  //instancia a marca -> unico IF da aplicacao
  if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
    xMarca := TDell.Create
  else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
    xMarca := TApple.Create;

  //consulta (constroi) os objetos
  xNotebook := xMarca.ConsultarNotebook;
  xDesktop := xMarca.ConsultarDeskTop;

  //exibe os dados
  lblTamanhotela.Caption := xNotebook.BuscarTamanhoTela;
  lblMemoriaRam.Caption := xNotebook.BuscarMemoriaRam;

  lblProcessador.Caption := xDesktop.BuscarNomeProcessador;
  lblTamanhoHd.Caption := xDesktop.BuscarTamanhoHd;

  //detalhe importe como usamos interface para as variaveis
  //n]ao precisamos destrur seus objetos. O delphi ja faz isso.
end;

end.

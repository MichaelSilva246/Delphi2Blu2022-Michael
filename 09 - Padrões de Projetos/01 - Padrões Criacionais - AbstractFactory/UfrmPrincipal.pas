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

procedure TForm1.btnExibirClick(Sender: TObject);
begin
  //Dados do notebook
  if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
  begin
    lblTamanhoTela.Caption := 'Tela de 14 polegadas';
    lblMemoriaRam.Caption := '3GB DDR3';
  end
  else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
  begin
    lblTamanhoTela.Caption := '11.6 polegadas';
    lblMemoriaRam.Caption := '4GB DDR3';
  end;

  //Dados do Desktop
  if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
  begin
    lblProcessador.Caption := 'Intel core i5';
    lblTamanhoHD.Caption := '1 TB';
  end
  else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
  begin
    lblProcessador.Caption := 'Intel Core i7';
    lblTamanhohd.Caption := '500 GB';
  end;

end;

end.

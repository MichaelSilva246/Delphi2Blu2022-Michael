unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    rect_Valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblTituloProduto: TLabel;
    lblCentavosProduto: TLabel;
    lblReaisProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    lblReaisEnvio: TLabel;
    linhaEnvio: TLine;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lblParcelasParcelas: TLabel;
    lyt_botao_compra: TLayout;
    Rectangle1: TRectangle;
    btn_comprar: TSpeedButton;
    lyt_compra_ok: TLayout;
    Image1: TImage;
    lyt_loading_compra: TLayout;
    rect_barra: TRectangle;
    Label1: TLabel;
    rect_fundo: TRectangle;
    rect_fundo_branco_top: TRectangle;
    lyt_detalhes: TLayout;
    rect_fundo_branco_bottom: TRectangle;
    circuloEndereco: TCircle;
    lblproduto: TLabel;
    lblQuantidade: TLabel;
    linhaProduto: TLine;
    circuloProduto: TCircle;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    lblComprador: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn_comprarClick(Sender: TObject);
  private
    FLoop: String;

    procedure LoadingCompra(aInd: Boolean);
    procedure Comprar_WS;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.btn_comprarClick(Sender: TObject);
begin
  Self.LoadingCompra(True);
  rect_barra.Margins.Right := rect_fundo.Width;
  FLoop := 'S';

  Self.Comprar_WS;

  TThread.CreateAnonymousThread(procedure
  begin
    while FLoop = 'S' do
    begin
      if rect_barra.Margins.Right <= 0 then
        rect_barra.Margins.Right := rect_fundo.Width;

        Sleep(150);

        TThread.Synchronize(nil, procedure
        begin
          rect_barra.Margins.Right := rect_barra.Margins.Right - 1;
        end);
    end;

    //Finalizou com erro...
    if FLoop = 'ERRO' then
    begin
      TThread.Synchronize(nil, procedure
      begin
        Self.LoadingCompra(False);
        ShowMessage('Erro ao finalizar compra');
      end);
    end;

    //Finalizou com sucesso...
    if FLoop = 'OK' then
    begin
      TThread.Synchronize(nil, procedure
      begin
        lyt_loading_compra.AnimateFloat('Margins.Left', 150, 0.3);
        lyt_loading_compra.AnimateFloat('Margins.Right', 150, 0.3);
        lyt_loading_compra.AnimateFloat('Opacity', 0, 0.3);
      end);

      Sleep(450);

      TThread.Synchronize(nil, procedure
      begin
         lyt_compra_ok.Visible := True;
         lyt_compra_ok.AnimateFloat('Opacity', 1, 0.4);
      end);

      Sleep(1000);

      TThread.Synchronize(nil, procedure
      begin
        ShowMessage('Compra realizada com sucesso');
      end);
    end;
  end).Start;
end;

procedure TfrmPrincipal.Comprar_WS;
begin
  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(5000);
    //...
    //...
    //...
    FLoop := 'OK';
  end).Start;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Self.LoadingCompra(False);
end;

procedure TfrmPrincipal.LoadingCompra(aInd: Boolean);
begin
  rect_fundo_branco_top.Visible := aInd;
  rect_fundo_branco_bottom.Visible := aInd;

  lyt_botao_compra.Visible := not aInd;
  lyt_loading_compra.Visible := aInd;
  lyt_compra_ok.Visible := False;
  lyt_compra_ok.Opacity := 0;
end;

end.

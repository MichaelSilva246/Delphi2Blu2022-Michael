program SistemaPedidoCompras;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmUnMedida in 'UfrmUnMedida.pas' {frmUnidadeMedida},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos},
  UfrmRelUnidadeMedida in 'UfrmRelUnidadeMedida.pas' {frmRelUnidadeMedida},
  UfrmRelProdutos in 'UfrmRelProdutos.pas' {frmRelProdutos},
  UfrmRelCompradores in 'UfrmRelCompradores.pas' {frmRelCompradores},
  UfrmRelFornecedores in 'UfrmRelFornecedores.pas' {frmRelFornecedores},
  UfrmRelPedidos in 'UfrmRelPedidos.pas' {frmRelPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

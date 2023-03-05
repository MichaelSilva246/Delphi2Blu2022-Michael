unit UController.Produto;

interface

uses UProduto, Horse, GBSwagger.Path.Attributes, system.JSON;

type

  [SwagPath('produto', 'Produto')]
  TProdutoController = class
  private
  public
    [SwagGET('Listar Produtos', True)]
    [SwagParamQuery('id', 'id do produto')]
    [SwagResponse(200, TProduto, 'Informações do produto', True)]
    class procedure GetProduto(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);

    [SwagGET('{id}', 'Procurar um Produto')]
    [SwagParamPath('id', 'id do Produto')]
    [SwagResponse(200, TProduto, 'Informações do Produto')]
    [SwagResponse(404)]
    class procedure FindUser(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);

    [SwagPOST('Adicionar Novo Produto')]
    [SwagParamBody('Informações do Produto', TProduto)]
    [SwagResponse(201, TProduto)]
    [SwagResponse(400)]
    class procedure InsertProduto(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);

    [SwagDELETE('{id}', 'Deletar um Produto')]
    [SwagParamPath('id', 'Id do Produto')]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse;
      Next: TProc);

    [SwagPUT('{id}', 'Atualizar um Produto')]
    [SwagParamPath('id', 'Id do produto')]
    [SwagParamBody('Informações do produto', Tproduto)]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure UpdateProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

{ TProdutoController }

uses UDadosGerais, System.Classes, System.SysUtils;

class procedure TProdutoController.DeleteProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xId: Integer;
  xDadosProdutos: TDadosGerais;
begin
  xDadosProdutos := TDadosGerais.Create('Produtos.json');
  try
    xId := strToInt(Req.Params.Items['id']);

    if xDadosProdutos.RemoverRegistro(xId) then
      Res.Status(THTTPStatus.NoContent)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosProdutos.Free;
  end;
end;

class procedure TProdutoController.FindUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  //Res.Send('{"id": 1, "descricao": "Travesseiro", "unidadeMedida": "UN", "precoVenda": "25,99"}')

end;

class procedure TProdutoController.GetProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosProdutos: TDadosGerais;
begin
  xDadosProdutos := TDadosGerais.Create('Produtos.json');
  try
    Res.Send<TJSONArray>(xDadosProdutos.JSON);
  finally
    xDadosProdutos.Free;
  end;
end;

class procedure TProdutoController.InsertProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosProdutos: TDadosGerais;
begin
  xDadosProdutos := TDadosGerais.Create('Produtos.json');
  try
    if xDadosProdutos.AdicionarRegistro(Req.Body<TJSONObject>) then
      Res.Status(THTTPStatus.Ok)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosProdutos.Free;
  end;
end;

class procedure TProdutoController.UpdateProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.

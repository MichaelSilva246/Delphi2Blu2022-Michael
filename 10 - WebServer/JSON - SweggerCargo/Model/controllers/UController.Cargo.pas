unit UController.Cargo;

interface

uses
  Horse,
  UCargo,
  GBSwagger.Path.Attributes;

type
  [SwagPath('cargo', 'Cargo')]
  TCargoController = class
    private
    public
      [SwagGET('Listar Cargos', True)]
      [SwagParamQuery('id', 'id do cargo')]
      [SwagResponse(200, TCargo, 'Informações do cargo', True)]
      class procedure GetCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagGET('{id}', 'Procurar um cargo')]
      [SwagParamPath('id', 'id do cargo')]
      [SwagResponse(200, TCargo, 'Informações do cargo')]
      [SwagResponse(404)]
      class procedure FindUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPOST('Adicionar Novo Cargo')]
      [SwagParamBody('Informações do Cargo', TCargo)]
      [SwagResponse(201, TCargo)]
      [SwagResponse(400)]
      class procedure InsertUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPUT('{id}', 'Atualizar um cargo')]
      [SwagParamPath('id', 'Id do Cargo')]
      [SwagParamBody('Informações do Cargo', TCargo)]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure UpdateUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagDELETE('{id}', 'Deletar um cargo')]
      [SwagParamPath('id', 'Id do cargo')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;


implementation

{ TPessoaController }


{ TCargoController }

class procedure TCargoController.DeleteUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TCargoController.FindUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id": 1, "descricao": "CEO"}')
end;

class procedure TCargoController.GetCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('[{"id": 1, "descricao": "CEO"}]')
end;

class procedure TCargoController.InsertUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TCargoController.UpdateUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.

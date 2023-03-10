unit UController.Pessoa;

interface

uses
  Horse,
  UPessoa,
  GBSwagger.Path.Attributes;

type
  [SwagPath('pessoa', 'Pessoa')]
  TPessoaController = class
    private
    public
      [SwagGET('Listar Pessoas', True)]
      [SwagParamQuery('id', 'id da pessoa')]
      [SwagResponse(200, TPessoa, 'Informações da Pessoa', True)]
      class procedure GetPessoa(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagGET('[id]', 'Procurar uma Pessoa')]
      [SwagParamPath('id', 'id da pessoa')]
      [SwagResponse(200, TPessoa, 'Informações da Pessoa')]
      [SwagResponse(404)]
      class procedure FindUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPOST('Adicionar Nova Pessoa')]
      [SwagParamBody('Informações da Pessoa', TPessoa)]
      [SwagResponse(201, TPessoa)]
      [SwagResponse(400)]
      class procedure InsertUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPUT('{id}', 'Atualizar uma Pessoa')]
      [SwagParamPath('id', 'Id da Pessoa')]
      [SwagParamBody('Informações da Pessoa', TPessoa)]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure UpdateUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagDELETE('{id}', 'Deletar uma Pessoa')]
      [SwagParmPath('id', 'Id da Pessoa')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;


implementation

{ TPessoaController }

class procedure TPessoaController.DeleteUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TPessoaController.FindUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id": 1, "nome": "Nathan Andrade"}')
end;

class procedure TPessoaController.GetPessoa(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('[{"id": 1, "nome": "Nathan Andrade"}]')
end;

class procedure TPessoaController.InsertUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TPessoaController.UpdateUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.

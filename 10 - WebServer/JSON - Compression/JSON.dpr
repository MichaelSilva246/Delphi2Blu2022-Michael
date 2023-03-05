program JSON;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Commons,
  Horse.BasicAuthentication,
  Horse.Compression,
  System.SysUtils,
  System.JSON,
  UDadosGerais in 'model\service\UDadosGerais.pas';

begin
  // Ao utilizar o compression ele tem que vir antes do Jhonson
  THorse.Use(Compression());

  THorse.Use(Jhonson());

  THorse.Use(HorseBasicAuthentication(
    function(const aUserName, aPassword: String): Boolean
    begin
      // aqui teria nossa logica para validr o usuario do banco de dados

      result := aUserName.Equals('user') and aPassword.Equals('password');

    end));

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      I: Integer;
      LPong: TJSONArray;
    begin
      LPong := TJSONArray.Create;
      for I := 0 to 1000 do
        LPong.Add(TJSONObject.Create(TJSONPair.Create('ping', 'pong')));
      Res.Send(LPong);
    end);

  THorse.Get('/cargos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Cargo.json');
      try
        Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Post('/cargos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Cargo.json');
      try
        if xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
          Res.Status(THTTPStatus.Ok)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Delete('/cargos/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xId: Integer;
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Cargo.json');
      try
        xId := Req.Params.Items['id'].ToInteger;

        if xDadosPessoas.RemoverRegistro(xId) then
          Res.Status(THTTPStatus.NoContent)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  // Codigo do prof
  THorse.Get('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Post('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        if xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
          Res.Status(THTTPStatus.Ok)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Delete('/users/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xId: Integer;
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        xId := Req.Params.Items['id'].ToInteger;

        if xDadosPessoas.RemoverRegistro(xId) then
          Res.Status(THTTPStatus.NoContent)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);

end.

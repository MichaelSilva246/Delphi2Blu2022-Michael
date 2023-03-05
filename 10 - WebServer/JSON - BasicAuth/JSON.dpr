program JSON;

{$APPTYPE CONSOLE}

uses
  Horse,
  horse.Jhonson,
  Horse.Commons,
  Horse.BasicAuthentication,
  System.SysUtils,
  system.JSON,
  UDadosGerais in 'model\service\UDadosGerais.pas';

begin
  THorse
    .Use(Jhonson());

   THorse
    .Use(HorseBasicAuthentication(
      function(const aUserName, aPassword: String): Boolean
      begin
        //aqui teria nossa logica para validr o usuario do banco de dados

        result := aUserName.Equals('user') and
                  aPassword.Equals('password');

      end));

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

  //Codigo do prof
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
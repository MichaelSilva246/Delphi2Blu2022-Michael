program Swegger;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  UPessoa in 'Model\entities\UPessoa.pas',
  UController.Pessoa in 'Model\controllers\UController.Pessoa.pas';

procedure SwaggerConfig;
  begin
    //isso aqui ? programa??o funcional
    //usa interface
    Swagger
      .Register
        .SchemaOnError(TAPIError)
        .&End
        .Info
          .Title('Minha Pirmeira API documentada')
          .Description('API Horse')
          .Contact
            .Name('Armando Neto')
            .Email('email@hotmail.com')
            .URL('http://www.mypage.com.br')
          .&End
        .&End
      .BasePath('v1');
  end;

  procedure Registry;
  begin
    //V1 - Versionamento da API
    THorse.Group.Prefix('v1')
      .Get('/pessoas', TPessoaController.GetPessoa)
      .Get('/pessoas/:id', TPessoaController.FindUser)
      .Post('/pessoas', TPessoaController.InsertUser)
      .Put('/pessoas/:id', TPessoaController.UpdateUser)
      .Delete('/pessoas/:id', TPessoaController.DeleteUser)
  end;

begin
  THorse
    .Use(CORS)
    .Use(HorseSwagger);

  //http://localhost:9000/swagger/doc/html
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TPessoaController);

  Registry;

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
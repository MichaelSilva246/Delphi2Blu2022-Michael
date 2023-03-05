program PRODUTOS;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  Horse.CORS,
  Horse.GBSwagger,
  horse.Jhonson,
  system.JSON,
  Horse.BasicAuthentication,
  UProduto in 'model\entities\UProduto.pas',
  UController.Produto in 'model\controller\UController.Produto.pas',
  UDadosGerais in 'model\service\UDadosGerais.pas';

//SITE SWAGGER CUSTOMIZADO
procedure SwaggerConfig;
  begin
    Swagger
      .Register
        .SchemaOnError(TAPIError)
        .&End
        .Info
          .Title('Meus produtos!')
          .Description('Meu produtos feito com API REST')
          .Contact
            .Name('Nathan de Andrade')
            .Email('nathan.andrade1504@gmail.com')
            .URL('https://github.com/NathanBnu')
          .&End
        .&End
      .BasePath('v1');
  end;

//CHAMANDO OS VERBOS
procedure Registry;
begin
  THorse.Group.Prefix('v1')
    .Get('/produtos', TProdutoController.GetProduto)
    .Get('/protudos/:id', TProdutoController.FindUser)
    .Post('/produtos', TProdutoController.InsertProduto)
    .Delete('/produtos/:id', TProdutoController.DeleteProduto)
    .Put('/produtos/:id', TProdutoController.UpdateProduto)
end;

begin
  THorse
    .Use(CORS)
    .Use(Jhonson())
    .Use(HorseSwagger);

  THorse
  .Use(HorseBasicAuthentication(
    function(const aUserName, aPassword: String): Boolean
    begin
      //aqui teria nossa logica para validr o usuario do banco de dados

      result := aUserName.Equals('user') and
                aPassword.Equals('password');

    end));

  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TProdutoController);

  Registry;

  //http://localhost:8000/swagger/doc/html
  THorse.Listen(8000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
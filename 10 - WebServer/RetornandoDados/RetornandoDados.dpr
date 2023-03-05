program RetornandoDados;

{$APPTYPE CONSOLE}

uses
  Horse,
  horse.Jhonson,
  horse.Query,
  FireDac.COMP.Client,
  Firedac.DApt,
  FireDac.Stan.Def,
  Data.DB,
  FireDac.phys.MySQL,
  FireDAC.Stan.Async,
  System.SysUtils;

begin
  THorse.Use(Jhonson);
  THorse.Use(Query); //Middleware do Query deve vir sempre depois do Jhonson

  //usando dados em memória
  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xMemTable: TFDMemTable;
    begin
      xMemTable := TFDMemTable.Create(nil);
      xMemTable.FieldDefs.add('Codigo', ftInteger, 0, False);
      xMemTable.FieldDefs.add('Nome', ftString, 100, False);

      xMemTable.LogChanges := False;
      xMemTable.CachedUpdates := True;

      xMemTable.Close;
      xMemTable.CreateDataSet;
      xMemTable.Open;

      xMemTable.AppendRecord([1, 'Ping']);
      xMemTable.AppendRecord([2, 'Pong']);
      xMemTable.ApplyUpdates;

      Res.Send<TFDMemTable>(xMemTable);
    end);

  //Lendo dados do banco Sakila(Actors)
  THorse.Get('/list',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xConexao: TFDConnection;
      xDriver: TFDPhysMySQLDriverLink;
      xQuery: TFDQuery;
    begin
      xDriver := TFDPhysMySQLDriverLink.Create(nil);
      xConexao := TFDConnection.Create(nil);
      xQuery := TFDQuery.Create(nil);

      //driver de conexao do Mysql
      xDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'libmysql.dll';

      //parametros de configuracao do banco
      xConexao.DriverName := 'MySQL';
      xConexao.LoginPrompt := False;
      xConexao.Params.Add('Database=sakila');
      xConexao.Params.Add('User_Name=root');
      xConexao.Params.Add('Password=root');
      xConexao.Params.Add('Server=localhost');
      xConexao.Params.Add('DriverId=MySQL');
      xConexao.Open;
      //Query
      xQuery.Connection := xConexao;
      xQuery.Open('SELECT * FROM ACTOR');

      Res.Send<TFDQuery>(xQuery);
    end);


  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
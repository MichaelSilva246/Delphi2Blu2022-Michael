unit UDAO.UnidadeMedidas;

interface

uses
  System.JSON, UDAO.Intf, DataSet.Serialize;

type
  TDAOUnidadeMedidas = class(TInterfacedObject, IDAO)
    function ObterRegistro: TJSONArray;
    function ProcurarPorId(const aIdentificador: Integer)
  : TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

{ TDAOUnidadeMedidas }

uses UUtil.Banco, System.SysUtils, FireDAC.Comp.Client;

function TDAOUnidadeMedidas.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
  try
    Result := TUtilBanco.AdicionarRegistro('UNIDADEMEDIDA', aRegistro.ToJSON);
  except
    on e: Exception do
      raise Exception.Create('Erro ao Adicionar Registro: ' + e.Message);
  end;
end;

function TDAOUnidadeMedidas.DeletarRegistro(
  const aIdentificador: Integer): Boolean;
begin
  try
    Result := TUtilBanco.RemoverRegistro('UNIDADEMEDIDA', aIdentificador);
  except
    on e: Exception do
      raise Exception.Create('Erro ao Remover Registro: ' + e.Message);
  end;
end;

function TDAOUnidadeMedidas.ObterRegistro: TJSONArray;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta('SELECT * FROM UNIDADEMEDIDA');

      Result := xQuery.ToJSONArray();
      //TOJSONARRAY E LOADFROMTOJSON - Dataset.serialize
    except
      on e: Exception do
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TDAOUnidadeMedidas.ProcurarPorId(
  const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta(Format('SELECT * FROM UNIDADEMEDIDA WHERE ID = %d', [aIdentificador]));

      Result := xQuery.toJSONObject();
      except
        on e: Exception do
          raise Exception.Create('Erro ao Obter Registro: ' + e.Message);
    end;

  finally
     FreeAndNil(xQuery);
  end;
end;

end.

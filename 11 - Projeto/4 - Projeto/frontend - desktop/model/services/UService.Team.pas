unit UService.Team;

interface

uses
  UEntity.Teams,
  Uservice.base,
  Generics.Collections;

type
  TServiceTeam = class(TServiceBase)
    private
      FTeam: TTeam;
      FTeams: TObjectlist<TTeam>;

      function GetTeams: TObjectList<TTeam>;

    public
      constructor Create; overload;
      constructor Create(aTeam: TTeam); overload;
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar; override;
      procedure Excluir; override;

      function ObterRegistro (const aId: Integer): TObject; override;

      property Teams: TObjectList<TTeam> read GetTeams;
  end;

implementation

uses
  System.SysUtils, system.JSON, UUtils.Constants, dataset.Serialize, Firedac.comp.Client, rest.Types;

{ TServiceTeam }

constructor TServiceTeam.Create;
begin
  inherited Create;

  FTeams := TObjectList<TTeam>.create;
end;

constructor TServiceTeam.Create(aTeam: TTeam);
begin
  FTeam := aTeam;

  Self.Create;
end;

destructor TServiceTeam.Destroy;
begin
  FreeAndNil(FTeam);
  FreeAndNil(FTeams);
  inherited;
end;

procedure TServiceTeam.Excluir;
begin
  if (not Assigned(FTeam)) or (FTeam.Id = 0) then
    raise Exception.Create('Nenhum time foi escolhido para exclusão.');

  try
    FRestClient.BaseURL := format(URL_BASE_TEAM + '/%d', [FTeam.Id]);    //VERIFICAR ERRO DE NÃO EXCLUIR
    FRESTRequest.Method := rmDelete;
    FRESTRequest.execute;

    case FRESTResponse.StatusCode of
      API_SUCESSO_SEM_RETORNO:
        Exit;
      API_NAO_AUTORIZADO:
        raise Exception.Create('Usuário não autorizado.');
      else
        raise Exception.Create('Erro não catalogado');
    end;
  except on E: Exception do
    raise Exception.Create(e.message);
  end;
end;

function TServiceTeam.GetTeams: TObjectList<TTeam>;
begin
  Result := FTeams;
end;

procedure TServiceTeam.Listar;
var
  xMemTable: TFDMemTable;
begin
  FTeams.Clear;

  xMemTable := TFDMemTable.Create(nil);

  try
    try
      FRESTClient.BaseURL := URL_BASE_TEAM;
      FRESTRequest.Method := rmGet;
      FRESTRequest.Execute;

      case FRESTResponse.StatusCode of
        API_SUCESSO:
        begin
          xMemTable.LoadFromJSON(FRESTResponse.Content);

          while not xMemTable.Eof do
          begin
            FTeams.add(TTeam.Create(xMemTable.FieldByName('id').AsInteger,
                                    xMemTable.FieldByName('name').AsString));

            xMemTable.Next;
          end;
        end;
        API_NAO_AUTORIZADO:
          raise Exception.Create('Usuário não autorizado.');
        else
          raise Exception.Create('Erro ao carregar a lista de Times. Código do Erro: ' + FRESTResponse.StatusCode.ToString);
      end;
    except on E: Exception do
      raise Exception.Create(e.Message);
    end;
  finally
    FreeAndNil(xMemTable);
  end;
end;

function TServiceTeam.ObterRegistro(const aId: Integer): TObject;
var
  xMemTable: TFDMemTable;
begin
  Result := nil;

  xMemTable := TFDMemTable.Create(nil);

  try
    FRESTClient.BaseURL := URL_BASE_TEAM + '/' + aId.ToString;
    FRESTRequest.Method := rmGet;
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = API_SUCESSO then
    begin
      xMemTable.LoadFromJSON(FRESTResponse.Content);

      if xMemTable.FindFirst then
        Result := TTeam.Create(xMemTable.FieldByName('id').AsInteger);
    end;
  finally
    FreeAndNil(xMemTable);
  end;
end;

procedure TServiceTeam.Registrar;
begin
  try
    FRESTClient.BaseURL := URL_BASE_TEAM;
    FRESTRequest.Method := rmPost;
    FRESTRequest.Params.AddBody(FTeam.JSON);
    FRESTRequest.Execute;

    case FRESTResponse.StatusCode of
      API_CRIADO:
        Exit;
      API_NAO_AUTORIZADO:
        raise Exception.Create('Usuário não autorizado.');
      else
        raise Exception.Create('Erro não catalogado.');
    end;
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

end.

unit UInvoker;

interface

uses
  System.Classes, uCommand;

type
  TInvoker = class
  private
    //lista para armazenar os comandos
    FComandos: TInterfaceList;
  public
    constructor Create;
    procedure Add(aComando: ICommand);
    procedure ExtrairInformacoes;
  end;
implementation

{ TInvoker }

procedure TInvoker.Add(aComando: ICommand);
begin
  //adiciona o comando na lista
  FComandos.Add(aComando);
end;

constructor TInvoker.Create;
begin
  FComandos := TInterfaceList.Create;
end;

procedure TInvoker.ExtrairInformacoes;
var
  xContador: Integer;
begin
  //percorre a lista de comando armazenados, executando a operacao de cada um
  for xContador := 0 to Pred(FComandos.Count) do
  begin
    ICommand(FComandos[xContador]).Execute;
  end;
end;

end.

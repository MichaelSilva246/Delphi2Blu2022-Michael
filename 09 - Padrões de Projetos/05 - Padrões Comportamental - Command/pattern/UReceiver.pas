unit UReceiver;

interface

type
  TReceiver = class
    public
      procedure ExtrairProcessos;
      procedure ExtrairProgramas;
      procedure ExtrairVariaveisAmbiente;
  end;
implementation

uses
  TLHELP32, System.Classes, System.SysUtils, Winapi.Windows, Registry;

{ TReceiver }

procedure TReceiver.ExtrairProcessos;
var
  xHandle: THandle;
  xProcessEntry: TProcessEntry32;
  xListaProcessos: TStringList;
begin
  //Metodo responsavel por extrair a lista de processos em execucao
  xHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  xListaProcessos := TStringList.Create;
  try
    xProcessEntry.dwSize := SizeOf(TProcessEntry32);
    process32Next(xHandle, xProcessEntry);

    //Percorre os processo que estão em execucao adicionando os nas variaveis ListaProcessos
    repeat
      xListaProcessos.Add(xProcessEntry.szExeFile)
    until not Process32Next(xHandle, xProcessEntry);

    //grava a lista de processos no arquivo 'processos.tvt'
    xListaProcessos.SaveToFile(GetCurrentDir + '\Processos.txt')
  finally
    CloseHandle(xHandle);
    FreeAndNil(xListaProcessos);
  end;
end;

procedure TReceiver.ExtrairProgramas;
const
  CHAVE_REGISTRO = '\Software\Microsoft\Windows\CurrentVersion\Uninstall\';
var
  xRegistro: TRegistry;
  xContador: Integer;
  xListaChaveS: TStringList;
  xListaProgramas: TStringList;
begin
  //metodo responsavel por extrair a lista de programas instalados
  //Obs: a aplicacao deve ser executada como administrador

  xRegistro := TRegistry.Create;
  xListaChaves := TStringLIST.CREATE;
  xListaProgramas := TStringList.Create;
  try
    //obtem a lista de chaves existentes no caminho do registro
    //que armazena as informacoes de programas instalados
    xRegistro.RootKey := HKEY_LOCAL_MACHINE;
    xRegistro.OpenKey(CHAVE_REGISTRO, False);
    xRegistro.GetKeyNames(xListaChaves);
    xRegistro.CloseKey;

    //Percorre a lista de chaves para acessar o
    //Valor do atributo 'DisplayName'
    for xContador := 0 to Pred(xListaChaves.Count) do
    begin
      xRegistro.RootKey := HKEY_LOCAL_MACHINE;
      xRegistro.OpenKey(CHAVE_REGISTRO + xListaChaves[xContador], False);

      if xRegistro.ReadString ('DisplayName') <> EmptyStr then
        //adiciona o nome do programa na variavel ListaPrograma
        xListaProgramas.Add(xRegistro.ReadString('DisplayName'));

      xRegistro.CloseKey;
    end;

    //Grava a lista de processos no arquivo 'Programas.txt'
    xListaProgramas.SaveToFile(GetCurrentDir + '\Programas.txt');
  finally
    //Libera os objetos da memoria
    FreeAndNil(xListaProgramas);
    FreeAndNil(xListaChaves);
    FreeAndNil(xRegistro);
  end;
end;

procedure TReceiver.ExtrairVariaveisAmbiente;
var
  xVariavel: PChar;
  xListaVariaveis: TStringList;
begin
  //Metodo responsavel por extrair a lista das variaveis de ambiente

  xListaVariaveis := TStringList.Create;
  try
    //obtem a lista das variaveis de ambiente
    xVariavel := GetEnvironmentStrings;
    while xVariavel^ <> #0 do
    begin
      xListaVariaveis.Add(StrPas(xVariavel));
      xListaVariaveis.Add(EmptyStr);
      Inc(xVariavel, lStrLen(xVariavel) + 1);
    end;
    FreeEnvironmentStrings(xVariavel);

    //grava a lista de variaveis no arquivo 'Variaveis.txt'
    xListaVariaveis.SaveToFile(GetCurrentDir + '\Variaveis.txt');
  finally
    //libera o objeto da memoria
    FreeAndNil(xListaVariaveis);
  end;
end;

end.

unit UConcreteCommand;

interface

uses
  uCommand, UReceiver;

type

  {Concrete Command}

  TProcessos = class(TInterfacedObject, ICommand)
    private
      //variavel para armazenar a referencia do receiver
      FReceiver: TReceiver;
    public
     constructor Create(aReceiver: TReceiver);

     //assinatura de interface - metodo de execucao da operacao
     procedure Execute;
  end;

  TProgramas = class(TInterfacedObject, ICommand)
    private
    //Variavel paa armazenar a referencia do  receiver
      FReceiver: TReceiver;
    public
      constructor Create(aReceiver: TReceiver);

    //Assinatura da interface - metodo da execucacao da operacao
    procedure execute;
  end;

  TVariaveisAmbiente = class(TInterfacedObject, ICommand)
    private
      //variavel para armazenar a referencia do receiver
      FReceiver: TReceiver;
    public
      constructor Create(aReceiver: TReceiver);

      //Assinatura da interface - metodo da execucacao da operacao
      procedure execute;
  end;
implementation

{ TProcessos }

constructor TProcessos.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProcessos.Execute;
begin
  FReceiver.ExtrairProcessos;
end;

{ TProgramas }

constructor TProgramas.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProgramas.execute;
begin
  FReceiver.ExtrairProgramas;
end;

{ TVariaveisAmbiente }

constructor TVariaveisAmbiente.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TVariaveisAmbiente.execute;
begin
   FReceiver.ExtrairVariaveisAmbiente;
end;

end.

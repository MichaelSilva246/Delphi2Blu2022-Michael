unit USubject;

interface

uses
  UObserver;

type
  ISubject = interface
    //Metodo para adicionar Observers a lista
    procedure AdicionarObserver(aObserver: IObserver);

    //Metodos para remover observers da lista
    procedure RemoverObserver(aObserver: IObserver);

    //metodo responsavel por notificar os observers registrados
    procedure Notificar;
  end;
implementation

end.

program Observer;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  USubject in 'pattern\USubject.pas',
  UObserver in 'pattern\UObserver.pas',
  UNotificacao in 'pattern\UNotificacao.pas',
  UConcreteObserver_Log in 'pattern\UConcreteObserver_Log.pas' {fraLog: TFrame},
  UConcreteObserver_Saldo in 'pattern\UConcreteObserver_Saldo.pas' {fraSaldo: TFrame},
  UConcreteObserver_Historico in 'pattern\UConcreteObserver_Historico.pas' {fraHistorico: TFrame},
  UConcreteSubject in 'pattern\UConcreteSubject.pas' {fraCadastro: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

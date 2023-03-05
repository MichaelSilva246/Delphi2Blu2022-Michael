program Decorator;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UInterfaceComponent in 'Patterns\Decorator\UInterfaceComponent.pas',
  UConcreteComponent in 'Patterns\Decorator\UConcreteComponent.pas',
  UDecorator in 'Patterns\Decorator\UDecorator.pas',
  UConcreteDecorator_DataHora in 'Patterns\Decorator\UConcreteDecorator_DataHora.pas',
  UConcreteDecorator_Usuario in 'Patterns\Decorator\UConcreteDecorator_Usuario.pas',
  UConcreteDecorator_WindoWS in 'Patterns\Decorator\UConcreteDecorator_WindoWS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

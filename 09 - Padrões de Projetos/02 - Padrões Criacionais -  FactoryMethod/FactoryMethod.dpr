program FactoryMethod;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UTipoPrazo in 'pattern\factoryMethod\UTipoPrazo.pas',
  UPrazoAnual in 'pattern\factoryMethod\UPrazoAnual.pas',
  UPrazoMensal in 'pattern\factoryMethod\UPrazoMensal.pas',
  UFabricaPrazos in 'pattern\factoryMethod\UFabricaPrazos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

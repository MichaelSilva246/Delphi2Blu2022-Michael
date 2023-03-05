program Principal;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UInterfaces in 'pattern\factorys\UInterfaces.pas',
  UDell in 'pattern\factorys\UDell.pas',
  UApple in 'pattern\factorys\UApple.pas',
  UIMac in 'pattern\entities\UIMac.pas',
  UInspiron in 'pattern\entities\UInspiron.pas',
  UMacBook in 'pattern\entities\UMacBook.pas',
  UVostro in 'pattern\entities\UVostro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

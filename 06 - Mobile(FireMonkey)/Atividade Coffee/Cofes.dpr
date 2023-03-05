program Cofes;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmSecundaria in 'uFrmSecundaria.pas' {frmSecundaria};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSecundaria, frmSecundaria);
  Application.Run;
end.

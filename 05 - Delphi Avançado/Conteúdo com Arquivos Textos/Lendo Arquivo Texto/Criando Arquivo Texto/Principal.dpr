program Principal;

uses
  Vcl.Forms,
  uFrmPrincipla in 'uFrmPrincipla.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

program Entre100e200;

uses
  Vcl.Forms,
  uFrmEntre100e200 in 'uFrmEntre100e200.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

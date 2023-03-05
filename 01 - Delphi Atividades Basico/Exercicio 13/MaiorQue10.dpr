program MaiorQue10;

uses
  Vcl.Forms,
  uFrmMaiorQue10 in 'uFrmMaiorQue10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

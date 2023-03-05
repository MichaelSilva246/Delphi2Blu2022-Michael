unit UfrmLoginAuthentication;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TfrmLoginAuthentication = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectVoltar: TRectangle;
    Label3: TLabel;
    edtLogin: TEdit;
    rectLogin: TRectangle;
    rectSenha: TRectangle;
    edtPassword: TEdit;
    rectLogar: TRectangle;
    Label2: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rectLogarClick(Sender: TObject);
  private
    procedure VoltarTela;
    procedure AbrirHome;
    procedure Logar;
  public
    { Public declarations }
  end;

var
  frmLoginAuthentication: TfrmLoginAuthentication;

implementation

{$R *.fmx}

uses
  uFrmHome,
  UfrmLogin,
  UService.Intf, UService.Login, UEntity.Logins;

procedure TfrmLoginAuthentication.AbrirHome;
begin
  ShowMessage('Usuário Autenticado');
  if not Assigned(frmHome) then
    frmHome := TfrmHome.Create(Application);

  frmHome.Show;
  Application.MainForm := frmHome;
  Self.Close;
end;

procedure TfrmLoginAuthentication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := TCloseAction.caFree;
    frmLoginAuthentication := nil;
end;

procedure TfrmLoginAuthentication.Label3Click(Sender: TObject);
begin
  Self.VoltarTela;
end;

procedure TfrmLoginAuthentication.Logar;
var
  xServiceLogin: IService;
begin
  if Trim(edtLogin.Text) = EmptyStr then
    raise Exception.Create('Informe o Login.');

  if Trim(edtPassword.text) = EmptyStr then
    raise Exception.Create('Informe a Senha.');

  xServiceLogin := TServiceLogin.Create(TLogin.Create(Trim(edtLogin.Text),
                                                      Trim(edtPassword.Text)));

  try
    TServiceLogin(xServiceLogin).Autenticar;
    Self.AbrirHome;
  except on E: Exception do
    raise Exception.Create('Login: ' + E.Message);
  end;
end;

procedure TfrmLoginAuthentication.rectLogarClick(Sender: TObject);
begin
  Self.Logar;
end;

procedure TfrmLoginAuthentication.VoltarTela;
begin
  if not Assigned(frmLogin) then
    frmLogin := TfrmLogin.Create(Application);


  frmlogin.Show;
  Application.MainForm := frmLogin;
  Self.Close;
end;

end.

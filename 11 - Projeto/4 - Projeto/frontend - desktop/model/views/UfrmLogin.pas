unit UfrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TfrmLogin = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectLogin: TRectangle;
    label1: TLabel;
    rectRegistrar: TRectangle;
    Label2: TLabel;
    rectSair: TRectangle;
    Label3: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
    procedure rectLoginClick(Sender: TObject);
  private
    procedure AbrirLoginAuthentication;
    procedure AbrirLoginRegistry;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses UfrmLoginRegistry, UfrmLoginAuthentication;

procedure TfrmLogin.AbrirLoginAuthentication;
begin
  if not Assigned(frmLoginAuthentication) then
    frmLoginAuthentication := TfrmLoginAuthentication.Create(Application);

  frmLoginAuthentication.Show;
  Application.MainForm := frmLoginAuthentication;
  Self.Close;
end;

procedure TfrmLogin.AbrirLoginRegistry;
begin
  if not Assigned(frmLoginRegistry) then
    frmLoginRegistry := TfrmLoginRegistry.Create(Application);

  frmLoginRegistry.Show;
  Application.MainForm := frmLoginRegistry;
  Self.Close;
end;

procedure TfrmLogin.Label3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmLogin.rectLoginClick(Sender: TObject);
begin
  Self.AbrirLoginAuthentication;
end;

procedure TfrmLogin.rectRegistrarClick(Sender: TObject);
begin
  Self.AbrirLoginRegistry;
end;

end.

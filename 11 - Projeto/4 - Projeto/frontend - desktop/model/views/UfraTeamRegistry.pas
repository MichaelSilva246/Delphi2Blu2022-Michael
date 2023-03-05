unit UfraTeamRegistry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit;

type
  TfraTeamRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectNome: TRectangle;
    edtNome: TEdit;
    rectSalvar: TRectangle;
    Label1: TLabel;
    rectVoltar: TRectangle;
    Label2: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    procedure VoltarTela;
    procedure Registrar;
  public
    { Public declarations }
  end;

  var
    fraTeamRegistry: TfraTeamRegistry;
implementation



{$R *.fmx}

uses UEntity.Teams, UfraTeam, UService.Intf, UService.Team;

{ TfraTeamRegistry }

procedure TfraTeamRegistry.Label1Click(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TfraTeamRegistry.Label2Click(Sender: TObject);
begin
  Self.VoltarTela;
end;

procedure TfraTeamRegistry.Registrar;
var
  xServiceTeam: IService;
begin
  if Trim(edtNome.text) = EmptyStr then
    raise Exception.Create('Informe o Nome do Time.');

  xServiceTeam := TServiceTeam.Create(TTeam.Create(Trim(edtNome.text)));

  xServiceTeam.Registrar;
  Self.VoltarTela;
end;

procedure TfraTeamRegistry.VoltarTela;
begin
  if not Assigned(FraTeam) then
    FraTeam := TFraTeam.Create(Application);

  FraTeam.Align := TAlignLayout.Center;

  Self.Parent.AddObject(FraTeam);
  FreeAndNil(FraTeamRegistry);
end;

end.

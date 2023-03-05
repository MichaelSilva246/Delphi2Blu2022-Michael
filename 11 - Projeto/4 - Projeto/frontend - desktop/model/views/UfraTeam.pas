unit UfraTeam;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  UEntity.Teams;

type
  TfraTeam = class(TFrame)
    rectPrincipal: TRectangle;
    rectToolbar: TRectangle;
    rectExcluir: TRectangle;
    Label1: TLabel;
    rectNovo: TRectangle;
    Label2: TLabel;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstTimes: TListView;
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    procedure AbrirTeamRegistry;
    procedure CarregarRegistros;
    procedure ExcluirRegistro;
    procedure PreencherTeams(aTeam: TTeam);
  public
    constructor Create(aOwner: TComponent); override;
  end;

var
  fraTeam: TFraTeam;

implementation

{$R *.fmx}

uses UfraTeamRegistry, UService.Intf, UService.Team;

{ TfraTeam }

procedure TfraTeam.AbrirTeamRegistry;
begin
  if not Assigned(fraTeamRegistry) then
    fraTeamRegistry := TfraTeamRegistry.Create(Application);

  fraTeamRegistry.Align := TAlignLayout.Center;

  Self.Parent.AddObject(FraTeamRegistry);
  FreeAndnil(FraTeam);
end;

procedure TfraTeam.CarregarRegistros;
var
  xServiceTeam: IService;
  xTeam: TTeam;
begin
  lstTimes.items.clear;

  xServiceTeam := TServiceTeam.Create;
  xServiceTeam.Listar;

  for xTeam in TServiceTeam(xServiceTeam).Teams do
    Self.preencherTeams(xTeam);
end;

constructor TfraTeam.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarRegistros;
end;

procedure TfraTeam.ExcluirRegistro;
var
  xServiceTeam: IService;
  xTeam: TTeam;
  xItem: TListViewItem;
begin
  if lstTimes.itemIndex = -1 then
    Exit;

  xItem := lstTimes.Items[lstTimes.ItemIndex];
  xTeam := TTeam.Create(xItem.tag);

  xServiceTeam := TServiceTeam.Create(xTeam);

  try
    xServiceTeam.Excluir;
    ShowMessage('Registro excluido!');
  finally
    Self.carregarRegistros;
  end;
end;

procedure TfraTeam.Label1Click(Sender: TObject);
begin
  Self.ExcluirRegistro;
end;

procedure TfraTeam.Label2Click(Sender: TObject);
begin
  Self.AbrirTeamRegistry;
end;

procedure TfraTeam.PreencherTeams(aTeam: TTeam);
var
  xItem: TListViewItem;
begin
  xItem := lstTimes.Items.add;
  xItem.tag := aTeam.id;

  TListItemText(xItem.Objects.FindDrawable('txtTime')).Text := aTeam.Name;
end;

end.

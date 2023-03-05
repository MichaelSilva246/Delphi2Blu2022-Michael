unit UfraMatch.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox, UService.Intf;

type
  TfraMatchRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectSalvar: TRectangle;
    Label1: TLabel;
    rectTimeA: TRectangle;
    rectTimeB: TRectangle;
    lblX: TLabel;
    rectData: TRectangle;
    edtData: TEdit;
    rectHora: TRectangle;
    edtHora: TEdit;
    cmbTimeA: TComboBox;
    cmbTimeB: TComboBox;
    rectVoltar: TRectangle;
    Label2: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    FServiceTeam: IService;

    procedure VoltarTela;
    procedure CarregarTeams;
    procedure Registrar;
  public
    constructor Create(aOwner: TComponent); override;
  end;

  var
    fraMatchRegistry: TFraMatchRegistry;
implementation

{$R *.fmx}

uses UEntity.Matchs, UEntity.Teams, UfraMatch, UService.Match, UService.Team;

{ TfraMatchRegistry }

procedure TfraMatchRegistry.CarregarTeams;
var
  xTeam: TTeam;
begin
  cmbTimeA.Items.Clear;
  cmbTimeB.Items.Clear;

  if not Assigned(FServiceTeam) then
    FServiceTeam := TServiceTeam.Create;

  FServiceTeam.Listar;
  for xTeam in TServiceTeam(FServiceTeam).Teams do
  begin
    cmbTimeA.Items.AddObject(xTeam.Name, xTeam);
    cmbTimeB.Items.AddObject(xTeam.Name, xTeam);
  end;

end;

constructor TfraMatchRegistry.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarTeams;
end;

procedure TfraMatchRegistry.Label1Click(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TfraMatchRegistry.Label2Click(Sender: TObject);
begin
  Self.VoltarTela;
end;

procedure TfraMatchRegistry.Registrar;
var
  xServiceMatch: IService;
  xData: TDate;
  xHora: TTime;
  xTimeAux: TTeam;
  xTimeA, xTimeB: TTeam;
begin
  if Trim(edtHora.text) = EmptyStr then
    raise Exception.Create('Informe a Hora da Partida.');

  if Trim(edtData.text) = EmptyStr then
    raise Exception.Create('Informe a Data da Partida.');

  if cmbTimeA.ItemIndex = -1 then
    raise Exception.Create('Informe o Time A da Partida.');

  if cmbTimeB.ItemIndex = -1 then
    raise Exception.Create('Informe o Time B da Partida.');

  if cmbTimeA.ItemIndex = cmbTimeB.ItemIndex then
    raise Exception.Create('Informe Times Diferentes para a Partida.');

  xHora := StrToTime(Trim(edtHora.Text));
  xData := StrToDate(Trim(edtData.text));

  xTimeAux := TTeam(cmbTimeA.Items.Objects[cmbTimeA.ItemIndex]);
  xTimeA := xTimeAux.Clone;

  xTimeAux := TTeam(cmbTimeB.Items.Objects[cmbTimeB.ItemIndex]);
  xTimeB := xTimeAux.Clone;

  xServiceMatch := TServiceMatch.Create(TMatch.Create(xData, xHora, xTimeA, xTimeB));

  xServiceMatch.Registrar;
  Self.VoltarTela;
end;

procedure TfraMatchRegistry.VoltarTela;
begin
  if not Assigned(FraMatch) then
    fraMatch := TFraMatch.Create(Application);

  FraMatch.Align := TAlignLayout.Center;

  Self.parent.AddObject(FraMatch);
  FreeAndNil(FraMatchRegistry);
end;

end.

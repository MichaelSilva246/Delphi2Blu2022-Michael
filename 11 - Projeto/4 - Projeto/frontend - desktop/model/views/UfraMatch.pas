unit UfraMatch;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Controls.Presentation,
  UEntity.Matchs;

type
  TfraMatch = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    rectExcluir: TRectangle;
    Label1: TLabel;
    rectNovo: TRectangle;
    Label2: TLabel;
    rectToolbar: TRectangle;
    Layout1: TLayout;
    lstPartidas: TListView;
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    procedure CarregarRegistros;
    procedure AbrirMatchRegistry;
    procedure PrepararListView(aMatch: TMatch);
    procedure ExcluirRegistro;
  public
    constructor Create(aOwner: TComponent); override;
  end;

  var
    fraMatch: TFraMatch;
implementation

{$R *.fmx}

uses UfraMatch.Registry, UService.Intf, UService.Match;

{ TfraMatch }

procedure TfraMatch.AbrirMatchRegistry;
begin
  if not Assigned(fraMatchRegistry) then
    fraMatchRegistry := TFraMatchRegistry.Create(Application);

  FraMatchRegistry.Align := TAlignLayout.Center;

  Self.parent.AddObject(FraMatchRegistry);
  FreeAndNil(fraMatch);
end;

procedure TfraMatch.CarregarRegistros;
var
  xServiceMatch: IService;
  xMatch: TMatch;
begin
  lstPartidas.Items.Clear;

  xServiceMatch := TServiceMatch.Create;
  xServiceMatch.Listar;
  for xMatch in TServiceMatch(xServiceMatch).Matchs  do
    Self.PrepararListView(xMatch);
end;

constructor TfraMatch.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarRegistros;
end;

procedure TfraMatch.ExcluirRegistro;
var
  xServiceMatch: IService;
  xMatch: TMatch;
  xItem: TListViewItem;
begin
  if lstPartidas.ItemIndex = -1 then
    Exit;

  xItem := lstPartidas.Items[lstPartidas.ItemIndex];
  xMatch := TMatch.Create(xItem.Tag);

  xServiceMatch := TServiceMatch.Create(xMatch);
  try
    xServiceMatch.Excluir;
    ShowMessage('Registro excluido.');
  finally
    Self.CarregarRegistros;
  end;
end;

procedure TfraMatch.Label1Click(Sender: TObject);
begin
  Self.ExcluirRegistro;
end;

procedure TfraMatch.Label2Click(Sender: TObject);
begin
  Self.AbrirMatchRegistry
end;

procedure TfraMatch.PrepararListView(aMatch: TMatch);
var
  xItem: TListViewItem;
begin
  xItem := lstPartidas.Items.add;
  xItem.Tag := aMatch.id;

  TListItemText(xItem.Objects.FindDrawable('txtHora')).Text := TimeToStr(aMatch.Hour);
  TListItemText(xItem.Objects.FindDrawable('txtData')).Text := DateToStr(aMatch.Date);
  TListItemText(xItem.Objects.FindDrawable('txtTimeA')).Text := aMatch.TeamA.Name;
  TListItemText(xItem.Objects.FindDrawable('txtTimeB')).Text := aMatch.TeamB.Name;
  TListItemText(xItem.Objects.FindDrawable('txtResultadoTimeA')).Text := aMatch.ResultTeamA.ToString;
  TListItemText(xItem.Objects.FindDrawable('txtResultadoTimeB')).Text := aMatch.ResultTeamB.ToString;
end;

end.

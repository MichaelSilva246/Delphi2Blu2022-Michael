unit UfraBet.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, UEntity.Matchs;

type
  TfraBetRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstBotoes: TLayout;
    rectSalvar: TRectangle;
    Label1: TLabel;
    rectTimeA: TRectangle;
    rectTimeB: TRectangle;
    edtResultTeamA: TEdit;
    edtResultTeamB: TEdit;
    lblX: TLabel;
    rectVoltar: TRectangle;
    Label2: TLabel;
    lstPartidas: TListView;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    procedure VoltarTela;
    procedure CarregarMatchs;
    procedure Registrar;
    procedure PreencherMatchs(const aMatch: TMatch);
  public
    constructor Create(aOwner: TComponent); override;
  end;

  var
    fraBetRegistry: TFraBetRegistry;

implementation

{$R *.fmx}

uses UEntity.Bets, UfraBet, UService.Bet, UService.Match, UService.Team,
  UService.User.Authenticated, UService.Intf;

{ TfraBetRegistry }

procedure TfraBetRegistry.CarregarMatchs;
var
  xServiceMatch: IService;
  xMatch: TMatch;
begin
  lstPartidas.items.Clear;

  xServiceMatch := TServiceMatch.Create;
  xServiceMatch.Listar;
  for xMatch in TServiceMatch(xServiceMatch).Matchs do
  Self.PreencherMatchs(xMatch);
end;

constructor TfraBetRegistry.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  self.CarregarMatchs;
end;

procedure TfraBetRegistry.Label1Click(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TfraBetRegistry.Label2Click(Sender: TObject);
begin
  self.VoltarTela;
end;

procedure TfraBetRegistry.PreencherMatchs(const aMatch: TMatch);
var
  xItem: TListViewItem;
const
  PARTIDA = '%s x %s - %s às %s';
begin
  xItem := lstPartidas.Items.Add;
  xItem.Tag := aMatch.id;

  TListItemText(xItem.Objects.FindDrawable('txtPartida')).text := Format(PARTIDA, [amatch.TeamA.Name,
                                                                                   aMatch.TeamB.Name,
                                                                                   DateToStr(aMatch.Date),
                                                                                   TimeToStr(aMatch.Hour)]);
end;

procedure TfraBetRegistry.Registrar;
var
  xServiceBet: IService;
  xBet: TBet;
  xMatch: TMatch;
  xUserAuthenticated: TUserAuthenticated;
begin
  if lstPartidas.ItemIndex < 0 then
    raise Exception.Create('Selecione uma Partida.');

  if Trim(edtResultTeamA.text) = EmptyStr then
    raise Exception.Create('Informe o Placar do Time A');

  if Trim(edtResultTeamb.text) = EmptyStr then
    raise Exception.Create('Informe o Placar do Time B');

  xMatch := TMatch.Create(lstPartidas.items[lstPartidas.ItemIndex].tag);
  xUserAuthenticated := TUserAuthenticated.GetInstance;

  xBet := TBet.Create(
    xMatch,
    StrToIntDef(Trim(edtResultTeamA.Text), 0),
    StrToIntDef(Trim(edtResultTeamB.Text), 0),
    xUserAuthenticated.User);

  xServiceBet := TServiceBet.Create(xBet);
  xServiceBet.Registrar;
  Self.VoltarTela;
end;

procedure TfraBetRegistry.VoltarTela;
begin
  if not Assigned(FraBet) then
    FraBet := TFraBet.Create(Application);

  FraBet.Align := TAlignLayout.Center;

  Self.parent.AddObject(FraBet);
  FreeAndNil(fraBetRegistry);
end;

end.

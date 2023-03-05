unit UfraBet;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  UEntity.Bets;

type
  TfraBet = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytPartidas: TLayout;
    rectToolbar: TRectangle;
    rectExcluir: TRectangle;
    Label1: TLabel;
    rectNovo: TRectangle;
    Label2: TLabel;
    lstPalpites: TListView;
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    procedure CarregarRegistros;
    procedure AbrirBetRegistry;
    procedure PrepararListView(aBet: TBet);
    procedure ExcluirRegistro;
  public
    constructor Create(aOwner: TComponent); override;
  end;

  var
    fraBet: TFraBet;

implementation

{$R *.fmx}

uses UEntity.Matchs, UfraBet.Registry, UService.Intf,
  UService.User.Authenticated, UService.Bet;

{ TfraBet }

procedure TfraBet.AbrirBetRegistry;
begin
  if not Assigned(fraBetRegistry) then
    fraBetRegistry := TFraBetRegistry.Create(Application);

  FraBetRegistry.Align := TAlignLayout.Center;
  Self.parent.AddObject(FraBetRegistry);
  freeandNil(Frabet);
end;

procedure TfraBet.CarregarRegistros;
var
  xServiceBet: IService;
  xBet: TBet;
begin
  lstPalpites.items.Clear;

  xServiceBet := TServiceBet.Create;
  xServiceBet.Listar;
  for xBet in TServiceBet(xServiceBet).Bets do
  Self.PrepararListView(xBet)
end;

constructor TfraBet.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarRegistros;
end;

procedure TfraBet.ExcluirRegistro;
var
  xServiceBet: IService;
  xBet: TBet;
  xItem: TListViewItem;
  xUserAuthenticated: TUserAuthenticated;
begin
  if lstPalpites.ItemIndex = -1 then
    Exit;

  xItem := lstPalpites.items[lstPalpites.ItemIndex];

  xUserAuthenticated := TUserAuthenticated.GetInstance;
  if xItem.Tagstring <> xUserAuthenticated.User.Id.ToString then
    raise Exception.Create('Não é possivel excluir o palpite de outro usuário');

  xBet := TBet.Create(xItem.tag);

  xServiceBet := TServiceBet.Create(xBet);
  try
    xServiceBet.Excluir;
    ShowMessage('Registro Excluido.');
  finally
    Self.CarregarRegistros;
  end;
end;

procedure TfraBet.Label1Click(Sender: TObject);
begin
  Self.ExcluirRegistro;
end;

procedure TfraBet.Label2Click(Sender: TObject);
begin
  Self.AbrirBetRegistry;
end;

procedure TfraBet.PrepararListView(aBet: TBet);
var
  xItem: TListViewItem;
  xMatch: TMatch;
begin
  xItem := lstPalpites.items.Add;
  xItem.Tag := aBet.Id;
  xItem.TagString := aBet.User.Id.ToString;
  xMatch := aBet.Match;

  TListItemText(xItem.Objects.FindDrawable('txtUsuario')).text := aBet.User.Login;
  TListItemText(xItem.Objects.FindDrawable('txtHora')).text := TimeToStr(xMatch.Hour);
  TListItemText(xItem.Objects.FindDrawable('txtData')).text := DateToStr(xMatch.Date);
  TListItemText(xItem.Objects.FindDrawable('txtTimeA')).text := xMatch.TeamA.Name;
  TListItemText(xItem.Objects.FindDrawable('txtTimeB')).text := xMatch.TeamB.Name;
  TListItemText(xItem.Objects.FindDrawable('txtResultadoTimeA')).text := aBet.ResultTeamA.ToString;
  TListItemText(xItem.Objects.FindDrawable('txtResultadoTimeB')).text := aBet.ResultTeamB.ToString;
end;

end.

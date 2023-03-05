unit UfrmHome;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.MultiView, FMX.ListBox,
  FMX.StdCtrls, UUtils.Enums;

type
  TfrmHome = class(TForm)
    rectPrincipal: TRectangle;
    lytContainer: TLayout;
    imgDevsHome: TImage;
    MultiView1: TMultiView;
    Rectangle1: TRectangle;
    lytLogo: TLayout;
    Image1: TImage;
    lstMenu: TListBox;
    btnMenu: TSpeedButton;
    procedure lstMenuItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    procedure AbrirTeam;
    procedure AbrirMatch;
    procedure AbrirBet;

    procedure RemoverTelaAnterior;
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.fmx}

uses UfraBet, UfraBet.Registry, UfraMatch, UfraMatch.Registry, UfraTeam,
  UfraTeamRegistry;

procedure TfrmHome.AbrirBet;
begin
  if not Assigned(FraBet) then
    FraBet := TFraBet.Create(Application);

  FraBet.Align := TAlignLayout.Center;
  lytContainer.AddObject(fraBet);
end;

procedure TfrmHome.AbrirMatch;
begin
  if not Assigned(FraMatch) then
    FraMatch := TFraMatch.Create(Application);

  FraMatch.Align := TAlignLayout.Center;
  lytContainer.AddObject(FraMatch);
end;

procedure TfrmHome.AbrirTeam;
begin
 if not Assigned(FraTeam) then
    FraTeam := TFraTeam.Create(Application);

  FraTeam.Align := TAlignLayout.Center;
  lytContainer.AddObject(FraTeam);
end;

procedure TfrmHome.lstMenuItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  Self.RemoverTelaAnterior;

  case TEnumMenu(item.Index) of
    mnuTimes:
      Self.AbrirTeam;
    mnuPartidas:
      Self.AbrirMatch;
    mnuPalpites:
      Self.AbrirBet;
    mnuSair:
      Self.Close;
  end;

  multiView1.HideMaster;
end;

procedure TfrmHome.RemoverTelaAnterior;
var
  I: Integer;
begin
  for I := Pred(lytContainer.ControlsCount) downto 0 do
    if lytContainer.Controls[I].Name <> 'imgDevsHome' then
      lytContainer.RemoveObject(I);
end;

end.

unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    imgCartaz: TImage;
    Image1: TImage;
    imgLogo: TImage;
    lytGenero: TLayout;
    Image2: TImage;
    lblFiltro: TLabel;
    Layout1: TLayout;
    image: TImage;
    Image4: TImage;
    Label1: TLabel;
    Image5: TImage;
    Layout2: TLayout;
    ImageMais: TImage;
    Label2: TLabel;
    Layout3: TLayout;
    Image6: TImage;
    Label3: TLabel;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
    lytFechar: TLayout;
    Image7: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
    {$IFDEF MSWINDOWS}
    procedure MenuClick(Sender: TObject);
    {$ELSE}
    procedure MenuTap(Sender: TObject; const Point: TPointF);
    {$ENDIF}
    procedure FormCreate(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure lytGeneroClick(Sender: TObject);
  private
    procedure LoadMenu;
    procedure OpenMenu(ind: Boolean);
    procedure SetupMenu(Item: TListBoxItem; texto: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.FloatAnimation1Finish(Sender: TObject);
begin
  if lytMenu.tag = 0 then
    lytMenu.Visible := False;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  imgCartaz.Position.X := 0;
  imgCartaz.Position.Y := 0;
  imgCartaz.Width := 676;
  imgCartaz.Height := 450;

  Self.LoadMenu;
  Self.OpenMenu(False);
end;

procedure TfrmPrincipal.Image7Click(Sender: TObject);
begin
  Self.OpenMenu(False);
end;

procedure TfrmPrincipal.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os gêneros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Disponível para download');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Ação');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolescente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asiático');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiro');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Comédia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esporte');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mistérios');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novela');
end;

procedure TfrmPrincipal.lytGeneroClick(Sender: TObject);
begin
  Self.OpenMenu(True);
end;

{$IFDEF MSWINDOWS}
procedure TfrmPrincipal.MenuClick(Sender: TObject);
begin
  lblFiltro.Text := TListBoxItem(Sender).Text;
  Self.OpenMenu(False);
end;
{$ELSE}
procedure TfrmPrincipal.MenuTap(Sender: TObject; const Point: TPointF);
begin
  lblFiltro.Text := TListBoxItem(Sender).Text;
  Self.OpenMenu(False);
end;
{$ENDIF}

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
begin
  //Esconde o item selecionado...
  ListBox1.ItemIndex := -1;

  //Volta a listagem para o inicio
  ListBox1.ScrollToItem(ListBox1.ItemByIndex(0));

  if ind then
  begin
    lytMenu.Visible := True;
    lytMenu.Tag := 1;
    lytGenero.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := False;
  end
  else
  begin
    lytMenu.Tag := 0;
    lytGenero.AnimateFloat('Opacity', 1, 0.4);
    FloatAnimation1.Inverse := True;
  end;

  FloatAnimation1.Start;
end;

procedure TfrmPrincipal.SetupMenu(Item: TListBoxItem; texto: String);
begin
  Item.Text := Texto;
  Item.StyledSettings := Item.StyledSettings - [TStyledSetting.Size, TStyledSetting.FontColor, TStyledSetting.Other];
  Item.TextSettings.HorzAlign := TTextAlign.Center;
  Item.HitTest := True;

  {$IFDEF MSWINDOWS}
  Item.OnClick := Self.MenuClick;
  {$ELSE}
  Item.OnTap := Self.MenuTap;
  {$ENDIF}

  if ListBox1.Items.Count > 0 then
  begin
    Item.FontColor := $FFC3C3C3;
    Item.Font.Size := 20;
    Item.Height := 80;
  end
  else
  begin
    Item.FontColor := $FFFFFFFF;
    Item.Font.Size := 25;
    Item.Height := 110;
  end;

  ListBox1.AddObject(item);
end;

end.

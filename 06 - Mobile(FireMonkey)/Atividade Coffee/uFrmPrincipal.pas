unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Effects;

type
  TfrmPrincipal = class(TForm)
    ToolBar1: TToolBar;
    imgMenu: TImage;
    imgComprar: TImage;
    rect_menu: TRectangle;
    rect_cesto: TRectangle;
    rect_barra_de_pesquisa: TRectangle;
    lblSearch: TLabel;
    rect_pesquisa: TRectangle;
    imgPesquisa: TImage;
    rect_paginas: TRectangle;
    lblCoffee: TLabel;
    lblNonCoffee: TLabel;
    FlowLayout1: TFlowLayout;
    rect_Titulo: TRectangle;
    lblTitulo: TLabel;
    rect_cafe1: TRectangle;
    rect_descricao: TRectangle;
    lblTitulo1: TLabel;
    lblTitulo2: TLabel;
    Line1: TLine;
    rect_fundo: TRectangle;
    Circle1: TCircle;
    lblMais: TLabel;
    rect_cafe2: TRectangle;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Circle2: TCircle;
    Label3: TLabel;
    rect_cafe3: TRectangle;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Label5: TLabel;
    Circle3: TCircle;
    Label6: TLabel;
    rect_cafe4: TRectangle;
    Rectangle7: TRectangle;
    Label7: TLabel;
    Label8: TLabel;
    Circle4: TCircle;
    Label9: TLabel;
    rect_cafe5: TRectangle;
    Rectangle9: TRectangle;
    Label10: TLabel;
    Label11: TLabel;
    Circle5: TCircle;
    Label12: TLabel;
    rect_cafe6: TRectangle;
    Rectangle11: TRectangle;
    Label13: TLabel;
    Label14: TLabel;
    Circle6: TCircle;
    Label15: TLabel;
    rect_rodape: TRectangle;
    Rectangle12: TRectangle;
    lblHome: TLabel;
    Image2: TImage;
    Rectangle13: TRectangle;
    Image3: TImage;
    Image4: TImage;
    Rectangle14: TRectangle;
    Image5: TImage;
    Rectangle15: TRectangle;
    Image6: TImage;
    rect_notificacao: TRectangle;
    Label16: TLabel;
    Rectangle1: TRectangle;
    Line2: TLine;
    ShadowEffect1: TShadowEffect;

    procedure Onrect_Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uFrmSecundaria;

{$R *.fmx}

procedure TfrmPrincipal.Image4Click(Sender: TObject);
begin
  //rect_notificacao.Visible := true;
end;

procedure TfrmPrincipal.Onrect_Click(Sender: TObject);
begin
  frmSecundaria.Show;
  frmSecundaria.rect_img.Fill := (Sender as TRectangle).Fill;
end;

end.

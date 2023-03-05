unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.Effects, UJogoVelha;

type
  TfrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    rect_fundo_tab1: TRectangle;
    lyt_tab1: TLayout;
    img_capa: TImage;
    lyt_jogadores: TLayout;
    rect_banana: TRectangle;
    FlowLayout1: TFlowLayout;
    rect_morango: TRectangle;
    img_banana: TImage;
    img_morango: TImage;
    Layout2: TLayout;
    rect_deu_velha: TRectangle;
    rect_game_over: TRectangle;
    rect_parabens: TRectangle;
    rect_fundo_tab2: TRectangle;
    lyt_tab2: TLayout;
    img_capa_2: TImage;
    Layout3: TLayout;
    FlowLayout2: TFlowLayout;
    rect_1_1: TRectangle;
    img_1_1: TImage;
    ShadowEffect1: TShadowEffect;
    rect_1_2: TRectangle;
    img_1_2: TImage;
    rect_1_3: TRectangle;
    img_1_3: TImage;
    rect_2_1: TRectangle;
    img_2_1: TImage;
    rect_2_2: TRectangle;
    img_2_2: TImage;
    rect_2_3: TRectangle;
    img_2_3: TImage;
    rect_3_1: TRectangle;
    img_3_1: TImage;
    rect_3_2: TRectangle;
    img_3_2: TImage;
    rect_3_3: TRectangle;
    img_3_3: TImage;
    img_computador: TImage;
    img_jogador: TImage;
    rect_fim_jogo: TRectangle;
    rect_progresso: TRectangle;

    procedure OnClickSelecioneJogador(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnClickJogador(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FJogoVelha: TJogoVelha;

    procedure MarcarJogadaComputador(const aCoordenadas: String);
    procedure ReiniciarJogo;
    procedure AnimarFimJogo(const aRetangulo: TRectangle);
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.AnimarFimJogo(const aRetangulo: TRectangle);
begin
  rect_fim_jogo.Visible := true;
  rect_progresso.Width := 20;

  aRetangulo.Opacity := 0;
  aRetangulo.Visible := true;

  TThread.CreateAnonymousThread(procedure
  begin
    TThread.Synchronize(nil, procedure
      begin
        aRetangulo.AnimateFloat('Opacity', 1, 0.3);
      end);
  end).Start;

  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(450);

    while rect_progresso.Width < rect_fim_jogo.Width do
    begin
      TThread.Synchronize(nil, procedure
        begin
          rect_progresso.AnimateFloat('width', rect_progresso.Width + 50, 0.3);
        end);

        Sleep(150);
    end;

    TThread.Synchronize(nil, procedure
    begin
      aRetangulo.Visible := false;
      rect_fim_jogo.Visible := false;

      Self.ReiniciarJogo;
    end);
  end).Start;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FJogoVelha.DisposeOf; //tipo um free and nil
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FJogoVelha := TjogoVelha.Create;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.ActiveTab := TabItem1;
end;

procedure TfrmPrincipal.MarcarJogadaComputador(const aCoordenadas: String);
var
  xLinha: Byte;
  xColuna: Byte;
  xRetangulo: TRectangle;
  xImagem: TImage;
begin
  xLinha := StrToInt(Copy(aCoordenadas, 1, 1));
  xColuna := StrToInt(Copy(aCoordenadas, 3, 1));

  FJogoVelha.RealizarJogada(TJogador.tpCpu, xLinha, xColuna);

  xRetangulo := TRectangle(FindComponent('rect_' + aCoordenadas));

  if Assigned(xRetangulo) then
  begin
    xImagem := Timage(FindComponent('img_' + aCoordenadas));
    xImagem.Bitmap := img_computador.Bitmap;
    xImagem.Visible := True;

    xRetangulo.HitTest := False;
  end;
end;

procedure TfrmPrincipal.OnClickSelecioneJogador(Sender: TObject);
var
  xPosicao: Integer;
  xRetangulo: String;
  xJogador: String;
begin
  TabControl1.ActiveTab := TabItem2;

  xRetangulo := (Sender as TRectangle).Name;
  xPosicao := Pos('_', xRetangulo);
  xJogador := Copy(xRetangulo, xPosicao + 1, Length(xRetangulo));

  if xJogador = 'morango' then
  begin
    img_jogador.Bitmap := img_morango.Bitmap;
    img_computador.Bitmap := img_banana.Bitmap;
  end
  else //banana
  begin
    img_jogador.Bitmap := img_banana.Bitmap;
    img_computador.Bitmap := img_morango.Bitmap;
  end;
end;

procedure TfrmPrincipal.ReiniciarJogo;
var
  I: Integer;
begin
  TabControl1.ActiveTab := TabItem1;

  for I := 0 to Pred(Self.ComponentCount) do
  begin
    if (Self.Components[I] is TRectangle) and (Self.Components[I].Tag > 0) then
      TRectangle(Self.Components[I]).HitTest := True;

    if (Self.Components[i] is TImage) and (Self.Components[i].tag > 0) then
      TImage(Self.Components[i]).Bitmap := nil;
  end;

  FJogoVelha.ReiniciarJogo;
end;

procedure TfrmPrincipal.OnClickJogador(Sender: TObject);
var
  xPosicao: Integer;
  xCoordenadas: String;
  xLinha: Byte;
  xColuna: Byte;
  xRetangulo: TRectangle;
  xImagem: TImage;
begin
  xRetangulo := (Sender as TRectangle);

  xPosicao := Pos('_', xRetangulo.Name);
  xCoordenadas := Copy(xRetangulo.Name, xPosicao + 1, Length(xRetangulo.Name));

  xLinha := StrToInt(Copy(xCoordenadas, 1, 1));
  xColuna := StrToInt(Copy(xCoordenadas, 3, 1));

  FJogoVelha.RealizarJogada(TJogador.TpPlayer1, xLinha, xColuna);

  xImagem := TImage(FindComponent('img_' + xCoordenadas));
  xImagem.Bitmap := img_jogador.Bitmap;
  xImagem.Visible := True;

  xRetangulo.HitTest := False;

  FJogoVelha.VerificarFimDoJogo(TJogador.tpPlayer1);

  if (not FJogoVelha.FimJogo) and (FJogoVelha.Jogadas < 5) then
  begin
    xCoordenadas := FJogoVelha.JogadaComputador;
    Self.MarcarJogadaComputador(xCoordenadas);

    FJogoVelha.VerificarFimDoJogo(TJogador.TpCpu);

    if FJogoVelha.FimJogo then
      Self.AnimarFimJogo(rect_game_over);
  end
  else
  begin
    if (FJogoVelha.Jogadas < 5 ) or (FJogoVelha.FimJogo) then
      Self.AnimarFimJogo(rect_parabens)
    else
      Self.AnimarFimJogo(rect_deu_velha);
  end;
end;

end.

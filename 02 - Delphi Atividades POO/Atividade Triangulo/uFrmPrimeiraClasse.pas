unit uFrmPrimeiraClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrimeiraClasse = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtAX: TEdit;
    edtBX: TEdit;
    edtCX: TEdit;
    edtAY: TEdit;
    edtBY: TEdit;
    edtCY: TEdit;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    lblX: TLabel;
    lblY: TLabel;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnCalcularOOPClick(Sender: TObject);
  private
    procedure Calcular;
    procedure CalcularOOP;
  public
  end;

var
  frmPrimeiraClasse: TfrmPrimeiraClasse;

implementation

uses
  uTriangulo;

{$R *.dfm}

procedure TfrmPrimeiraClasse.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

procedure TfrmPrimeiraClasse.btnCalcularOOPClick(Sender: TObject);
begin
  CalcularOOP;
end;

procedure TfrmPrimeiraClasse.Calcular;
var
  xAx, xBx, xCx, xPx, xPy, xAreax, xAreaY, xAy, xBy, xCy: Double;
begin
  //Triangulo X
  xAx := StrToFloat(edtAX.Text);
  xBx := StrToFloat(edtBX.Text);
  xCx := StrToFloat(edtCX.Text);

  xPx := (xAx + xBx + xCx) / 2;

  xAreax := Sqrt(xPx*(xPx-xAx)*(xPx-xBx)*(xPx-xCx));

  lblX.Caption := 'Triangulo X Área: ' + FormatFloat('0.00',xAreax);

  //Triangulo Y
  xAy := StrToFloat(edtAy.Text);
  xBy := StrToFloat(edtBy.Text);
  xCy := StrToFloat(edtCy.Text);

  xPy := (xAy + xBy + xCy) / 2;

  xAreay := Sqrt(xPy*(xPy-xAy)*(xPy-xBy)*(xPy-xCy));

  lblY.Caption := 'Triangulo Y Área: ' + FormatFloat('0.00', xAreay);

  //Qual triangulo é maior
  if xAreaX > xAreaY then
    lblResultado.Caption := 'A área do triangulo X é maior!'
  else
    lblResultado.Caption := 'A área do triangulo Y é maior!'
end;

procedure TfrmPrimeiraClasse.CalcularOOP;
var
  xTrianguloX: TTriangulo;
  xTrianguloY: TTriangulo;

  xAreaX: Double;
  xAreaY: Double;
begin
  xTrianguloX := TTriangulo.Create;
  xTrianguloY := TTriangulo.Create;

  try
    //Primeiro TRIANGULO
    xTrianguloX.a := StrToFloatDef(edtAX.Text, 0);
    xTrianguloX.b := StrToFloatDef(edtBX.Text, 0);
    xTrianguloX.c := StrToFloatDef(edtCX.Text, 0);

    //xTtianguloX.D := 10; Não e possivel pegar dados somente leitura

    xAreaX := xTrianguloX.Area;

    //Segundo TRIANGULO
    xTrianguloY.a := StrToFloatDef(edtAY.Text, 0);
    xTrianguloY.b := StrToFloatDef(edtBY.Text, 0);
    xTrianguloY.c := StrToFloatDef(edtCY.Text, 0);

    xAreaY := xTrianguloY.Area;
    
    lblX.Caption := 'Triangulo X Área: ' + FormatFloat('0.00', xAreax);
    lblY.Caption := 'Triangulo Y Área: ' + FormatFloat('0.00', xAreaY);

    if (xAreaX > xAreaY) then
      lblResultado.Caption := 'A área do triangulo X é maior'
    else
            lblResultado.Caption := 'A área do triangulo Y é maior'
  finally
    FreeAndNil(xTrianguloX);
    FreeAndNil(xTrianguloY);
  end;
end;

end.

unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCalculadora,
  uCalcularServicoDefault;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNum1: TEdit;
    edtNum2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    lblResultado: TLabel;
    procedure Button1Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xNum1, xNum2, xResultado: Double;
  xServico: TCalculadora;
begin
  xNum1 := StrToFloat(edtNum1.text);
  xNum2 := StrToFloat(edtNum2.text);

  xServico := TCalculadora.Create(xNum1, xNum2, TCalcularServiceDefault.create);

  try
    xResultado := xServico.processCalc(TTypeCalc(Combobox1.ItemIndex));

    lblResultado.Caption := xResultado.ToString;
  finally
    freeandnil(xServico);
  end;

end;

end.

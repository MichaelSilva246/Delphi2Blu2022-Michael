unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cmbAnimais: TComboBox;
    btnSom: TButton;
    procedure btnSomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uAnimais;

{$R *.dfm}

procedure TForm1.btnSomClick(Sender: TObject);
var
  xAnimal: TAnimal;
begin
  xAnimal := nil; //Sem referencia a algum ponteiro na memoria
                  //Assim que inicializa um objeto no delphi

  try
    case TEnumAnimal(cmbAnimais.ItemIndex) of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro:
        xAnimal := TPassaro.Create;
    end;

    ShowMessage(xAnimal.RetornarSom);
    ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' patas.');
  finally
    FreeAndNil(xAnimal);
  end;
end;

end.

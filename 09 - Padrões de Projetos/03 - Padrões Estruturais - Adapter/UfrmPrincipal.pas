unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtCep: TEdit;
    btnConsultarClick: TButton;
    btnConsultarCorreios: TButton;
    lblLogradouro: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    Label4: TLabel;
    procedure btnConsultarClickClick(Sender: TObject);
    procedure btnConsultarCorreiosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UInterfaceViaCep, UTarget, UWebServiceViaCEP, UAdaptee, UAdapter;

{$R *.dfm}

procedure TForm1.btnConsultarClickClick(Sender: TObject);
var
  xWebServiceViaCep: IWebServiceViaCEP;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  //Instancia o objeto da classe de consulta
  xWebServiceViaCep := TWebServiceViaCEP.Create;

  //Instancia o comunicador (Target), injetando o objeto de consulta
  xComunicador := TComunicador.Create(xWebServiceViaCep);

  xRetorno := TStringList.Create;

  try
    //O Target consulta o enderco(utilizando o objeto injetado) e retorna os dados
    xRetorno := xComunicador.ConsultarEndereco(edtCep.text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption := xRetorno.Values['Bairro'];
    lblCidade.Caption := xRetorno.Values['Cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
  end;
end;

procedure TForm1.btnConsultarCorreiosClick(Sender: TObject);
var
  xWebServiceCorreios: TWebServiceCorreios;
  xAdapter: IWebServiceViaCep;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  //Intancia o objeto de consulta dos correios(Adaptee)
  xWebServiceCorreios := TWebServiceCorreios.Create;

  //Instancia o adaptador (Adapter)
  xAdapter := TAdapter.Create(xWebServiceCorreios);

  //Instancia o comunicador (Target), injetando o adaptador
  xComunicador := Tcomunicador.Create(xAdapter);

  xRetorno := TStringList.Create;
  try
    //O Target consulta o endereco (utilizando o objeto injetado) e retorna os dados
    xRetorno := xComunicador.ConsultarEndereco(edtCep.Text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption := xRetorno.Values['Bairro'];
    lblCidade.Caption := xRetorno.Values['Cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
    FreeAndNil(xWebServiceCorreios);
  end;
end;

end.

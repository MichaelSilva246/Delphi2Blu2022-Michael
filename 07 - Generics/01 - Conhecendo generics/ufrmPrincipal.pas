unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TKeyValue<T> = class
    private
      FKey: String;
      FValue: T;

      procedure SetKey(const Value: String);
      procedure SetValue(const Value: T);
    published
      property Key: String read FKey write SetKey;
      property Value: T read FValue write SetValue;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TKeyValue<T> }

procedure TKeyValue<T>.SetKey(const Value: String);
begin
  FKey := Value;
end;

procedure TKeyValue<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xKV: TKeyValue<TForm>;
  xKV2: TKeyValue<TButton>;
begin
  xKV := TKeyValue<TForm>.Create;
  xKV2 := TKeyValue<TButton>.Create;

  try
    xKV.Key := 'Form_1';
    xKV.Value := Self;

    xKV2.Key := 'Btn_1';
    xKV2.Value := Sender as TButton;

    ShowMessage(xKV.Key + ' - ' + xKV.Value.Name);
    ShowMessage(xKV2.Key + ' - ' + xKV2.Value.Name);
  finally
    xKV.Free;
    xKV2.Free;
  end;
end;

end.

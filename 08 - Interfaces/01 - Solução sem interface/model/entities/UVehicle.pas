unit UVehicle;

interface

type
  TVehicle = class
  private
    FModel: String;

    function GetModel: String;
    procedure SetModel(const Value: String);

  public
    constructor Create(const aModel1: String);
    property Model: String read GetModel write SetModel;
  end;

implementation

{ TVehicle }

constructor TVehicle.Create(const aModel1: String);
begin
  FModel := aModel1;
end;

function TVehicle.GetModel: String;
begin
  Result := FModel;
end;

procedure TVehicle.SetModel(const Value: String);
begin
  FModel := Value;
end;

end.

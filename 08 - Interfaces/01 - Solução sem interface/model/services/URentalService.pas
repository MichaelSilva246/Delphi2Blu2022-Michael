unit URentalService;

interface

uses UBrazilTaxService, UCarRental, UInvoice, Math, uTaxService;

type
  TRentalService = class
  private
    FPricePerDay: Double;
    FPricePerHour: Double;

    FTaxService: ITaxService;
  public
    constructor Create(const aPricePerDay, aPricePerHour: Double; aTaxService:ITaxService);
    destructor Destroy; override;

    procedure ProcessInvoice(aCarRental: TCarRental);
  end;

implementation

uses
  System.SysUtils, DateUtils;

{ TRentalService }

constructor TRentalService.Create(const aPricePerDay, aPricePerHour: Double; aTaxService:ITaxService);
begin
  FPricePerDay := aPricePerDay;
  FPricePerHour := aPricePerHour;
  FTaxService := aTaxService;
end;

destructor TRentalService.Destroy;
begin
  //Variaveis/atributos do tipo interface não precisa liberar da memoria, o delphi ja faz isso para a gente!
  //FreeAndNil(FTaxService);
  inherited;
end;

procedure TRentalService.ProcessInvoice(aCarRental: TCarRental);
var
  xHours: Double;
  xBasicPayment: Double;
  xTax: Double;
begin
  xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.Start) / 1000 / 60 / 60;

  if xHours <= 12 then
    xBasicPayment := FPricePerHour * Math.Ceil(xHours)
  else
    xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

  xTax := FTaxService.Tax(xBasicPayment);

  aCarRental.Invoice := TInvoice.Create(xBasicPayment, xTax);

end;

end.

unit uTaxService;

interface

type
  ITaxService = interface
    //CTRL+SHIFT+G
    ['{6CB63387-FC89-4287-9A71-FBA633621176}']

    function Tax(const aAmount: Double): Double;
  end;

implementation

end.

unit IClientesFactory;

interface
type
  ICliInstance = interface
    function RetornaStringLabel: String;
  end;

  IClienteFactory = interface
    ['{338AB58B-8204-4834-BFEB-43A4E3189C3D}']
    function GetInstancia(Value: Integer): ICliInstance;
  end;

implementation

end.

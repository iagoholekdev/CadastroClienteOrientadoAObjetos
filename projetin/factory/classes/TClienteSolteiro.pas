unit TClienteSolteiro;

interface
uses
 IClientesFactory;
type
  TClientesSolteiros = class(TInterfacedObject, ICliInstance)
    private
    public
      function RetornaStringLabel: String;
      class function New: ICliInstance;

  end;
implementation

{ TClientesSolteiros }

class function TClientesSolteiros.New: ICliInstance;
begin
  Result := Self.Create;
end;

function TClientesSolteiros.RetornaStringLabel: String;
begin
  Result := 'Cliente: Solteiro';
end;

end.

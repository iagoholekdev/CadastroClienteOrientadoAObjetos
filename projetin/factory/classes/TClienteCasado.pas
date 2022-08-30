unit TClienteCasado;

interface
uses
  IClientesFactory;
type
  TClientesCasados = class(TInterfacedObject, ICliInstance)
    private
    public
     function RetornaStringLabel: String;
     class function New: ICliInstance;
  end;

implementation

{ TClientesCasados }

{ TClientesCasados }

class function TClientesCasados.New: ICliInstance;
begin
  Result := (Self.Create);
end;

function TClientesCasados.RetornaStringLabel: String;
begin
  Result := 'Cliente: Casado';
end;

end.

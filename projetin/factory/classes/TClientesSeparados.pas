unit TClientesSeparados;

interface
uses
 IClientesFactory;
type
  TClienteSeparado = class(TInterfacedObject, ICliInstance)
   private
   public
    function RetornaStringLabel: String;
    class function New: ICliInstance;
  end;

implementation

{ TClienteSeparado }

class function TClienteSeparado.New: ICliInstance;
begin
  Result := Self.Create;
end;

function TClienteSeparado.RetornaStringLabel: String;
begin
  Result := 'Cliente: Separado';
end;

end.

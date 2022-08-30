unit TClienteFactory;

interface
uses
 IClientesFactory;
type
  TClientesFactory = class(TInterfacedObject, IClienteFactory)
    private
    public
      function GetInstancia(Value: Integer): ICliInstance;

      class function New:  IClienteFactory;
  end;

implementation
uses
  TClienteCasado,
  TClienteSolteiro,
  TClientesSeparados,
  TEnumCliente;


{ TClientesFactory }



{ TClientesFactory }

function TClientesFactory.GetInstancia(Value: Integer): ICliInstance;
begin
  case Value of
    Ord(TEnumCli.tCCasado):   Result := TClientesCasados.New;
    Ord(TEnumCli.tCSolteiro): Result := TClientesSolteiros.New;
    Ord(TEnumCli.TCSeparado): Result := TClienteSeparado.New;
  end;
end;

class function TClientesFactory.New: IClienteFactory;
begin
  Result := Self.Create;
end;

end.

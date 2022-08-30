unit TDTOCliente;

interface
uses
  IDTOCliente;
type
  TDTOClientes = class(TInterfacedObject, IDTOClientes)
    private
      FCPF: String;
      FNome: String;
      FEndereco: String;
      FEstadoCivil: Integer;
      function SetNome(Nome: String): IDTOClientes;
      function SetCPF(CPF: String): IDTOClientes;
      function SetEndereco(Endereco: String): IDTOClientes;
      function SetEstadoCivil(EstadoCivil: Integer): IDTOClientes;

    public
      class function New: IDTOClientes;
      constructor Create;
      Destructor Destroy; Override;
      function GetNome: String;
      function GetCPF: String;
      function GetEndereco: String;
      function GetEstadoCivil: Integer;
  end;

implementation

{ TDTOClientes }

constructor TDTOClientes.Create;
begin

end;

destructor TDTOClientes.Destroy;
begin

  inherited;
end;

function TDTOClientes.GetCPF: String;
begin
  Result := FCPF;
end;

function TDTOClientes.GetEndereco: String;
begin
  Result := FEndereco;
end;

function TDTOClientes.GetEstadoCivil: Integer;
begin
  Result := FEstadoCivil;
end;

function TDTOClientes.GetNome: String;
begin
  Result := FNome;
end;

class function TDTOClientes.New: IDTOClientes;
begin
  Result := (Self.Create);
end;

function TDTOClientes.SetCPF(CPF: String): IDTOClientes;
begin
  Result := Self;
  FCPF := CPF;
end;

function TDTOClientes.SetEndereco(Endereco: String): IDTOClientes;
begin
  Result := Self;
  FEndereco := Endereco;
end;

function TDTOClientes.SetEstadoCivil(EstadoCivil: Integer): IDTOClientes;
begin
  Result := Self;
  FEstadoCivil := EstadoCivil;
end;

function TDTOClientes.SetNome(Nome: String): IDTOClientes;
begin
  Result := Self;
  FNome := Nome;
end;

end.

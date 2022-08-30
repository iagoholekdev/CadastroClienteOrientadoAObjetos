unit IDTOCliente;

interface
type
  IDTOClientes = interface
    ['{96DD628F-D9E4-4A40-A3FD-4A9168BEF02F}']
    function SetNome(Nome: String): IDTOClientes;
    function SetCPF(CPF: String): IDTOClientes;
    function SetEndereco(Endereco: String): IDTOClientes;
    function SetEstadoCivil(EstadoCivil: Integer): IDTOClientes;
    function GetEstadoCivil: Integer;
    function GetNome: String;
    function GetCPF: String;
    function GetEndereco: String;
  end;

implementation

end.

unit IModelCliente;

interface
type
  IModelClientes = interface
    ['{30CC8309-8C3C-47DD-8E87-71C7F9FB6BD5}']
    procedure ValidarNome(Nome: String);
    procedure ValidarCPF(CPF: String);
    procedure ValidarEndereco(Endereco: String);
    procedure Gravar;
  end;

implementation

end.

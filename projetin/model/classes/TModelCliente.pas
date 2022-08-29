unit TModelCliente;

interface
uses
  IModelCliente;
type
  TModelClientes = class(TInterfacedObject, IModelClientes)
    private
      procedure ValidarNome(Nome: String);
      procedure ValidarCPF(CPF: String);
      procedure ValidarEndereco(Endereco: String);
      procedure Gravar;
      procedure ValidarSeEnderecoEstaVazio(Endereco: string);
      procedure ValidarSeTemNomeDigitado(Nome: string);
      procedure ValidarTamanhoDoCpf(CPF: string);
    public
      class function New: IModelClientes;
      constructor Create;
      Destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TModelCliente }

constructor TModelClientes.Create;
begin

end;

destructor TModelClientes.Destroy;
begin

  inherited;
end;

procedure TModelClientes.ValidarTamanhoDoCpf(CPF: string);
begin
  if (Length(CPF) <> 11) then
  begin
    ShowMessage('Digite um CPF válido!');
    Abort;
  end;
end;

procedure TModelClientes.ValidarSeTemNomeDigitado(Nome: string);
begin
  if (Nome = EmptyStr) then
  begin
    ShowMessage('Para continuar com o cadastro por favor digite um nome.');
    Abort;
  end;
end;

procedure TModelClientes.ValidarSeEnderecoEstaVazio(Endereco: string);
begin
  if (Endereco = EmptyStr) then
  begin
    ShowMessage('O endereço está vazio!');
    Abort;
  end;
end;

procedure TModelClientes.Gravar;
begin
 //
end;

class function TModelClientes.New: IModelClientes;
begin
  Result := (Self.Create);
end;

procedure TModelClientes.ValidarCPF(CPF: String);
begin
  Self.ValidarTamanhoDoCpf(CPF);
end;

procedure TModelClientes.ValidarEndereco(Endereco: String);
begin
  Self.ValidarSeEnderecoEstaVazio(Endereco);
end;

procedure TModelClientes.ValidarNome(Nome: String);
begin
  Self.ValidarSeTemNomeDigitado(Nome);
end;

end.

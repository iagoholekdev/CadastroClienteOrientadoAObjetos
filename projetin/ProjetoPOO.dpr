program ProjetoPOO;

uses
  Vcl.Forms,
  frmViewCliente in 'view\frmViewCliente.pas' {Form4},
  IController in 'controller\interface\IController.pas',
  IDTOCliente in 'DTO\interfaces\IDTOCliente.pas',
  TDTOCliente in 'DTO\classes\TDTOCliente.pas',
  TControllerCliente in 'controller\classes\TControllerCliente.pas',
  IModelCliente in 'model\interface\IModelCliente.pas',
  TModelCliente in 'model\classes\TModelCliente.pas',
  IClientesFactory in 'factory\interfaces\IClientesFactory.pas',
  TClienteFactory in 'factory\classes\TClienteFactory.pas',
  TClienteCasado in 'factory\classes\TClienteCasado.pas',
  TClienteSolteiro in 'factory\classes\TClienteSolteiro.pas',
  TClientesSeparados in 'factory\classes\TClientesSeparados.pas',
  TEnumCliente in 'enum\enum cliente\TEnumCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

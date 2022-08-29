program Project1;

uses
  Vcl.Forms,
  frmViewCliente in 'view\frmViewCliente.pas' {Form4},
  IController in 'controller\interface\IController.pas',
  IDTOCliente in 'DTO\interfaces\IDTOCliente.pas',
  TDTOCliente in 'DTO\classes\TDTOCliente.pas',
  TControllerCliente in 'controller\classes\TControllerCliente.pas',
  IModelCliente in 'model\interface\IModelCliente.pas',
  TModelCliente in 'model\classes\TModelCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.

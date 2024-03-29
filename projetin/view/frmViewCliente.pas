unit frmViewCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  IDTOCliente, TDTOCliente, TControllerCliente, IController;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    labelNome: TEdit;
    labelCPF: TEdit;
    labelEndereco: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnGravar: TButton;
    Memo1: TMemo;
    btnLimparMemo: TButton;
    Label6: TLabel;
    ComboBox1: TComboBox;
    labelEstadoCivil: TLabel;
    labelnomeCli: TLabel;
    labelcpfCli: TLabel;
    labelEnderecocli: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure labelNomeExit(Sender: TObject);
    procedure labelCPFExit(Sender: TObject);
    procedure labelEnderecoExit(Sender: TObject);
    procedure btnLimparMemoClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    FDTOCli: IDTOClientes;
    FcontrollerCliente: IControllerCliente;
    procedure InstanciarObjetos;
    procedure ValidarNome;
    procedure ValidarCPF;
    procedure ValidarEndereco;
    procedure AdicionaClienteNoMemo;
    procedure AlimentarObjetoCliente;
    procedure LimparMemo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.AdicionaClienteNoMemo;
begin
 Memo1.Lines.Add(
     'Nome do cliente: ' + FDTOCli.GetNome + SlineBreak +
     'CPF Do Cliente:  ' + FDTOCli.GetCPF + SlineBreak +
     'Endereco do Cliente: ' + FDTOCli.GetEndereco);
end;

procedure TForm4.AlimentarObjetoCliente;
begin
  FDTOCli
        .SetNome(labelnome.Text)
        .SetCPF(labelCpf.Text)
        .SetEndereco(labelEndereco.Text)
        .SetEstadoCivil(ComboBox1.ItemIndex);
end;

procedure TForm4.LimparMemo;
begin
  if (Memo1.Lines.Text <> EmptyStr) then
    Memo1.Clear;
end;

procedure TForm4.btnGravarClick(Sender: TObject);
begin
  Self.ValidarNome;
  Self.ValidarCPF;
  Self.ValidarEndereco;
  Self.AdicionaClienteNoMemo;
end;

procedure TForm4.btnLimparMemoClick(Sender: TObject);
begin
  Self.LimparMemo;
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  try
    labelEstadoCivil.Caption := FcontrollerCliente
                            .GetInstancia(Combobox1.ItemIndex)
                            .RetornaStringLabel;
  except
    On E:Exception do
       begin
       ShowMessage('N�o existe classe criada no momento para o Item ' + IntToStr(Combobox1.ItemIndex));
       Abort;
    end;
  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Self.InstanciarObjetos;
end;

procedure TForm4.InstanciarObjetos;
begin
 FcontrollerCliente := TControllerClientes.New;
 FDTOCli := TDTOClientes.New;
end;

procedure TForm4.labelCPFExit(Sender: TObject);
begin
  if (labelCPF.Text = EmptyStr) then
    labelCPF.Color := clRed
  else
    begin
    labelCPF.Color := clWhite;
    FDTOCli.SetCPF(labelCPF.Text);
    labelcpfCli.Caption := FDTOCli.GetCpf;
  end;
end;

procedure TForm4.labelEnderecoExit(Sender: TObject);
begin
  if (labelEndereco.Text = EmptyStr) then
    labelEndereco.Color := clRed
  else
    begin
    labelEndereco.Color := clWhite;
    FDTOCLi.SetEndereco(labelEndereco.Text);
    labelEnderecocli.Caption := FDTOCli.GetEndereco;
  end;
end;

procedure TForm4.labelNomeExit(Sender: TObject);
begin
  if (labelNome.Text = EmptyStr) then
    labelNome.Color := clRed
  else
    begin
    labelNome.Color := clWhite;
    FDTOCli.SetNome(labelNome.Text);
    labelnomeCli.Caption := FDTOCli.GetNome;
  end;
end;

procedure TForm4.ValidarCPF;
begin
 FcontrollerCliente.ValidarCPF(FDTOCli.GetCPF);
end;

procedure TForm4.ValidarEndereco;
begin
 FcontrollerCliente.ValidarEndereco(FDTOCli.GetEndereco);
end;

procedure TForm4.ValidarNome;
begin
 FControllerCliente.ValidarNome(FDTOCli.GetNome);
end;

end.

object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 530
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 33
    Top = 56
    Width = 729
    Height = 417
    Caption = 'Dados do cliente'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 16
      Top = 49
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label4: TLabel
      Left = 16
      Top = 81
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label6: TLabel
      Left = 16
      Top = 108
      Width = 47
      Height = 13
      Caption = 'Estd Civil.'
    end
    object labelEstadoCivil: TLabel
      Left = 488
      Top = 255
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelnomeCli: TLabel
      Left = 488
      Top = 169
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelcpfCli: TLabel
      Left = 488
      Top = 194
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelEnderecocli: TLabel
      Left = 488
      Top = 219
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelNome: TEdit
      Left = 49
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = labelNomeExit
    end
    object labelCPF: TEdit
      Left = 49
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 1
      OnExit = labelCPFExit
    end
    object labelEndereco: TEdit
      Left = 70
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 2
      OnExit = labelEnderecoExit
    end
    object btnGravar: TButton
      Left = 35
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object Memo1: TMemo
      Left = 224
      Top = 19
      Width = 185
      Height = 142
      TabOrder = 4
    end
    object btnLimparMemo: TButton
      Left = 224
      Top = 167
      Width = 75
      Height = 25
      Caption = 'Limpar Memo'
      TabOrder = 5
      OnClick = btnLimparMemoClick
    end
    object ComboBox1: TComboBox
      Left = 70
      Top = 100
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 6
      Text = 'Casado'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Casado'
        'Solteiro'
        'Separado')
    end
  end
end

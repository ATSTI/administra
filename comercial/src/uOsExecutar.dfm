object fOsExecutar: TfOsExecutar
  Left = 192
  Top = 137
  Width = 696
  Height = 269
  Caption = 'Executar Ordem Servi'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 272
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label3: TLabel
    Left = 32
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 32
    Top = 8
    Width = 61
    Height = 13
    Caption = 'C. Resultado'
  end
  object Label5: TLabel
    Left = 328
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Servi'#231'o'
  end
  object labelCondutor: TLabel
    Left = 288
    Top = 192
    Width = 42
    Height = 13
    Caption = 'Executor'
  end
  object Label6: TLabel
    Left = 32
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label1: TLabel
    Left = 408
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Para :'
  end
  object Label7: TLabel
    Left = 32
    Top = 192
    Width = 42
    Height = 13
    Caption = 'Situa'#231#227'o'
  end
  object edData: TJvDatePickerEdit
    Left = 272
    Top = 24
    Width = 119
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 0
  end
  object edResultado: TJvComboBox
    Left = 32
    Top = 24
    Width = 213
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'JvComboBox1'
  end
  object edCliente: TJvComboBox
    Left = 32
    Top = 72
    Width = 277
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'JvComboBox1'
  end
  object edServico: TEdit
    Left = 32
    Top = 112
    Width = 605
    Height = 21
    MaxLength = 100
    TabOrder = 3
    Text = 'edServico'
  end
  object edExecutor: TJvComboBox
    Left = 352
    Top = 192
    Width = 286
    Height = 21
    ItemHeight = 13
    TabOrder = 4
  end
  object edServico1: TEdit
    Left = 32
    Top = 136
    Width = 605
    Height = 21
    MaxLength = 100
    TabOrder = 5
    Text = 'edServico'
  end
  object edServico2: TEdit
    Left = 32
    Top = 160
    Width = 605
    Height = 21
    MaxLength = 100
    TabOrder = 6
    Text = 'edServico'
  end
  object edProduto: TJvComboBox
    Left = 328
    Top = 72
    Width = 309
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'edProduto'
  end
  object JvDatePickerEdit1: TJvDatePickerEdit
    Left = 408
    Top = 24
    Width = 120
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 8
  end
  object edSituacao: TJvComboBox
    Left = 112
    Top = 192
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'Pendente'
    Items.Strings = (
      'Pendente'
      'Parcial'
      'Completada')
  end
end

object fExporta: TfExporta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Veiculo'
  ClientHeight = 479
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 676
    Top = 10
    Width = 117
    Height = 16
    Caption = '* Capacidade (kg)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 840
    Top = 10
    Width = 121
    Height = 16
    Caption = '* Capacidade (M3)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 59
    Width = 40
    Height = 16
    Caption = 'Marca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblProdutos: TLabel
    Left = 32
    Top = 112
    Width = 4
    Height = 13
    Caption = '.'
  end
  object edtVeicCapK: TEdit
    Left = 676
    Top = 32
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edtVeicCapM: TEdit
    Left = 840
    Top = 32
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object cbMarca: TComboBox
    Left = 32
    Top = 84
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'BAYER'
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'BAYER')
  end
  object btnExportarProdutos: TBitBtn
    Left = 248
    Top = 408
    Width = 137
    Height = 49
    Caption = 'Exportar Produtos'
    TabOrder = 3
    OnClick = btnExportarProdutosClick
  end
  object btnFechar: TBitBtn
    Left = 391
    Top = 408
    Width = 137
    Height = 49
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object chkItensNovos: TCheckBox
    Left = 93
    Top = 61
    Width = 97
    Height = 17
    Caption = 'Itens Novos'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
end

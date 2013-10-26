object fFluxoEstoque: TfFluxoEstoque
  Left = 540
  Top = 265
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fluxo Estoque'
  ClientHeight = 179
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 19
    Top = 132
    Width = 89
    Height = 33
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox5: TGroupBox
    Left = 6
    Top = 10
    Width = 212
    Height = 49
    Caption = 'Per'#237'odo'
    TabOrder = 1
    object Label1: TLabel
      Left = 101
      Top = 18
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Data1: TJvDatePickerEdit
      Left = 8
      Top = 16
      Width = 90
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 0
    end
    object Data2: TJvDatePickerEdit
      Left = 114
      Top = 16
      Width = 88
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 210
    Height = 49
    Caption = 'Tipo'
    TabOrder = 2
    object cbTipo: TComboBox
      Left = 7
      Top = 18
      Width = 190
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Text = 'Compra/Venda'
      Items.Strings = (
        'Compra/Venda'
        'Compra'
        'Venda'
        'Servi'#231'o'
        'Loca'#231#227'o')
    end
  end
  object Button2: TButton
    Left = 123
    Top = 132
    Width = 89
    Height = 33
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button2Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 73
    Top = 65
  end
end

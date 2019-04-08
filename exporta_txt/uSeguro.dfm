object fSeguro: TfSeguro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Seguro'
  ClientHeight = 423
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 175
    Height = 16
    Caption = '* Responsavel Pelo Seguro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 80
    Width = 120
    Height = 16
    Caption = 'N'#250'mero da Ap'#243'lice'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 62
    Top = 144
    Width = 301
    Height = 16
    Caption = 'Valor da Mercadoria para Efeito de Averba'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 62
    Top = 193
    Width = 135
    Height = 16
    Caption = 'Nome da Seguradora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 62
    Top = 257
    Width = 144
    Height = 16
    Caption = 'N'#250'mero da Averba'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object combSeguro: TComboBox
    Left = 62
    Top = 38
    Width = 169
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '0 -  Rementente'
      '1 -  Expeditor'
      '2 - Recebedor'
      '3 - Destinat'#225'rio'
      '4 -  Emitente'
      '5 - Tomador de Servi'#231'o')
  end
  object edtSeguNumApo: TEdit
    Left = 62
    Top = 102
    Width = 301
    Height = 21
    MaxLength = 20
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edtSegNome: TEdit
    Left = 62
    Top = 217
    Width = 301
    Height = 21
    MaxLength = 30
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object edtSegNumAver: TEdit
    Left = 62
    Top = 279
    Width = 301
    Height = 21
    MaxLength = 20
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object btnOk: TButton
    Left = 62
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 4
    OnClick = btnOkClick
  end
  object btnSegFechar: TButton
    Left = 288
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = btnSegFecharClick
  end
  object btnEditar: TButton
    Left = 176
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 6
    OnClick = btnEditarClick
  end
  object valSegValor: TJvCalcEdit
    Left = 62
    Top = 166
    Width = 135
    Height = 21
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
  end
end

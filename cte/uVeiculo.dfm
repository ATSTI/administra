object fVeiculo: TfVeiculo
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
  object Label1: TLabel
    Left = 32
    Top = 10
    Width = 151
    Height = 16
    Caption = 'C'#243'd. Interno do Veiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 10
    Width = 76
    Height = 16
    Caption = '* RENAVAM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 368
    Top = 10
    Width = 50
    Height = 16
    Caption = ' * Placa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 536
    Top = 10
    Width = 72
    Height = 16
    Caption = '* Tara (kg)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
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
    Top = 93
    Width = 111
    Height = 16
    Caption = '* Tipo de Rodado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 225
    Top = 96
    Width = 130
    Height = 16
    Caption = '* Tipo de Carroceria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 433
    Top = 96
    Width = 108
    Height = 16
    Caption = '* Tipo de Veiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 685
    Top = 96
    Width = 116
    Height = 16
    Caption = '* Prop. do Veiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 841
    Top = 99
    Width = 26
    Height = 16
    Caption = '* UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 227
    Top = 224
    Width = 84
    Height = 16
    Caption = '* CPF / CNPJ '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 443
    Top = 224
    Width = 53
    Height = 16
    Caption = '* RNTRC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 38
    Top = 294
    Width = 140
    Height = 16
    Caption = '* Tipo de Proprietario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 262
    Top = 293
    Width = 152
    Height = 16
    Caption = '* Raza'#227'o Social / Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 568
    Top = 224
    Width = 118
    Height = 16
    Caption = 'Inscri'#231#227'o Estadual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 840
    Top = 224
    Width = 26
    Height = 16
    Caption = '* UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnOK: TButton
    Left = 32
    Top = 422
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 20
    OnClick = btnOKClick
  end
  object edtCint: TEdit
    Left = 32
    Top = 32
    Width = 151
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
  object edtVeicRenavam: TEdit
    Left = 216
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
  object edtVeicPlaca: TEdit
    Left = 368
    Top = 32
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object edtVeicTara: TEdit
    Left = 528
    Top = 32
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
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
    TabOrder = 4
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
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object combVeicRod: TComboBox
    Left = 32
    Top = 118
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '00 - n'#227'o aplic'#225'vel'
      '01 - Truck'
      '02 - Toco '
      '03 - Cavalo Mec'#226'nico'
      '04 - VAN '
      '05 - Utilit'#225'rio'
      '06 - Outros')
  end
  object combVeicCar: TComboBox
    Left = 225
    Top = 118
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '00 - n'#227'o aplic'#225'vel'
      '01 - Aberta'
      '02 - Fechada/Ba'#250
      '03 - Granelera'
      '04 - Porta Container'
      '05 - Sider')
  end
  object combVeicTV: TComboBox
    Left = 434
    Top = 118
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '0 - Tra'#231#227'o'
      '1 - Reboque')
  end
  object combVeicProp: TComboBox
    Left = 685
    Top = 118
    Width = 116
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'P - Pr'#243'prio'
      'T - terceiro')
  end
  object combVeicUF: TComboBox
    Left = 841
    Top = 117
    Width = 82
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
  end
  object btnEditar: TButton
    Left = 144
    Top = 422
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 19
    OnClick = btnEditarClick
  end
  object Button1: TButton
    Left = 262
    Top = 422
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 21
    OnClick = Button1Click
  end
  object rgPertence: TRadioGroup
    Left = 32
    Top = 160
    Width = 305
    Height = 49
    Caption = 'Ve'#237'culo Pertence '#224' empresa emitente do CTe'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Sim'
      'N'#227'o ')
    ParentFont = False
    TabOrder = 11
    OnClick = rgPertenceClick
  end
  object rgTipoDoc: TRadioGroup
    Left = 32
    Top = 224
    Width = 176
    Height = 49
    Caption = 'Tipo de Documento'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'CPF'
      'CNPJ')
    ParentFont = False
    TabOrder = 12
    OnClick = rgTipoDocClick
  end
  object edtVeicRNTRC: TEdit
    Left = 443
    Top = 246
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object comVeicTipPro: TComboBox
    Left = 38
    Top = 315
    Width = 211
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '0 - TAC Agregado'
      '1 - TAC Independente'
      '2 - Outros')
  end
  object edtVeicRazao: TEdit
    Left = 262
    Top = 315
    Width = 660
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object edtVeicIE: TEdit
    Left = 568
    Top = 246
    Width = 137
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object combVeicPropUF: TComboBox
    Left = 841
    Top = 246
    Width = 82
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
  end
  object maskedtVeicCNPJ: TMaskEdit
    Left = 235
    Top = 246
    Width = 190
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Text = ''
    OnKeyPress = FormKeyPress
  end
end

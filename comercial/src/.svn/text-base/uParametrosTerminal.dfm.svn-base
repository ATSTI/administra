object fParametrosTerminal: TfParametrosTerminal
  Left = 370
  Top = 253
  Width = 409
  Height = 313
  BorderIcons = [biSystemMenu]
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 15
    Width = 126
    Height = 13
    Caption = 'VALOR DA ENTRADA R$'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 37
    Width = 150
    Height = 13
    Caption = 'VALOR DA CONSUMA'#199#195'O R$'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 45
    Top = 59
    Width = 137
    Height = 13
    Caption = 'CONSUMA'#199#195'O LIVRE AT'#201' '
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 9
    Top = 81
    Width = 172
    Height = 13
    Caption = 'CONSUMO DIARIO COLABORADO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 34
    Top = 103
    Width = 147
    Height = 13
    Caption = 'VALOR CORTESIA SEMANAL'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 39
    Top = 125
    Width = 140
    Height = 13
    Caption = 'DESCONTO P/ POLICIAIS %'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 68
    Top = 147
    Width = 111
    Height = 13
    Caption = 'PORTA IMPRESSORA'
    FocusControl = DBEdit5
  end
  object Label8: TLabel
    Left = 104
    Top = 171
    Width = 77
    Height = 13
    Caption = 'PARAMETRO 2'
    FocusControl = DBEdit5
  end
  object Label9: TLabel
    Left = 104
    Top = 192
    Width = 77
    Height = 13
    Caption = 'PARAMETRO 3'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 191
    Top = 11
    Width = 175
    Height = 21
    DataField = 'D1'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 191
    Top = 33
    Width = 175
    Height = 21
    DataField = 'D2'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 191
    Top = 55
    Width = 175
    Height = 21
    DataField = 'D3'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 190
    Top = 77
    Width = 176
    Height = 21
    DataField = 'D4'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 190
    Top = 99
    Width = 176
    Height = 21
    DataField = 'D5'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 190
    Top = 121
    Width = 176
    Height = 21
    DataField = 'D6'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 190
    Top = 143
    Width = 176
    Height = 21
    DataField = 'D7'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 190
    Top = 166
    Width = 176
    Height = 21
    DataField = 'D8'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 190
    Top = 188
    Width = 176
    Height = 21
    DataField = 'D9'
    DataSource = DataSource1
    TabOrder = 8
  end
  object BitBtn2: TBitBtn
    Left = 166
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SAIR'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object sParametro: TSQLDataSet
    CommandText = 
      'select  PARAMETRO, DADOS, D1, D2, D3, D4, D5, D6, D7, D8, D9 fro' +
      'm PARAMETRO '#13#10'where PARAMETRO = '#39'TERMINAL'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 37
    Top = 214
    object sParametroD1: TStringField
      FieldName = 'D1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD2: TStringField
      FieldName = 'D2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD3: TStringField
      FieldName = 'D3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD4: TStringField
      FieldName = 'D4'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD5: TStringField
      FieldName = 'D5'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD6: TStringField
      FieldName = 'D6'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD7: TStringField
      FieldName = 'D7'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD8: TStringField
      FieldName = 'D8'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroD9: TStringField
      FieldName = 'D9'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sParametroDADOS: TStringField
      FieldName = 'DADOS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sParametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
  end
  object pParametro: TDataSetProvider
    DataSet = sParametro
    Left = 69
    Top = 214
  end
  object cParametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pParametro'
    Left = 101
    Top = 214
    object cParametroD1: TStringField
      Alignment = taRightJustify
      FieldName = 'D1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD2: TStringField
      Alignment = taRightJustify
      FieldName = 'D2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD3: TStringField
      Alignment = taRightJustify
      FieldName = 'D3'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
      Size = 30
    end
    object cParametroD4: TStringField
      Alignment = taRightJustify
      FieldName = 'D4'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD5: TStringField
      Alignment = taRightJustify
      FieldName = 'D5'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD6: TStringField
      Alignment = taRightJustify
      FieldName = 'D6'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD7: TStringField
      Alignment = taRightJustify
      FieldName = 'D7'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD8: TStringField
      Alignment = taRightJustify
      FieldName = 'D8'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroD9: TStringField
      Alignment = taRightJustify
      FieldName = 'D9'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cParametroDADOS: TStringField
      FieldName = 'DADOS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cParametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = cParametro
    Left = 136
    Top = 214
  end
end

object fMenuCupom: TfMenuCupom
  Left = 561
  Top = 275
  Width = 278
  Height = 350
  BorderIcons = [biSystemMenu]
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 141
    Top = 198
    Width = 83
    Height = 13
    Caption = ' Hor'#225'rio de Ver'#227'o'
  end
  object BitBtn1: TBitBtn
    Left = 29
    Top = 23
    Width = 94
    Height = 39
    Caption = 'Leitura X'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 29
    Top = 72
    Width = 94
    Height = 39
    Caption = 'Redu'#231#227'o Z'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 133
    Top = 24
    Width = 94
    Height = 39
    Caption = 'Cancelar Cupom'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 81
    Top = 267
    Width = 94
    Height = 39
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 134
    Top = 72
    Width = 94
    Height = 39
    Caption = 'Aliquota'
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 30
    Top = 120
    Width = 94
    Height = 39
    Caption = 'Mensagem'
    TabOrder = 5
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 136
    Top = 120
    Width = 94
    Height = 39
    Caption = 'Impr. Ligada ?'
    TabOrder = 6
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 32
    Top = 168
    Width = 94
    Height = 39
    Caption = 'Modo Operac.'
    TabOrder = 7
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 136
    Top = 170
    Width = 97
    Height = 28
    Caption = 'Ativa/Desativa '
    TabOrder = 8
    OnClick = BitBtn9Click
  end
  object btnSPED: TBitBtn
    Left = 32
    Top = 220
    Width = 94
    Height = 39
    Caption = 'Importar SPED'
    TabOrder = 9
    OnClick = btnSPEDClick
  end
  object PopupMenu1: TPopupMenu
    Left = 181
    Top = 55
  end
  object cCaixaControle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'idCaixa'
        ParamType = ptInput
      end>
    ProviderName = 'dCaixaControle'
    Left = 138
    Top = 51
    object cCaixaControleIDCAIXACONTROLE: TIntegerField
      FieldName = 'IDCAIXACONTROLE'
      ProviderFlags = [pfInKey]
    end
    object cCaixaControleCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cCaixaControleCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cCaixaControleDATAFECHAMENTO: TDateField
      FieldName = 'DATAFECHAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cCaixaControleSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cCaixaControleMAQUINA: TStringField
      FieldName = 'MAQUINA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cCaixaControleDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cCaixaControleVALORABRE: TFloatField
      FieldName = 'VALORABRE'
      ProviderFlags = [pfInUpdate]
    end
    object cCaixaControleVALORFECHA: TFloatField
      FieldName = 'VALORFECHA'
      ProviderFlags = [pfInUpdate]
    end
    object cCaixaControleNOMECAIXA: TStringField
      FieldName = 'NOMECAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dCaixaControle: TDataSetProvider
    DataSet = sCaixaControle
    UpdateMode = upWhereKeyOnly
    Left = 109
    Top = 51
  end
  object sCaixaControle: TSQLDataSet
    CommandText = 'select * from CAIXA_CONTROLE '#13#10'where SITUACAO = :idCaixa'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'idCaixa'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 51
    object sCaixaControleIDCAIXACONTROLE: TIntegerField
      FieldName = 'IDCAIXACONTROLE'
      ProviderFlags = [pfInKey]
    end
    object sCaixaControleCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sCaixaControleCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sCaixaControleDATAFECHAMENTO: TDateField
      FieldName = 'DATAFECHAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sCaixaControleSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sCaixaControleMAQUINA: TStringField
      FieldName = 'MAQUINA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sCaixaControleDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sCaixaControleVALORABRE: TFloatField
      FieldName = 'VALORABRE'
      ProviderFlags = [pfInUpdate]
    end
    object sCaixaControleVALORFECHA: TFloatField
      FieldName = 'VALORFECHA'
      ProviderFlags = [pfInUpdate]
    end
    object sCaixaControleNOMECAIXA: TStringField
      FieldName = 'NOMECAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
end

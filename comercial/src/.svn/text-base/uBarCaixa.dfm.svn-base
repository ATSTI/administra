object fBarCaixa: TfBarCaixa
  Left = 355
  Top = 231
  Width = 175
  Height = 85
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 169
    Height = 79
    Align = alClient
    Caption = 'ABRIR'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'CAIXA'
      'BAR')
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object JvTransparentForm1: TJvTransparentForm
    Active = True
    Left = 112
    Top = 32
  end
  object sCaixa: TSQLDataSet
    CommandText = 'select * from CAIXA_CONTROLE '#13#10'where SITUACAO = :pStatus'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'pStatus'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 38
    Top = 297
    object sCaixaMAQUINA: TStringField
      FieldName = 'MAQUINA'
      Size = 60
    end
    object sCaixaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sCaixaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sCaixaNOMECAIXA: TStringField
      FieldName = 'NOMECAIXA'
      Size = 60
    end
  end
end

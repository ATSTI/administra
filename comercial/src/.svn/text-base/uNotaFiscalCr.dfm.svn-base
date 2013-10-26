object fNotaFiscalCr: TfNotaFiscalCr
  Left = 246
  Top = 108
  Width = 300
  Height = 214
  Caption = 'Gera Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 65
    Height = 13
    Caption = 'Data Emiss'#227'o'
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 82
    Height = 13
    Caption = 'Data Vencimento'
  end
  object Label3: TLabel
    Left = 56
    Top = 64
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label4: TLabel
    Left = 112
    Top = 64
    Width = 52
    Height = 13
    Caption = 'N. da Nota'
  end
  object data2: TJvDatePickerEdit
    Left = 158
    Top = 41
    Width = 83
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 0
  end
  object data1: TJvDatePickerEdit
    Left = 56
    Top = 41
    Width = 97
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 56
    Top = 80
    Width = 49
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 129
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object BitBtn1: TBitBtn
    Left = 115
    Top = 125
    Width = 126
    Height = 37
    Caption = 'Gerar Nota'
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object sSerie: TSQLDataSet
    CommandText = 'select SERIE, ULTIMO_NUMERO from SERIES '#13#10'where SERIE = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 128
    object sSerieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object sSerieSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
  end
  object sqlNumeroSerie: TSQLDataSet
    CommandText = 
      'SELECT max(cast(NOTASERIE as integer)) as NOTASERIE FROM NOTAFIS' +
      'CAL WHERE SERIE = :Serie'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 72
    object sqlNumeroSerieNOTASERIE: TIntegerField
      FieldName = 'NOTASERIE'
      ReadOnly = True
    end
  end
end

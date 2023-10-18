object fNFeMail: TfNFeMail
  Left = 194
  Top = 105
  Caption = 'Envio de Nf-e para email Cliente/Fornecedor'
  ClientHeight = 319
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnEnviar: TJvBitBtn
    Left = 159
    Top = 246
    Width = 89
    Height = 33
    Caption = 'Enviar E-Mail'
    Enabled = False
    TabOrder = 1
    OnClick = btnEnviarClick
  end
  object ComboBox1: TComboBox
    Left = 18
    Top = 32
    Width = 175
    Height = 21
    TabOrder = 0
  end
  object XMLDocument1: TXMLDocument
    Left = 201
    Top = 88
    DOMVendorDesc = 'MSXML'
  end
  object cds_ccusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 263
    Top = 96
    object cds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ccustoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_ccustoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object d_2: TDataSetProvider
    Left = 135
    Top = 112
  end
  object OpenDialog1: TOpenDialog
    Left = 64
    Top = 128
  end
end

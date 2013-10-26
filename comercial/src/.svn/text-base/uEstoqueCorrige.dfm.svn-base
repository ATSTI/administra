object fEstoqueCorrige: TfEstoqueCorrige
  Left = 315
  Top = 135
  Width = 407
  Height = 353
  Caption = 'Estoque'
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
  object Label2: TLabel
    Left = 20
    Top = 40
    Width = 76
    Height = 13
    Caption = 'C'#243'digo Produto '
    Visible = False
  end
  object Label3: TLabel
    Left = 147
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Grupo'
    Visible = False
  end
  object Label5: TLabel
    Left = 16
    Top = 95
    Width = 45
    Height = 13
    Caption = 'Periodo : '
  end
  object Label7: TLabel
    Left = 195
    Top = 99
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label6: TLabel
    Left = 16
    Top = 120
    Width = 3
    Height = 13
  end
  object Label8: TLabel
    Left = 16
    Top = 280
    Width = 361
    Height = 24
    Caption = 'Se houve ajuste de Estoque n'#227'o usar aqui.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblUltimo: TLabel
    Left = 0
    Top = 24
    Width = 385
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = '..'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblAtualizando: TLabel
    Left = 160
    Top = 8
    Width = 12
    Height = 13
    Caption = '....'
    Visible = False
  end
  object lblProduto: TLabel
    Left = 16
    Top = 128
    Width = 6
    Height = 13
    Caption = '..'
  end
  object Edit1: TEdit
    Left = 16
    Top = 56
    Width = 123
    Height = 21
    TabOrder = 0
    Visible = False
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 57
    Top = 216
    Width = 272
    Height = 41
    Hint = 'Executa o Fechamento do estoque no per'#237'odo acima'
    Caption = 'Fechamento do Estoque'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button1Click
  end
  object JvDateEdit1: TJvDateEdit
    Left = 64
    Top = 96
    Width = 113
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object JvDateEdit2: TJvDateEdit
    Left = 224
    Top = 96
    Width = 129
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 223
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Executar EstoqueMes'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
  object JvProgressBar1: TJvProgressBar
    Left = 16
    Top = 144
    Width = 337
    Height = 16
    TabOrder = 5
  end
  object prog2: TJvProgressBar
    Left = 16
    Top = 166
    Width = 337
    Height = 16
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Corrigir Lote'
    TabOrder = 7
    Visible = False
    OnClick = BitBtn1Click
  end
  object cbGrupo: TComboBox
    Left = 145
    Top = 56
    Width = 206
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 8
    Visible = False
  end
  object Button3: TButton
    Left = 57
    Top = 272
    Width = 272
    Height = 41
    Hint = 'Re-calcula todo o estoque.'
    Caption = 'Atualizar Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Button3Click
  end
  object sqlQ: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 72
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 168
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 56
    Top = 168
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 88
    Top = 168
  end
  object sdsA: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 184
    Top = 160
  end
  object dspA: TDataSetProvider
    DataSet = sdsA
    Options = [poAllowCommandText]
    Left = 216
    Top = 160
  end
  object cdsA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspA'
    Left = 248
    Top = 160
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 256
    Top = 224
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    Left = 288
    Top = 224
  end
  object cdsB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 320
    Top = 224
  end
  object sqlR: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 224
  end
end

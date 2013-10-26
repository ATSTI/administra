object fSuites: TfSuites
  Left = 522
  Top = 183
  Width = 443
  Height = 383
  Caption = 'fSuites'
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
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 56
    Width = 314
    Height = 289
    Align = alClient
    BorderStyle = bsNone
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'PARAMETRO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D2'
        Title.Caption = 'Bloqueada ?'
        Width = 80
        Visible = True
      end>
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 56
    Align = alTop
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 7
      Top = 6
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 184
      Top = 6
      Width = 28
      Height = 16
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edt1: TEdit
      Left = 7
      Top = 23
      Width = 170
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbb1: TComboBox
      Left = 186
      Top = 23
      Width = 218
      Height = 24
      BevelKind = bkFlat
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = 'SUITE'
      Items.Strings = (
        'SUITE')
    end
  end
  object pnl1: TPanel
    Left = 314
    Top = 56
    Width = 113
    Height = 289
    Align = alRight
    TabOrder = 2
    object btn1: TBitBtn
      Left = 14
      Top = 7
      Width = 90
      Height = 31
      Caption = 'INCLUIR'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 14
      Top = 47
      Width = 90
      Height = 31
      Caption = 'EXCLUIR'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 15
      Top = 87
      Width = 90
      Height = 31
      Caption = 'ALTERAR'
      TabOrder = 2
      OnClick = btn3Click
    end
    object chk1: TCheckBox
      Left = 4
      Top = 136
      Width = 107
      Height = 17
      Caption = 'Bloquear ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = chk1Click
    end
  end
  object s_suites: TSQLDataSet
    CommandText = 'select * from PARAMETRO '#13#10'where D1 = '#39'SUITES'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 48
    Top = 192
    object s_suitesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object s_suitesPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object s_suitesCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object s_suitesDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object s_suitesD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object s_suitesD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object s_suitesD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object s_suitesD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object s_suitesD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object s_suitesD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object s_suitesD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object s_suitesD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object s_suitesD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object s_suitesINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object s_suitesVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object p_Suites: TDataSetProvider
    DataSet = s_suites
    Left = 88
    Top = 192
  end
  object c_Suites: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p_Suites'
    Left = 128
    Top = 192
    object c_SuitesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object c_SuitesPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object c_SuitesCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object c_SuitesDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object c_SuitesD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object c_SuitesD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object c_SuitesD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object c_SuitesD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object c_SuitesD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object c_SuitesD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object c_SuitesD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object c_SuitesD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object c_SuitesD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object c_SuitesINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object c_SuitesVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object ds1: TDataSource
    DataSet = c_Suites
    Left = 168
    Top = 192
  end
end

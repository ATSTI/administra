object fNFeInutilizar: TfNFeInutilizar
  Left = 265
  Top = 215
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Inutiliza'#231#227'o de NF-e'
  ClientHeight = 337
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 337
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 32
      Top = 141
      Width = 23
      Height = 13
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 29
      Top = 179
      Width = 42
      Height = 13
      Caption = 'Modelo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 29
      Top = 219
      Width = 30
      Height = 13
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 30
      Top = 258
      Width = 82
      Height = 13
      Caption = 'N'#250'mero Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 30
      Top = 298
      Width = 75
      Height = 13
      Caption = 'N'#250'mero Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 232
      Top = 105
      Width = 69
      Height = 13
      Caption = 'Justificativa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 32
      Top = 102
      Width = 119
      Height = 16
      Caption = 'Centro de Custo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 32
      Top = 48
      Width = 369
      Height = 13
      Caption = 
        'A Numera'#231#227'o Inutilizada aparecer'#225' na lista de NFe emitidas com S' +
        'tatus = I (i) .'
    end
    object Label9: TLabel
      Left = 32
      Top = 64
      Width = 421
      Height = 13
      Caption = 
        'Caso n'#227'o apare'#231'am na listagem  o cliente do sistema est'#225' sem end' +
        'ere'#231'o, contate a ATS.'
    end
    object Label10: TLabel
      Left = 32
      Top = 24
      Width = 303
      Height = 13
      Caption = 
        'V'#225'lido para Inutiliza'#231#245'es feitas a partir desta vers'#227'o do sistem' +
        'a : '
    end
    object edtAno: TEdit
      Left = 26
      Top = 155
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object edtModelo: TEdit
      Left = 26
      Top = 193
      Width = 193
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = '55'
    end
    object edtSerie: TEdit
      Left = 26
      Top = 233
      Width = 193
      Height = 21
      TabOrder = 2
    end
    object edtNumIni: TEdit
      Left = 26
      Top = 272
      Width = 193
      Height = 21
      TabOrder = 3
    end
    object edtNumFim: TEdit
      Left = 26
      Top = 310
      Width = 193
      Height = 21
      TabOrder = 4
    end
    object edtJustificativa: TEdit
      Left = 226
      Top = 120
      Width = 193
      Height = 172
      AutoSize = False
      TabOrder = 5
    end
    object btnInutilizar: TButton
      Left = 228
      Top = 299
      Width = 90
      Height = 33
      Caption = 'Inutilizar'
      TabOrder = 6
      OnClick = btnInutilizarClick
    end
    object btnSair: TButton
      Left = 329
      Top = 299
      Width = 90
      Height = 33
      Caption = 'Sair'
      TabOrder = 7
      OnClick = btnSairClick
    end
    object MemoResp: TMemo
      Left = 184
      Top = 96
      Width = 24
      Height = 22
      Align = alCustom
      TabOrder = 8
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 26
      Top = 120
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 9
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 337
    Width = 491
    Height = 0
    Align = alClient
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 489
      Height = 6
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'SELECIONOU'
          Title.Caption = 'SEL.'
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTASERIE'
          Title.Caption = 'Nota F.'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTAEMISSAO'
          Title.Caption = 'Emiss'#227'o'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCLIENTE'
          Title.Caption = 'C'#243'digo'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Raz'#227'o Social'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Title.Caption = 'CNPJ / CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLOENV'
          Title.Caption = 'Protocolo de Envio'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMRECIBO'
          Title.Caption = 'Numero Recebimento'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLOCANC'
          Title.Caption = 'Protocolo de Cancelamento'
          Width = 70
          Visible = True
        end>
    end
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
      ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 287
    Top = 40
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 319
    Top = 41
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
    Left = 351
    Top = 40
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
  object sEmpresa: TSQLDataSet
    CommandText = 'select * from EMPRESA where ccusto = :pcusto'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcusto'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 255
    Top = 40
    object sEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object sEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object sEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object sEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object sEmpresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object sEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object sEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object sEmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object sEmpresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object sEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sEmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object sEmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object sEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sEmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object sEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object sEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object sEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sEmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
  end
end

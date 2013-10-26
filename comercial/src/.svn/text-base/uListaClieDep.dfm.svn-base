object fListaClieDep: TfListaClieDep
  Left = 117
  Top = 107
  Width = 807
  Height = 396
  BorderIcons = [biSystemMenu]
  Caption = 'Lista Clientes e Dependentes'
  Color = clBtnFace
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
    Left = 71
    Top = 64
    Width = 29
    Height = 13
    Caption = 'Titular'
  end
  object Label2: TLabel
    Left = 362
    Top = 64
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label3: TLabel
    Left = 491
    Top = 64
    Width = 25
    Height = 13
    Caption = 'Faixa'
  end
  object Label4: TLabel
    Left = 16
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label5: TLabel
    Left = 80
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label6: TLabel
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object EvDBFind1: TEvDBFind
    Left = 77
    Top = 33
    Width = 444
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOMECLIENTE'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 80
    Width = 281
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 360
    Top = 80
    Width = 121
    Height = 21
    DataField = 'GRUPO_CLIENTE'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
  end
  object DBRadioGroup2: TDBRadioGroup
    Left = 585
    Top = 71
    Width = 185
    Height = 37
    Caption = 'STATUS'
    Columns = 2
    DataField = 'STATUS'
    DataSource = DataSource1
    Items.Strings = (
      'ATIVO '
      'DESLIGADO')
    ReadOnly = True
    TabOrder = 4
    Values.Strings = (
      '0'
      '1')
  end
  object DBEdit3: TDBEdit
    Left = 488
    Top = 80
    Width = 81
    Height = 21
    DataField = 'COD_FAIXA'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 120
    Width = 777
    Height = 225
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RA'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Titular / Empresa '
        Width = 291
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO_CLIENTE'
        Title.Caption = 'Grupo'
        Width = 79
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 80
    Width = 49
    Height = 21
    DataField = 'RA'
    DataSource = DataSource1
    TabOrder = 7
  end
  object EvDBFind2: TEvDBFind
    Left = 13
    Top = 33
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RA'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DataSource1: TDataSource
    DataSet = DMSaude.cdsCliente
    Left = 360
  end
end

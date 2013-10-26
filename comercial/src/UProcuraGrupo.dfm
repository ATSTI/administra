object fProcuraGrupo: TfProcuraGrupo
  Left = 198
  Top = 145
  Width = 558
  Height = 362
  BorderIcons = [biSystemMenu]
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 126
    Top = 33
    Width = 177
    Height = 16
    Caption = 'Digite o Nome para Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 40
    Top = 8
    Width = 457
    Height = 17
    DataField = 'NOMECLIENTE'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 38
    Top = 33
    Width = 44
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 33
    Top = 76
    Width = 473
    Height = 209
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'NOME'
        Width = 371
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 296
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object EvDBFind1: TEvDBFind
    Left = 125
    Top = 49
    Width = 368
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOMECLIENTE'
    DataSource = DataSource1
    TabOrder = 2
    OnKeyPress = EvDBFind1KeyPress
  end
  object EvDBFind2: TEvDBFind
    Left = 37
    Top = 49
    Width = 81
    Height = 21
    DataField = 'RA'
    DataSource = DataSource1
    TabOrder = 1
    OnKeyPress = EvDBFind1KeyPress
  end
  object DataSource1: TDataSource
    DataSet = DMSaude.procgrupo
    Left = 8
  end
end

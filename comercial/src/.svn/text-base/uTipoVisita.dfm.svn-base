inherited fTipoVisita: TfTipoVisita
  Left = 221
  Top = 245
  Width = 415
  Height = 334
  Caption = 'Cadastro de Tipos de Visitas'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 253
    Width = 407
    inherited btnGravar: TBitBtn
      Left = 39
    end
    inherited btnIncluir: TBitBtn
      Left = 39
    end
    inherited btnCancelar: TBitBtn
      Left = 152
    end
    inherited btnExcluir: TBitBtn
      Left = 152
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -67
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 265
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 407
    inherited Label1: TLabel
      Top = -102
    end
    inherited Label2: TLabel
      Top = -101
    end
    object Label4: TLabel
      Left = 16
      Top = 18
      Width = 48
      Height = 16
      Caption = 'Visitas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 18
      Width = 305
      Height = 24
      DataField = 'VISITA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid1: TDBGrid [2]
    Left = 27
    Top = 64
    Width = 353
    Height = 177
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VISITA'
        Title.Caption = 'Tipo da Visita'
        Visible = True
      end>
  end
  inherited XPMenu1: TXPMenu
    Left = 88
    Top = 200
  end
  inherited PopupMenu1: TPopupMenu
    Left = 136
    Top = 200
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsTipoVisita
    Left = 40
    Top = 200
  end
end

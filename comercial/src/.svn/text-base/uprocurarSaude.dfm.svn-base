object fProcurarSaude: TfProcurarSaude
  Left = 218
  Top = 149
  BorderStyle = bsDialog
  Caption = 'Procurar'
  ClientHeight = 306
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StsBr: TStatusBar
    Left = 0
    Top = 287
    Width = 434
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 246
    Width = 434
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clPurple
    TabOrder = 2
    object BtnOk: TBitBtn
      Left = 89
      Top = 6
      Width = 86
      Height = 30
      Caption = '&OK'
      Enabled = False
      TabOrder = 0
      Kind = bkOK
    end
    object BtnCancel: TBitBtn
      Left = 266
      Top = 6
      Width = 86
      Height = 30
      Caption = '&Cancel'
      TabOrder = 1
      Kind = bkCancel
    end
    object btnIncluir: TBitBtn
      Left = 177
      Top = 6
      Width = 86
      Height = 30
      Caption = '&Incluir'
      TabOrder = 2
      Visible = False
      OnClick = btnIncluirClick
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333B3333333B333333
        B33333333B333333B33333333BB33888BB8888BB3333333333B00000000000B3
        333333333330FFFFFFFFF083333333333330FFFFFFFFF083333333333330FFFF
        FFFFF083333333333330FFFFFFFFF083333333333330FFFFFFFFF08333333333
        3BB0FFFFFFFFF0833333333BB330FFFFFFFFF0BB333333333330FFFFFF777033
        BB3333333330FFFFF0000033333333333330FFFFF0FF0333333333333330FFFF
        F0F0B333333333333330FFFFF003BB333333333333B0000000333BB333333333
        3BB33333BB3333BB33333333B3333333B3333333B33333333333333333333333
        3333333333333333333333333333333333333333333333333333}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 246
    Align = alClient
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 6
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
    object DBGrid1: TDBGrid
      Left = 8
      Top = 49
      Width = 417
      Height = 189
      TabStop = False
      DataSource = DtSrc
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
    end
    object EditProc: TEdit
      Left = 9
      Top = 23
      Width = 333
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 0
    end
    object BtnProcurar: TBitBtn
      Left = 345
      Top = 24
      Width = 79
      Height = 23
      Caption = 'PROCURAR'
      TabOrder = 1
      OnClick = BtnProcurarClick
    end
    object EvDBFind1: TEvDBFind
      Left = 8
      Top = 23
      Width = 416
      Height = 24
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object DtSrc: TDataSource
    Left = 376
  end
end

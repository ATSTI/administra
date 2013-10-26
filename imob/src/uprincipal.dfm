object fPrincipal: TfPrincipal
  Left = 5
  Top = 7
  Width = 789
  Height = 556
  BorderIcons = [biSystemMenu, biMinimize]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object statusBar1: TStatusBar
    Left = 0
    Top = 486
    Width = 781
    Height = 24
    AutoHint = True
    Color = 11450322
    Panels = <
      item
        Alignment = taCenter
        Text = 'SisAdmin - Modulo Financeiro'
        Width = 350
      end
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 200
      end>
    ParentShowHint = False
    ShowHint = True
    SizeGrip = False
  end
  object MainMenu1: TMainMenu
    Left = 360
    Top = 56
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Clientes1: TMenuItem
        Caption = '&Clientes'
        object Proprietrios1: TMenuItem
          Caption = '&Propriet'#225'rios'
        end
        object Inquilinos1: TMenuItem
          Caption = '&Inquilinos'
        end
        object Interessados1: TMenuItem
          Caption = 'In&teressados'
        end
        object Outros1: TMenuItem
          Caption = '&Outros'
        end
      end
      object Imveis1: TMenuItem
        Caption = 'Im'#243'veis'
        object DeLocao1: TMenuItem
          Caption = '&Loca'#231#227'o'
        end
        object DeVenda1: TMenuItem
          Caption = '&Venda'
        end
      end
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    Active = False
    Left = 392
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 56
  end
end

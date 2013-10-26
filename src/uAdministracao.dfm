object fAdministracao: TfAdministracao
  Left = 3
  Top = 0
  Width = 800
  Height = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 462
    Width = 792
    Height = 31
    Panels = <>
    SimplePanel = False
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 152
    Top = 48
    object Sistema1: TMenuItem
      Caption = '&Sistema'
      object Acessos1: TMenuItem
        Caption = '&Acessos'
      end
      object Backup1: TMenuItem
        Caption = '&Backup'
      end
      object Parmetros1: TMenuItem
        Caption = '&Par'#226'metros'
      end
      object Agenda1: TMenuItem
        Caption = 'A&genda'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
      end
    end
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object CadEmpresas1: TMenuItem
        Caption = '&Empresas'
        OnClick = CadEmpresas1Click
      end
      object CadUsurios1: TMenuItem
        Caption = '&Usu'#225'rios'
        OnClick = CadUsurios1Click
      end
      object SrieNF1: TMenuItem
        Caption = '&S'#233'rie NF'
        OnClick = SrieNF1Click
      end
      object Fiscais1: TMenuItem
        Caption = '&Fiscais'
        object CFOP1: TMenuItem
          Caption = '&CFOP'
        end
        object EstadosCFOP1: TMenuItem
          Caption = '&Estados CFOP'
        end
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
    end
    object Ajuda1: TMenuItem
      Caption = '&Ajuda ?'
      object SobreoSistema1: TMenuItem
        Caption = '&Sobre o Sistema'
      end
      object Ajuda2: TMenuItem
        Caption = '&Ajuda ?'
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
    Gradient = True
    FlatMenu = True
    AutoDetect = True
    Active = True
    Left = 104
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 48
  end
end

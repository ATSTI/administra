object fComandaNTC: TfComandaNTC
  Left = 471
  Top = 282
  Width = 434
  Height = 153
  BorderIcons = [biSystemMenu]
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
  object MMJPanel9: TMMJPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 139
    Align = alClient
    BevelOuter = bvLowered
    BevelWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object JvLabel3: TJvLabel
      Left = 3
      Top = 3
      Width = 414
      Height = 33
      Align = alTop
      Alignment = taCenter
      Caption = 'Digite o Numero da Comanda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      ShadowColor = clWindow
      ShadowSize = 2
      Transparent = True
      HintColor = clBlack
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -27
      HotTrackFont.Name = 'Cooper Black'
      HotTrackFont.Style = []
    end
    object edtCodBarra: TEdit
      Left = 63
      Top = 53
      Width = 292
      Height = 63
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -35
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtCodBarraKeyPress
    end
  end
  object JvTransparentForm1: TJvTransparentForm
    Active = True
    Left = 144
    Top = 56
  end
end

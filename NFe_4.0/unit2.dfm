object frSelecionarCertificado: TfrSelecionarCertificado
  Left = 355
  Top = 229
  Width = 674
  Height = 276
  ActiveControl = StringGrid1
  Caption = 'frSelecionarCertificado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 666
    Height = 200
    Align = alClient
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 200
    Width = 666
    Height = 45
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      666
      45)
    object BitBtn1: TBitBtn
      Left = 444
      Top = 5
      Width = 88
      Height = 30
      Anchors = [akTop, akRight]
      TabOrder = 0
      Kind = bkCancel
    end
    object BitBtn2: TBitBtn
      Left = 556
      Top = 5
      Width = 88
      Height = 30
      Anchors = [akTop, akRight]
      TabOrder = 1
      Kind = bkOK
    end
  end
end

object MainForm: TMainForm
  Left = 192
  Top = 107
  Caption = #1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '#1088#1077#1076#1072#1082#1090#1086#1088' "'#1054#1082#1088#1091#1078#1085#1086#1089#1090#1080' '#1080' '#1082#1074#1072#1076#1088#1072#1090#1099'"'
  ClientHeight = 223
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image: TImage
    Left = 16
    Top = 16
    Width = 313
    Height = 201
    OnMouseDown = ImageMouseDown
  end
  object rLabel: TLabel
    Left = 344
    Top = 8
    Width = 36
    Height = 13
    Caption = #1056#1072#1076#1080#1091#1089
  end
  object ColorButton: TButton
    Left = 336
    Top = 64
    Width = 75
    Height = 25
    Caption = #1062#1074#1077#1090
    TabOrder = 0
    OnClick = ColorButtonClick
  end
  object ExitButton: TButton
    Left = 336
    Top = 160
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = ExitButtonClick
  end
  object RadioGroup: TRadioGroup
    Left = 336
    Top = 96
    Width = 73
    Height = 57
    Caption = #1042#1080#1076
    ItemIndex = 0
    Items.Strings = (
      #1050#1088#1091#1075
      #1050#1074#1072#1076#1088#1072#1090)
    TabOrder = 2
  end
  object rEdit: TEdit
    Left = 336
    Top = 24
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object UpDown: TUpDown
    Left = 393
    Top = 24
    Width = 15
    Height = 21
    Associate = rEdit
    TabOrder = 4
    OnClick = UpDownClick
  end
  object ColorDialog: TColorDialog
    Left = 360
    Top = 200
  end
end

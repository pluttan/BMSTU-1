object MainForm: TMainForm
  Left = 192
  Top = 107
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074' '#1092#1091#1085#1082#1094#1080#1081
  ClientHeight = 334
  ClientWidth = 504
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
    Left = 8
    Top = 8
    Width = 401
    Height = 305
  end
  object BeginButton: TButton
    Left = 424
    Top = 40
    Width = 75
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    TabOrder = 0
    OnClick = BeginButtonClick
  end
  object ExitButton: TButton
    Left = 424
    Top = 120
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = ExitButtonClick
  end
end

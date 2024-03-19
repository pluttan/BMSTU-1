object MainForm: TMainForm
  Left = 192
  Top = 107
  Caption = #1055#1086#1083#1080#1084#1086#1088#1092#1080#1079#1084
  ClientHeight = 274
  ClientWidth = 443
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
    Left = 24
    Top = 16
    Width = 401
    Height = 201
  end
  object BeginButton: TButton
    Left = 96
    Top = 232
    Width = 75
    Height = 25
    Caption = #1053#1072#1095#1072#1090#1100
    TabOrder = 0
    OnClick = BeginButtonClick
  end
  object EndButton: TButton
    Left = 264
    Top = 232
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100
    TabOrder = 1
    OnClick = EndButtonClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 448
    Top = 288
  end
end

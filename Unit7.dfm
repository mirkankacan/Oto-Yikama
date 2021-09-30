object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 116
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 54
    Height = 13
    Caption = 'Kullan'#305'c'#305' ad'#305
  end
  object Label2: TLabel
    Left = 32
    Top = 43
    Width = 22
    Height = 13
    Caption = #350'ifre'
  end
  object Edit1: TEdit
    Left = 88
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 88
    Top = 67
    Width = 121
    Height = 25
    Caption = 'Giri'#351' yap'
    TabOrder = 2
    OnClick = Button1Click
  end
end

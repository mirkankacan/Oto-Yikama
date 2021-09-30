object Form1: TForm1
  Left = 384
  Top = 222
  Caption = 'Form1'
  ClientHeight = 119
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\kacan\Desk' +
      'top\oto.mdb;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 48
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 32
    object Kaytyap1: TMenuItem
      Caption = 'Kay'#305't yap'
      OnClick = Kaytyap1Click
    end
    object Kaytsil1: TMenuItem
      Caption = 'Kay'#305't sil'
      OnClick = Kaytsil1Click
    end
    object ModelID1: TMenuItem
      Caption = 'Model/ID'
      OnClick = ModelID1Click
    end
    object Yazdr1: TMenuItem
      Caption = 'Yazd'#305'r'
      OnClick = Yazdr1Click
    end
    object Giriyap1: TMenuItem
      Caption = 'Giri'#351' yap'
      OnClick = Giriyap1Click
    end
  end
end

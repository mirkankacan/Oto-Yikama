object Form4: TForm4
  Left = 244
  Top = 219
  Caption = 'Form4'
  ClientHeight = 432
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 8
    Top = 8
    Width = 761
    Height = 416
    Gradient.StartColor = clRed
    Gradient.Visible = True
    Title.Text.Strings = (
      'Oto y'#305'kama')
    Chart3DPercent = 25
    View3DOptions.Zoom = 102
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      ColorEachPoint = True
      ConePercent = 44
      DataSource = ADOQuery1
      XLabelsSource = 'model'
      BarStyle = bsCone
      Sides = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'id'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from y'#305'kama')
    Left = 712
    Top = 16
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1ad: TWideStringField
      FieldName = 'ad'
      Size = 255
    end
    object ADOQuery1soyad: TWideStringField
      FieldName = 'soyad'
      Size = 255
    end
    object ADOQuery1email: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object ADOQuery1telefon: TWideStringField
      FieldName = 'telefon'
      Size = 255
    end
    object ADOQuery1marka: TWideStringField
      FieldName = 'marka'
      Size = 255
    end
    object ADOQuery1model: TWideStringField
      FieldName = 'model'
      Size = 255
    end
  end
end

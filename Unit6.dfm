object Form6: TForm6
  Left = 327
  Top = 236
  Caption = 'Form6'
  ClientHeight = 377
  ClientWidth = 673
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
  object Label1: TLabel
    Left = 32
    Top = 301
    Width = 221
    Height = 13
    Caption = 'Telefon numaras'#305' ile arama yapmak i'#231'in yaz'#305'n'#305'z'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 609
    Height = 282
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Expr1000'
        Title.Caption = 'Ad Soyad'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'E-Mail'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bilgiler'
        Title.Caption = 'Telefon'
        Width = 150
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 623
    Top = 8
    Width = 42
    Height = 282
    Caption = 'Yazd'#305'r'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select ad+'#39' '#39'+soyad,email,telefon as bilgiler from y'#305'kama where ' +
        'telefon  like '#39'%'#39'+:x +'#39'%'#39' ')
    Left = 496
    Top = 312
    object ADOQuery1Expr1000: TWideStringField
      FieldName = 'Expr1000'
      ReadOnly = True
      Size = 255
    end
    object ADOQuery1email: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object ADOQuery1bilgiler: TWideStringField
      FieldName = 'bilgiler'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 552
    Top = 312
  end
end

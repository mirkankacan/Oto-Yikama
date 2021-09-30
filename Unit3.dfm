object Form3: TForm3
  Left = 212
  Top = 165
  Caption = 'Form3'
  ClientHeight = 432
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 519
    Top = 29
    Width = 82
    Height = 13
    Caption = 'Telefon ile arama'
  end
  object Label4: TLabel
    Left = 256
    Top = 29
    Width = 74
    Height = 13
    Caption = 'E-Mail ile arama'
  end
  object Label2: TLabel
    Left = 8
    Top = 29
    Width = 59
    Height = 13
    Caption = 'Ad ile arama'
  end
  object Label1: TLabel
    Left = 304
    Top = 8
    Width = 144
    Height = 13
    Caption = 'Arama yapmak i'#231'in giri'#351' yap'#305'n!'
    Color = clLime
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 73
    Top = 29
    Width = 153
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Edit4: TEdit
    Left = 607
    Top = 29
    Width = 153
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    OnChange = Edit4Change
  end
  object Edit3: TEdit
    Left = 336
    Top = 29
    Width = 153
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit3Change
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 752
    Height = 313
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ad'
        Title.Caption = 'Ad'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'soyad'
        Title.Caption = 'Soyad'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'E-Mail'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefon'
        Title.Caption = 'Telefon'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marka'
        Title.Caption = 'Marka'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = 'Model'
        Width = 73
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 375
    Width = 737
    Height = 49
    DataSource = DataSource1
    VisibleButtons = [nbDelete]
    TabOrder = 4
    BeforeAction = DBNavigator1BeforeAction
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
      'select * from y'#305'kama where ad  like '#39'%'#39'+:x +'#39'%'#39' ')
    Left = 608
    Top = 296
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'y'#305'kama'
    Left = 528
    Top = 296
    object ADOTable1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable1ad: TWideStringField
      FieldName = 'ad'
      Size = 255
    end
    object ADOTable1soyad: TWideStringField
      FieldName = 'soyad'
      Size = 255
    end
    object ADOTable1email: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object ADOTable1telefon: TWideStringField
      FieldName = 'telefon'
      Size = 255
    end
    object ADOTable1marka: TWideStringField
      FieldName = 'marka'
      Size = 255
    end
    object ADOTable1model: TWideStringField
      FieldName = 'model'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 520
    Top = 352
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 608
    Top = 368
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'z'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from y'#305'kama where email like '#39'%'#39'+:z +'#39'%'#39' '
      '')
    Left = 672
    Top = 296
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'f'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from y'#305'kama where telefon  like '#39'%'#39'+:f +'#39'%'#39' '
      '')
    Left = 736
    Top = 296
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery2
    Left = 664
    Top = 368
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery3
    Left = 736
    Top = 368
  end
end

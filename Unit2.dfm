object Form2: TForm2
  Left = 413
  Top = 148
  Caption = 'Form2'
  ClientHeight = 353
  ClientWidth = 174
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
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 13
    Height = 13
    Caption = 'Ad'
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 30
    Height = 13
    Caption = 'Soyad'
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 28
    Height = 13
    Caption = 'E-Mail'
  end
  object Label5: TLabel
    Left = 8
    Top = 128
    Width = 36
    Height = 13
    Caption = 'Telefon'
  end
  object Label6: TLabel
    Left = 8
    Top = 174
    Width = 29
    Height = 13
    Caption = 'Marka'
  end
  object Label7: TLabel
    Left = 8
    Top = 220
    Width = 28
    Height = 13
    Caption = 'Model'
  end
  object Button1: TButton
    Left = 8
    Top = 278
    Width = 153
    Height = 59
    Caption = 'Arac'#305' kaydet'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 153
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 8
    Top = 67
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 8
    Top = 107
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'Edit1'
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 8
    Top = 147
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'Edit1'
    OnChange = Edit4Change
  end
  object Edit5: TEdit
    Left = 8
    Top = 193
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'Edit1'
    OnChange = Edit5Change
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 239
    Width = 66
    Height = 17
    Caption = 'S'#305'f'#305'r'
    TabOrder = 6
  end
  object RadioButton2: TRadioButton
    Left = 88
    Top = 239
    Width = 73
    Height = 17
    Caption = #304'kinci el'
    TabOrder = 7
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'y'#305'kama'
    Left = 32
    Top = 304
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
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'a'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'b'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'c'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'e'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
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
      
        'insert into y'#305'kama (ad,soyad,email,telefon,marka,model) values(:' +
        'a,:b,:c,:d,:e,:f)')
    Left = 80
    Top = 304
  end
end

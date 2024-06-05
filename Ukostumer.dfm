object Form6: TForm6
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'x`'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 32
    Width = 31
    Height = 23
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 232
    Top = 440
    Width = 124
    Height = 19
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 240
    Top = 64
    Width = 50
    Height = 23
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 96
    Width = 41
    Height = 23
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 240
    Top = 128
    Width = 53
    Height = 23
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 232
    Top = 160
    Width = 68
    Height = 23
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 192
    Top = 224
    Width = 545
    Height = 185
    DataSource = DataModule3.Dskustomer
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 304
    Top = 32
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object Binsert: TButton
    Left = 304
    Top = 184
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 392
    Top = 184
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 3
  end
  object Bdelete: TButton
    Left = 480
    Top = 184
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 368
    Top = 432
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 536
    Top = 432
    Width = 65
    Height = 41
    Caption = 'CARI'
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 304
    Top = 64
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 304
    Top = 96
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 304
    Top = 128
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 304
    Top = 160
    Width = 257
    Height = 21
    TabOrder = 10
  end
end

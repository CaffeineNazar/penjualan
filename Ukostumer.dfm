object Form6: TForm6
  Left = 192
  Top = 125
  Width = 902
  Height = 582
  Caption = 'KOSTUMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 24
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
    Left = 208
    Top = 456
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
    Left = 192
    Top = 56
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
    Left = 192
    Top = 88
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
    Left = 192
    Top = 120
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
    Left = 192
    Top = 152
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
  object Label7: TLabel
    Left = 192
    Top = 184
    Width = 75
    Height = 23
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 432
    Top = 184
    Width = 75
    Height = 23
    Caption = 'DISKON:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 512
    Top = 192
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 192
    Top = 264
    Width = 425
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
    Left = 264
    Top = 24
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object Binsert: TButton
    Left = 280
    Top = 224
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 368
    Top = 224
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 456
    Top = 224
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = BdeleteClick
  end
  object Edit2: TEdit
    Left = 344
    Top = 456
    Width = 257
    Height = 21
    TabOrder = 5
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 264
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 264
    Top = 88
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 264
    Top = 120
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object Edit6: TEdit
    Left = 264
    Top = 152
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object Bnew: TButton
    Left = 192
    Top = 226
    Width = 75
    Height = 33
    Caption = 'NEW'
    TabOrder = 10
    OnClick = BnewClick
  end
  object Bcancel: TButton
    Left = 544
    Top = 226
    Width = 75
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 11
    OnClick = BcancelClick
  end
  object Blaporan: TButton
    Left = 192
    Top = 482
    Width = 425
    Height = 33
    Caption = 'CETAK'
    TabOrder = 12
    OnClick = BlaporanClick
  end
  object cbb1: TComboBox
    Left = 272
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = '--PILIH--'
    OnChange = cbb1Change
    Items.Strings = (
      'yes'
      'no')
  end
end

object Form7: TForm7
  Left = 165
  Top = 153
  Width = 977
  Height = 499
  VertScrollBar.Position = 139
  Caption = 'USER'
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
    Left = 280
    Top = -123
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
  object Label3: TLabel
    Left = 280
    Top = 37
    Width = 45
    Height = 23
    Caption = 'ROLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 280
    Top = -83
    Width = 96
    Height = 23
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 280
    Top = -3
    Width = 98
    Height = 23
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 280
    Top = -43
    Width = 90
    Height = 23
    Caption = 'FULLNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 280
    Top = 117
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
  object Label8: TLabel
    Left = 280
    Top = 77
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
  object Label9: TLabel
    Left = 280
    Top = 197
    Width = 86
    Height = 23
    Caption = 'IS ACTIVE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 280
    Top = 157
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
  object Label2: TLabel
    Left = 280
    Top = 437
    Width = 197
    Height = 23
    Caption = 'MASUKKAN USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 280
    Top = 269
    Width = 433
    Height = 153
    DataSource = DataModule3.DsUser
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 432
    Top = -123
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 432
    Top = -83
    Width = 281
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 432
    Top = -43
    Width = 281
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 432
    Top = -3
    Width = 281
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 432
    Top = 37
    Width = 281
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 432
    Top = 117
    Width = 281
    Height = 21
    TabOrder = 6
  end
  object Edit7: TEdit
    Left = 432
    Top = 77
    Width = 281
    Height = 21
    TabOrder = 7
  end
  object Edit8: TEdit
    Left = 432
    Top = 157
    Width = 281
    Height = 21
    TabOrder = 8
  end
  object Edit9: TEdit
    Left = 432
    Top = 197
    Width = 281
    Height = 21
    TabOrder = 9
  end
  object Edit11: TEdit
    Left = 488
    Top = 437
    Width = 225
    Height = 21
    TabOrder = 10
    OnChange = Edit11Change
  end
  object Binsert: TButton
    Left = 368
    Top = 230
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 11
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 456
    Top = 230
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 12
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 544
    Top = 230
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 13
    OnClick = BdeleteClick
  end
  object Bnew: TButton
    Left = 280
    Top = 231
    Width = 75
    Height = 33
    Caption = 'NEW'
    TabOrder = 14
    OnClick = BnewClick
  end
  object Bcancel: TButton
    Left = 632
    Top = 231
    Width = 75
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 15
  end
end

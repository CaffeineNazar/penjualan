object Form5: TForm5
  Left = 212
  Top = 74
  Width = 1006
  Height = 533
  VertScrollBar.Position = 95
  Caption = 'SUPPLIER'
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
    Left = 376
    Top = -63
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
    Left = 376
    Top = 473
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
    Left = 376
    Top = 1
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
    Left = 376
    Top = 33
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
    Left = 376
    Top = 65
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
    Left = 376
    Top = 97
    Width = 115
    Height = 23
    Caption = 'PERUSAHAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 376
    Top = 129
    Width = 106
    Height = 23
    Caption = 'NAMA_BANK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 376
    Top = 161
    Width = 163
    Height = 23
    Caption = 'NAMA_AKUN_BANK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 376
    Top = -31
    Width = 50
    Height = 23
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = -112
    Top = 25
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
  object Label12: TLabel
    Left = 376
    Top = 193
    Width = 139
    Height = 23
    Caption = 'NO_AKUN_BANK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 297
    Width = 433
    Height = 161
    DataSource = DataModule3.DsSupplier
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 552
    Top = -63
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object Binsert: TButton
    Left = 464
    Top = 249
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 552
    Top = 249
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 640
    Top = 249
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = BdeleteClick
  end
  object Edit2: TEdit
    Left = 560
    Top = 473
    Width = 241
    Height = 21
    TabOrder = 5
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 552
    Top = -31
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 552
    Top = 1
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 552
    Top = 33
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object Edit6: TEdit
    Left = 552
    Top = 65
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object Edit7: TEdit
    Left = 552
    Top = 97
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object Edit8: TEdit
    Left = 552
    Top = 129
    Width = 257
    Height = 21
    TabOrder = 11
  end
  object Edit9: TEdit
    Left = 552
    Top = 161
    Width = 257
    Height = 21
    TabOrder = 12
  end
  object Edit10: TEdit
    Left = 552
    Top = 193
    Width = 257
    Height = 21
    TabOrder = 13
  end
  object Bnew: TButton
    Left = 376
    Top = 250
    Width = 75
    Height = 33
    Caption = 'NEW'
    TabOrder = 14
    OnClick = BnewClick
  end
  object Bcancel: TButton
    Left = 728
    Top = 250
    Width = 75
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 15
  end
end

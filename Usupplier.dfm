object Form5: TForm5
  Left = 242
  Top = 113
  Width = 870
  Height = 450
  Caption = 'SUPPLIER'
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
    Left = 384
    Top = 40
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
    Left = 464
    Top = 592
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
    Left = 384
    Top = 104
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
  object Label4: TLabel
    Left = 384
    Top = 136
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
    Left = 384
    Top = 168
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
    Left = 384
    Top = 200
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
    Left = 384
    Top = 232
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
    Left = 384
    Top = 264
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
    Left = 384
    Top = 296
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
    Left = 384
    Top = 72
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
    Top = 120
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
    Left = 384
    Top = 328
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
    Left = 384
    Top = 400
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
    Left = 560
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object Binsert: TButton
    Left = 528
    Top = 360
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 616
    Top = 360
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 704
    Top = 360
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = BdeleteClick
  end
  object Edit2: TEdit
    Left = 600
    Top = 584
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 752
    Top = 584
    Width = 65
    Height = 41
    Caption = 'CARI'
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 560
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 560
    Top = 104
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 560
    Top = 136
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 560
    Top = 168
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object Edit7: TEdit
    Left = 560
    Top = 200
    Width = 257
    Height = 21
    TabOrder = 11
  end
  object Edit8: TEdit
    Left = 560
    Top = 232
    Width = 257
    Height = 21
    TabOrder = 12
  end
  object Edit9: TEdit
    Left = 560
    Top = 264
    Width = 257
    Height = 21
    TabOrder = 13
  end
  object Edit10: TEdit
    Left = 560
    Top = 296
    Width = 257
    Height = 21
    TabOrder = 14
  end
  object Edit11: TEdit
    Left = 560
    Top = 328
    Width = 257
    Height = 21
    TabOrder = 15
  end
end

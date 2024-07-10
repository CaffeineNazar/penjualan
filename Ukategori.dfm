object Form3: TForm3
  Left = 216
  Top = 165
  Width = 810
  Height = 419
  Caption = 'KATEGORI'
  Color = clActiveCaption
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
    Left = 240
    Top = 48
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
  object Label2: TLabel
    Left = 240
    Top = 320
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
  object DBGrid1: TDBGrid
    Left = 240
    Top = 136
    Width = 417
    Height = 161
    DataSource = DataModule3.dsKategori
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 304
    Top = 48
    Width = 353
    Height = 21
    TabOrder = 1
  end
  object Binsert: TButton
    Left = 320
    Top = 88
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 408
    Top = 88
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 496
    Top = 88
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = BdeleteClick
  end
  object Edit2: TEdit
    Left = 376
    Top = 320
    Width = 281
    Height = 21
    TabOrder = 5
    OnChange = Edit2Change
  end
  object Bnew: TButton
    Left = 232
    Top = 89
    Width = 75
    Height = 33
    Caption = 'NEW'
    TabOrder = 6
    OnClick = BnewClick
  end
  object Bcancel: TButton
    Left = 584
    Top = 89
    Width = 75
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 7
  end
end

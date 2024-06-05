object Form5: TForm5
  Left = 192
  Top = 125
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
    Left = 240
    Top = 40
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
    Top = 328
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
    Width = 345
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
    Left = 304
    Top = 32
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object Binsert: TButton
    Left = 304
    Top = 88
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 392
    Top = 88
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 480
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
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 528
    Top = 320
    Width = 65
    Height = 41
    Caption = 'CARI'
    TabOrder = 6
  end
end

object Form4: TForm4
  Left = 168
  Top = 157
  Width = 870
  Height = 450
  Caption = 'SATUAN'
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
    Left = 208
    Top = 32
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
  object Label3: TLabel
    Left = 208
    Top = 64
    Width = 93
    Height = 23
    Caption = 'DESKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 304
    Top = 32
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Binsert: TButton
    Left = 304
    Top = 96
    Width = 75
    Height = 33
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = BinsertClick
  end
  object Bupdate: TButton
    Left = 392
    Top = 96
    Width = 75
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = BupdateClick
  end
  object Bdelete: TButton
    Left = 480
    Top = 96
    Width = 75
    Height = 33
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = BdeleteClick
  end
  object Edit2: TEdit
    Left = 376
    Top = 320
    Width = 137
    Height = 21
    TabOrder = 4
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 304
    Top = 64
    Width = 257
    Height = 21
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 136
    Width = 425
    Height = 145
    DataSource = DataModule3.DsSatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Bnew: TButton
    Left = 216
    Top = 97
    Width = 75
    Height = 33
    Caption = 'NEW'
    TabOrder = 7
    OnClick = BnewClick
  end
  object Bcancel: TButton
    Left = 568
    Top = 97
    Width = 75
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 8
    OnClick = BcancelClick
  end
end

unit dataModul;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule3 = class(TDataModule)
    ZKategori: TZQuery;
    dsKategori: TDataSource;
    DsSatuan: TDataSource;
    DsSupplier: TDataSource;
    Dskustomer: TDataSource;
    Zsatuan: TZQuery;
    ZSupplier: TZQuery;
    ZKustomer: TZQuery;
    Zuser: TZQuery;
    DsUser: TDataSource;
    ZConnection1: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{$R *.dfm}

end.

unit USatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Binsert: TButton;
    Bupdate: TButton;
    Bdelete: TButton;
    Edit2: TEdit;
    Button4: TButton;
    procedure BinsertClick(Sender: TObject);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a: string;

implementation
uses Unit2, dataModul;

{$R *.dfm}

procedure TForm4.BinsertClick(Sender: TObject);
begin
DataModule3.Zkategori.SQL.Clear;
DataModule3.Zkategori.SQL.Add('insert into satuan values(null,"'+Edit1.text+'")');
DataModule3.Zkategori.ExecSQL;

DataModule3.Zkategori.SQL.Clear;
DataModule3.Zkategori.SQL.Add('select * from satuan');
DataModule3.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm4.BupdateClick(Sender: TObject);
begin
DataModule3.ZKategori.SQL.Clear;
DataModule3.ZKategori.SQL.Add('update satuan set name = "'+Edit1.Text+'" where id = "'+a+'"');
DataModule3.ZKategori.ExecSQL;

DataModule3.ZKategori.SQL.Clear;
DataModule3.ZKategori.SQL.Add('select * from satuan');
DataModule3.ZKategori.Open;
ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm4.BdeleteClick(Sender: TObject);
begin
with DataModule3.ZKategori do
begin
  SQL.Clear;
  SQL.Add('delete from satuan where id = "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
end;
ShowMessage('Data Berhasil Di delete');
end;

end.

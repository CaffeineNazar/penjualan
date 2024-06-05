unit Ukategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Binsert: TButton;
    Bupdate: TButton;
    Bdelete: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    procedure BinsertClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation
uses
  Unit2, dataModul;

{$R *.dfm}

procedure TForm3.BinsertClick(Sender: TObject);
begin
DataModule3.Zkategori.SQL.Clear;
DataModule3.Zkategori.SQL.Add('insert into kategori values(null,"'+edit1.text+'")');
DataModule3.Zkategori.ExecSQL;

DataModule3.Zkategori.SQL.Clear;
DataModule3.Zkategori.SQL.Add('select * from kategori');
DataModule3.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZKategori.Fields[1].AsString;
a:= DataModule3.ZKategori.Fields[0].AsString;
end;

procedure TForm3.BupdateClick(Sender: TObject);
begin
DataModule3.ZKategori.SQL.Clear;
DataModule3.ZKategori.SQL.Add('update kategori set name = "'+Edit1.Text+'" where id = "'+a+'"');
DataModule3.ZKategori.ExecSQL;

DataModule3.ZKategori.SQL.Clear;
DataModule3.ZKategori.SQL.Add('select * from kategori');
DataModule3.ZKategori.Open;
ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm3.BdeleteClick(Sender: TObject);
begin
with DataModule3.ZKategori do
begin
  SQL.Clear;
  SQL.Add('delete from kategori where id = "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
end;
ShowMessage('Data Berhasil Di delete');

end;
end.

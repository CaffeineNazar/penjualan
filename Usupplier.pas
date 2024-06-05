unit Usupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
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
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a : string;

implementation

uses Unit2, dataModul;


{$R *.dfm}

procedure TForm5.BinsertClick(Sender: TObject);
begin
DataModule3.ZSupplier.SQL.Clear;
DataModule3.ZSupplier.SQL.Add('insert into supplier values(null, "'+Edit1.Text+'")');
DataModule3.Zsupplier.ExecSQL;

DataModule3.Zsupplier.SQL.Clear;
DataModule3.Zsupplier.SQL.Add('select * from supplier');
DataModule3.Zsupplier.Open;
ShowMessage('Data Berhasil Disimpan')
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZKategori.Fields[1].AsString;
a:= DataModule3.ZKategori.Fields[0].AsString;
end;

procedure TForm5.BupdateClick(Sender: TObject);
begin
DataModule3.ZSupplier.SQL.Clear;
DataModule3.ZSupplier.SQL.Add('update supplier set name ="'+Edit1.Text+'" where id = "'+a+'"');
DataModule3.ZSupplier.ExecSQL;

DataModule3.ZSupplier.SQL.Clear;
DataModule3.ZSupplier.SQL.Add('select * from supplier');
DataModule3.ZSupplier.Open;
ShowMessage('Data Berhasil Diupdate')
end;

procedure TForm5.BdeleteClick(Sender: TObject);
begin
with DataModule3.ZSupplier do
begin
  SQL.Clear;
  SQL.Add('delete from supplier where id = "'+a+'"');
  Open;
end;
ShowMessage('Data Berhasil Dihapus');

end;

end.

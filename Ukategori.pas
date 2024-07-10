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
    Bnew: TButton;
    Bcancel: TButton;
    procedure BinsertClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Button4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BnewClick(Sender: TObject);
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
if Edit1.Text = '' then
begin
  ShowMessage('Nama Kategori Tidak Boleh Kosong!');
end else
if DataModule3.ZKategori.Locate('name',Edit1.Text,[]) then
begin
  ShowMessage('Nama Kategori' +Edit1.Text+' Sudah Ada Didalam Sistem');
  end else
  begin
    with DataModule3.ZKategori do
    begin
      SQL.Clear;
      SQL.Add('insert into kategori values(null, "'+Edit1.Text+'")');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from kategori');
      Open;
    end;
    ShowMessage('Data berhasil Disimpan');
  end;
  posisiawal;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZKategori.Fields[1].AsString;
a:= DataModule3.ZKategori.Fields[0].AsString;

Edit1.Enabled:=True;
Bnew.Enabled:=False;
Binsert.Enabled:=False;
Bupdate.Enabled:=True;
Bdelete.Enabled:=True;
Bcancel.Enabled:=False;
end;

procedure TForm3.BupdateClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Nama Kategori Tidak Boleh Kosong!');
  end else
  if Edit1.Text = DataModule3.ZKategori.Fields[1].AsString then
  begin
    ShowMessage('Nama Kategori '+Edit1.Text+'Tidak Ada Perubahan');
  end else
  begin
    with DataModule3.ZKategori do
    begin
      SQL.Clear;
      SQL.Add('update kategori set name = "'+Edit1.Text+'" where id="'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from kategori');
      Open;
    end;
    ShowMessage('Data berhasil Diubah');
  end;
  posisiawal;
end;

procedure TForm3.BdeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
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
    ShowMessage('Data berhasil Didelete!');
  end else
  begin                                    
    ShowMessage('Data Batal Dihapus!');
  end;
  posisiawal;
end;

procedure TForm3.posisiawal;
begin
Bnew.Enabled:= True;
Binsert.Enabled:= false;
Bupdate.Enabled:= false;
Bdelete.Enabled:= false;
Bcancel.Enabled:= false;
Edit1.clear;
Edit1.Enabled:= False;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
with DataModule3.Zkategori do
begin
SQL.Clear;
SQL.Add('select * from kategori where name = "'+Edit1.Text+'"');
Open;
end;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
with DataModule3.Zkategori do
begin
SQL.Clear;
SQL.Add('select * from kategori where name like "%'+Edit2.Text+'%"');
Open;
end;
end;

procedure TForm3.bersih;
begin
Edit1.Clear;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
    posisiawal;
end;

procedure TForm3.BnewClick(Sender: TObject);
begin
bersih;
Bnew.Enabled:= false;
Binsert.Enabled:= True;
Bupdate.Enabled:= False;
Bdelete.Enabled:= False;
Bcancel.Enabled:= True;
Edit1.Enabled:= True;
end;

end.

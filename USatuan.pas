unit USatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Binsert: TButton;
    Bupdate: TButton;
    Bdelete: TButton;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    Bnew: TButton;
    Bcancel: TButton;
    procedure BinsertClick(Sender: TObject);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BnewClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BcancelClick(Sender: TObject);
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
  if Edit1.Text = '' then
  begin
  ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if DataModule3.Zsatuan.Locate('name',Edit1.Text,[]) then
  begin
  ShowMessage('Nama Satuan' +Edit1.Text+' Sudah Ada Didalam Sistem');
  end else
  begin
    with DataModule3.Zsatuan do
    begin
    SQL.Clear;
    SQL.Add('insert into satuan values(null,"'+Edit1.text+'","'+Edit3.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
    end;
    ShowMessage('Data Berhasil Disimpan!');
  end;
  posisiawal;
end;

procedure TForm4.BupdateClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if Edit1.Text = DataModule3.Zsatuan.Fields[1].AsString then
  begin
    ShowMessage('Nama satuan '+Edit1.Text+'Tidak Ada Perubahan');
  end else
  begin
    with DataModule3.Zsatuan do
    begin
    SQL.Clear;
    SQL.Add('update satuan set name = "'+Edit1.Text+'", diskripsi = "'+Edit3.Text+'" where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
    end;
    ShowMessage('Data Berhasil Diupdate');
  end

end;

procedure TForm4.BdeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
    with DataModule3.Zsatuan do
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
  posisiawal;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=DataModule3.Zsatuan.Fields[1].AsString;
Edit3.Text:=DataModule3.Zsatuan.Fields[2].AsString;
a:= DataModule3.Zsatuan.Fields[0].AsString;

Edit1.Enabled:=True;
Edit3.Enabled:=True;
Bnew.Enabled:=False;
Binsert.Enabled:=False;
Bupdate.Enabled:=True;
Bdelete.Enabled:=True;
Bcancel.Enabled:=true;

a:=DataModule3.Zsatuan.Fields[0].AsString;
end;


procedure TForm4.BnewClick(Sender: TObject);
begin
bersih;
Bnew.Enabled:= false;
Binsert.Enabled:= True;
Bupdate.Enabled:= False;
Bdelete.Enabled:= False;
Bcancel.Enabled:= True;
Edit1.Enabled:= True;
Edit3.Enabled:= True;
end;

procedure TForm4.posisiawal;
begin
Bnew.Enabled:= True;
Binsert.Enabled:= false;
Bupdate.Enabled:= false;
Bdelete.Enabled:= false;
Bcancel.Enabled:= false;
Edit1.Clear;
Edit3.Clear;
Edit1.Enabled:= False;
Edit3.Enabled:= False;
end;

procedure TForm4.bersih;
begin
Edit1.Clear;
Edit3.Clear;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin
with DataModule3.Zsatuan do
begin
SQL.Clear;
SQL.Add('select * from satuan where name like "%'+Edit2.Text+'%"');
Open;
end;

end;

procedure TForm4.BcancelClick(Sender: TObject);
begin
bersih;
Bnew.Enabled:= True;
Binsert.Enabled:=false;
Bupdate.Enabled:=false;
Bdelete.Enabled:=false;
Bcancel.Enabled:=false;
end;

end.

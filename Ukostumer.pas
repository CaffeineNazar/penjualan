unit Ukostumer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Binsert: TButton;
    Bupdate: TButton;
    Bdelete: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Bnew: TButton;
    Bcancel: TButton;
    Blaporan: TButton;
    cbb1: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BinsertClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure BnewClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BlaporanClick(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure BcancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a : string;

implementation

uses
  dataModul, Ureport;

{$R *.dfm}

procedure TForm6.BinsertClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
  ShowMessage('Nama kustomer Tidak Boleh Kosong!');
  end else
  if DataModule3.ZKustomer.Locate('name',Edit1.Text,[]) then
  begin
  ShowMessage('Nama kustomer' +Edit1.Text+' Sudah Ada Didalam Sistem');
  end else
  begin
    with DataModule3.ZKustomer do
    begin
    SQL.Clear;
    SQL.Add('insert into kustomer values(null, "'+Edit1.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+cbb1.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;
    end;
  ShowMessage('Data Berhasil Disimpan')
  end;
  posisiawal;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZKustomer.Fields[1].AsString;
Edit3.Text:= DataModule3.ZKustomer.Fields[2].AsString;
Edit4.Text:= DataModule3.ZKustomer.Fields[3].AsString;
Edit5.Text:= DataModule3.ZKustomer.Fields[4].AsString;
Edit6.Text:= DataModule3.ZKustomer.Fields[5].AsString;
a:= DataModule3.ZKustomer.Fields[0].AsString;

Edit1.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;

Bnew.Enabled:=False;
Binsert.Enabled:=False;
Bupdate.Enabled:=True;
Bdelete.Enabled:=True;
Bcancel.Enabled:=True;
end;

procedure TForm6.BupdateClick(Sender: TObject);
begin
  if Edit3.Text = '' then
  begin
    ShowMessage('Nama kustomer Tidak Boleh Kosong!');
  end else
  if Edit3.Text = DataModule3.ZKustomer.Fields[2].AsString then
  begin
    ShowMessage('Nama kustomer '+Edit3.Text+'Tidak Ada Perubahan');
  end else
  begin
    with DataModule3.ZKustomer do
    begin
    SQL.Clear;
    SQL.Add('update kustomer set nik = "'+Edit1.Text+'", name = "'+Edit3.Text+'", telp = "'+Edit4.Text+'", email = "'+Edit5.Text+'", alamat = "'+Edit6.Text+'" where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;

    end;
    ShowMessage('Data Berhasil Diupdate')
  end;
  posisiawal;
end;

procedure TForm6.BdeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
    with DataModule3.ZKustomer do
    begin
    SQL.Clear;
    SQL.Add('delete from kustomer where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;
    end;
  ShowMessage('Data Berhasil Di delete');
  end;
end;

procedure TForm6.BnewClick(Sender: TObject);
begin
bersih;
Bnew.Enabled:= false;
Binsert.Enabled:= True;
Bupdate.Enabled:= False;
Bdelete.Enabled:= False;
Bcancel.Enabled:= True;
Edit1.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
end;

procedure TForm6.bersih;
begin
Edit1.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
end;

procedure TForm6.posisiawal;
begin
Bnew.Enabled:= True;
Binsert.Enabled:= false;
Bupdate.Enabled:= false;
Bdelete.Enabled:= false;
Bcancel.Enabled:= false;
Edit1.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit1.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
Edit5.Enabled:= False;
Edit6.Enabled:= False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.Edit2Change(Sender: TObject);
begin
with DataModule3.ZKustomer do
begin
SQL.Clear;
SQL.Add('select * from kustomer where name like "%'+Edit2.Text+'%"');
Open;
end;
end;

procedure TForm6.BlaporanClick(Sender: TObject);
begin
form8.frxReport1.ShowReport();
end;

procedure TForm6.cbb1Change(Sender: TObject);
begin
if cbb1.Text = 'yes' then
Label9.Caption := '10%'
else Label9.Caption := '5%';
end;

procedure TForm6.BcancelClick(Sender: TObject);
begin
bersih;
Bnew.Enabled:=True;
Binsert.Enabled:=false;
Bupdate.Enabled:=false;
Bdelete.Enabled:=false;
Bcancel.Enabled:=false;

Edit1.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
Edit5.Enabled:=false;
Edit6.Enabled:=false;
end;

end.

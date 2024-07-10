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
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Bnew: TButton;
    Bcancel: TButton;
    procedure BinsertClick(Sender: TObject);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BnewClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  if Edit1.Text = '' then
  begin
  ShowMessage('Nama supplier Tidak Boleh Kosong!');
  end else
  if DataModule3.ZSupplier.Locate('name',Edit1.Text,[]) then
  begin
  ShowMessage('Nama supplier' +Edit1.Text+' Sudah Ada Didalam Sistem');
  end else
  begin
    with DataModule3.ZSupplier do
    begin
    SQL.Clear;
    SQL.Add('insert into supplier values(null, "'+Edit1.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'","'+Edit10.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from supplier');
    Open;
    end;
  ShowMessage('Data Berhasil Disimpan')
  end;
  posisiawal;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZSupplier.Fields[1].AsString;
Edit3.Text:= DataModule3.ZSupplier.Fields[2].AsString;
Edit4.Text:= DataModule3.ZSupplier.Fields[3].AsString;
Edit5.Text:= DataModule3.ZSupplier.Fields[4].AsString;
Edit6.Text:= DataModule3.ZSupplier.Fields[5].AsString;
Edit7.Text:= DataModule3.ZSupplier.Fields[6].AsString;
Edit8.Text:= DataModule3.ZSupplier.Fields[7].AsString;
Edit9.Text:= DataModule3.ZSupplier.Fields[8].AsString;
Edit10.Text:= DataModule3.ZSupplier.Fields[9].AsString;
a:= DataModule3.ZSupplier.Fields[0].AsString;

Edit1.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;
Edit8.Enabled:=True;
Edit9.Enabled:=True;
Edit10.Enabled:=True;
Bnew.Enabled:=False;
Binsert.Enabled:=False;
Bupdate.Enabled:=True;
Bdelete.Enabled:=True;
Bcancel.Enabled:=False;

end;

procedure TForm5.BupdateClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Nama supplier Tidak Boleh Kosong!');
  end else
  if Edit1.Text = DataModule3.ZSupplier.Fields[1].AsString then
  begin
    ShowMessage('Nama supplier '+Edit1.Text+'Tidak Ada Perubahan');
  end else
  begin
    with DataModule3.ZSupplier do
    begin
    SQL.Clear;
    SQL.Add('update supplier set nik = "'+Edit1.Text+'" name = "'+Edit3.Text+'", telp = "'+Edit4.Text+'" email = "'+Edit5.Text+'" alamat = "'+Edit6.Text+'", perusahaan = "'+Edit7.Text+'", nama_bank = "'+Edit8.Text+'", nama_akun_bank = "'+Edit9.Text+'", no_akun_bank = "'+Edit10.Text+'" where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from supplier');
    Open;
    end;
    ShowMessage('Data Berhasil Diupdate')
  end;
    posisiawal;
end;

procedure TForm5.BdeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
    with DataModule3.ZSupplier do
    begin
    SQL.Clear;
    SQL.Add('delete from supplier where id = "'+a+'"');
    Open;
    end;
    ShowMessage('Data Berhasil Dihapus');
  end;
  posisiawal;
end;

procedure TForm5.BnewClick(Sender: TObject);
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
Edit7.Enabled:= True;
Edit8.Enabled:= True;
Edit9.Enabled:= True;
Edit10.Enabled:= True;
end;

procedure TForm5.posisiawal;
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
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit1.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
  Edit6.Enabled:= False;
  Edit7.Enabled:= False;
  Edit8.Enabled:= False;
  Edit9.Enabled:= False;
Edit10.Enabled:= False;
end;

procedure TForm5.bersih;
begin
Edit1.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
end;

procedure TForm5.Edit2Change(Sender: TObject);
begin
with DataModule3.ZSupplier do
begin
SQL.Clear;
SQL.Add('select * from supplier where name like "%'+Edit2.Text+'%"');
Open;
end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.

unit Uuser7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Binsert: TButton;
    Bupdate: TButton;
    Bdelete: TButton;
    Bnew: TButton;
    Bcancel: TButton;
    Label2: TLabel;
    procedure BnewClick(Sender: TObject);
    procedure BinsertClick(Sender: TObject);
    procedure BupdateClick(Sender: TObject);
    procedure BdeleteClick(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a: string;

implementation

uses
  dataModul;

{$R *.dfm}

procedure TForm7.BnewClick(Sender: TObject);
begin
bersih;
Bnew.Enabled:= false;
Binsert.Enabled:= True;
Bupdate.Enabled:= False;
Bdelete.Enabled:= False;
Bcancel.Enabled:= True;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
Edit8.Enabled:= True;
Edit9.Enabled:= True;
end;

procedure TForm7.BinsertClick(Sender: TObject);
begin
if Edit1.Text = '' then
  begin
  ShowMessage('Nama user Tidak Boleh Kosong!');
  end else
  if DataModule3.Zuser.Locate('name',Edit1.Text,[]) then
  begin
  ShowMessage('Nama user' +Edit1.Text+' Sudah Ada Didalam Sistem');
  end else
  begin
    with DataModule3.Zuser do
    begin
    SQL.Clear;
    SQL.Add('insert into user values(null, "'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from user');
    Open;
    end;
  ShowMessage('Data Berhasil Disimpan')
  end;
  posisiawal;
end;

procedure TForm7.BupdateClick(Sender: TObject);
begin
if Edit1.Text = '' then
  begin
    ShowMessage('username Tidak Boleh Kosong!');
  end else
  if Edit1.Text = DataModule3.Zuser.Fields[1].AsString then
  begin
    ShowMessage('username '+Edit1.Text+'Tidak Ada Perubahan');
  end else
  begin
    with DataModule3.Zuser do
    begin
    SQL.Clear;
    SQL.Add('update user set nik = "'+Edit1.Text+'" username = "'+Edit2.Text+'", fullname = "'+Edit3.Text+'" password = "'+Edit4.Text+'" role = "'+Edit5.Text+'", email = "'+Edit6.Text+'", telp = "'+Edit7.Text+'", alamat = "'+Edit8.Text+'" is_active = "'+Edit9.Text+'"where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from user');
    Open;
    end;
    ShowMessage('Data Berhasil Diupdate')
  end;
    posisiawal;
end;

procedure TForm7.BdeleteClick(Sender: TObject);
begin
if MessageDlg('Apakah Anda yakin menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
    with DataModule3.Zuser do
    begin
    SQL.Clear;
    SQL.Add('delete from user where id = "'+a+'"');
    Open;
    end;
    ShowMessage('Data Berhasil Dihapus');
  end;
  posisiawal;
end;

procedure TForm7.Edit11Change(Sender: TObject);
begin
with DataModule3.Zuser do
begin
SQL.Clear;
SQL.Add('select * from user where username like "%'+Edit2.Text+'%"');
Open;
end;
end;

procedure TForm7.bersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
end;

procedure TForm7.posisiawal;
begin
Bnew.Enabled:= True;
Binsert.Enabled:= false;
Bupdate.Enabled:= false;
Bdelete.Enabled:= false;
Bcancel.Enabled:= false;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
Edit5.Enabled:= False;
Edit6.Enabled:= False;
Edit7.Enabled:= False;
Edit8.Enabled:= False;
Edit9.Enabled:= False;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZSupplier.Fields[1].AsString;
Edit2.Text:= DataModule3.ZSupplier.Fields[2].AsString;
Edit3.Text:= DataModule3.ZSupplier.Fields[3].AsString;
Edit4.Text:= DataModule3.ZSupplier.Fields[4].AsString;
Edit5.Text:= DataModule3.ZSupplier.Fields[5].AsString;
Edit6.Text:= DataModule3.ZSupplier.Fields[6].AsString;
Edit7.Text:= DataModule3.ZSupplier.Fields[7].AsString;
Edit8.Text:= DataModule3.ZSupplier.Fields[8].AsString;
Edit9.Text:= DataModule3.ZSupplier.Fields[9].AsString;
a:= DataModule3.ZSupplier.Fields[0].AsString;

Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;
Edit8.Enabled:=True;
Edit9.Enabled:=True;
Bnew.Enabled:=False;
Binsert.Enabled:=False;
Bupdate.Enabled:=True;
Bdelete.Enabled:=True;
Bcancel.Enabled:=False;
end;

end.

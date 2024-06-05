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
    Button4: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    procedure BinsertClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
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
  dataModul;

{$R *.dfm}

procedure TForm6.BinsertClick(Sender: TObject);
begin
DataModule3.ZKustomer.SQL.Clear;
DataModule3.ZKustomer.SQL.Add('insert into kustomer values(null, "'+Edit1.Text+'", "'+Edit3.Text+'")');
DataModule3.ZKustomer.ExecSQL;

DataModule3.ZKustomer.SQL.Clear;
DataModule3.ZKustomer.SQL.Add('select * from kustomer');
DataModule3.Zkustomer.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule3.ZKategori.Fields[1].AsString;
a:= DataModule3.ZKategori.Fields[0].AsString;
end;

end.

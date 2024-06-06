unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Image1: TImage;
    StaticText1: TStaticText;
    Edit2: TEdit;
    StaticText2: TStaticText;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

  if edit1.text = 'admin' then
  begin
  Form1.MainMenu1.Items[1].Visible:=True;
  Form1.MainMenu1.Items[2].Visible:=False;
  Form1.MainMenu1.Items[3].Visible:=False;     
  end else if edit1.text = 'kasir' then
  begin
    Form1.MainMenu1.Items[1].Visible:=False;
    Form1.MainMenu1.Items[2].Visible:=True;
    Form1.MainMenu1.Items[3].Visible:=False;
  end else if edit1.text = 'pemilik' then
  begin
        Form1.MainMenu1.Items[1].Visible:=False;
        Form1.MainMenu1.Items[2].Visible:=False;
        Form1.MainMenu1.Items[3].Visible:=True;
  end else
  begin
  
  end;
  Form2.Close;
end;
end.


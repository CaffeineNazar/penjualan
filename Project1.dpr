program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Ukategori in 'Ukategori.pas' {Form3},
  dataModul in 'dataModul.pas' {DataModule3: TDataModule},
  USatuan in 'USatuan.pas' {Form4},
  Usupplier in 'Usupplier.pas' {Form5},
  Ukostumer in 'Ukostumer.pas' {Form6},
  Uuser7 in 'Uuser7.pas' {Form7},
  Ureport in 'Ureport.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.

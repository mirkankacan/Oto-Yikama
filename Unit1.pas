unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,Registry ,Vcl.Menus,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    MainMenu1: TMainMenu;
    Kaytyap1: TMenuItem;
    Kaytsil1: TMenuItem;
    ModelID1: TMenuItem;
    Yazdr1: TMenuItem;
    Giriyap1: TMenuItem;
    procedure Kaytyap1Click(Sender: TObject);
    procedure Kaytsil1Click(Sender: TObject);
    procedure ModelID1Click(Sender: TObject);
    procedure Yazdr1Click(Sender: TObject);
    procedure Giriyap1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2,unit3,unit4,unit5,unit6,Unit7;
{$R *.dfm}

procedure TForm1.Giriyap1Click(Sender: TObject);
begin
          Application.CreateForm(TForm7, Form7);
Form7.ShowModal;
Form7.Free;
end;

procedure TForm1.Kaytsil1Click(Sender: TObject);
begin
          Application.CreateForm(TForm6, Form6);
Form6.ShowModal;
Form6.Free;
end;

procedure TForm1.Kaytyap1Click(Sender: TObject);
begin
          Application.CreateForm(TForm2, Form2);
Form2.ShowModal;
Form2.Free;
end;

procedure TForm1.ModelID1Click(Sender: TObject);
begin
          Application.CreateForm(TForm4, Form4);
Form4.ShowModal;
Form4.Free;
end;

procedure TForm1.Yazdr1Click(Sender: TObject);
begin
          Application.CreateForm(TForm6, Form6);
Form6.ShowModal;
Form6.Free;
end;

end.

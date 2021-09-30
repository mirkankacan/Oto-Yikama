unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Data.Win.ADODB, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart;

type
  TForm4 = class(TForm)
    DBChart1: TDBChart;
    ADOQuery1: TADOQuery;
    ADOQuery1id: TAutoIncField;
    ADOQuery1ad: TWideStringField;
    ADOQuery1soyad: TWideStringField;
    ADOQuery1email: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1marka: TWideStringField;
    ADOQuery1model: TWideStringField;
    Series1: TBarSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;


implementation
           uses Unit7,Unit1;
{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
adoquery1.Close;
adoquery1.Open;
dbchart1.title.Text.Text:='OTO YIKAMA';
end;

end.

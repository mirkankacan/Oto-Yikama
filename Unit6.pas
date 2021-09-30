unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    DataSource1: TDataSource;
    ADOQuery1Expr1000: TWideStringField;
    ADOQuery1email: TWideStringField;
    ADOQuery1bilgiler: TWideStringField;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
          uses Unit1, Unit5;
{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form5.QuickRep1.Preview;
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin
adoquery1.Close;
adoquery1.Parameters[0].Value:=Edit1.Text;
adoquery1.Open;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
edit1.Text:='';
end;

end.

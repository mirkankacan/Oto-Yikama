unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADOTable1id: TAutoIncField;
    ADOTable1ad: TWideStringField;
    ADOTable1soyad: TWideStringField;
    ADOTable1email: TWideStringField;
    ADOTable1telefon: TWideStringField;
    ADOTable1marka: TWideStringField;
    ADOTable1model: TWideStringField;
    Edit4: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label1: TLabel;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
       uses Unit7,Unit1;
{$R *.dfm}

procedure TForm3.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
if button=nbdelete then
begin
if  messagedlg('Silmek istediğinizden emin misiniz?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
begin
  abort;
end
else
begin
  showmessage('Silinme işlemi yapılmadı.');
end;
end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
if (length(edit1.Text)>=3) and (edit1.Text<>'') then
begin
edit3.Enabled:=false;
edit4.Enabled:=false;
adoquery1.Close;
adoquery1.Parameters[0].Value:=edit1.Text;
dbgrid1.DataSource:=datasource2;
adoquery1.Open;
end
else
begin
edit3.Enabled:=true;
edit4.Enabled:=true;
dbgrid1.DataSource:=datasource1;
end;
end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
 if (length(edit3.Text)>=7) and (edit3.Text<>'') then
begin
edit1.Enabled:=false;
edit4.Enabled:=false;
adoquery2.Close;
adoquery2.Parameters[0].Value:=edit3.Text;
dbgrid1.DataSource:=datasource3;
adoquery2.Open;
end
else
begin
edit1.Enabled:=true;
edit4.Enabled:=true;
dbgrid1.DataSource:=datasource1;
end;
end;

procedure TForm3.Edit4Change(Sender: TObject);
begin
  if (length(edit4.Text)>=7) and (edit4.Text<>'') then
begin
edit1.Enabled:=false;
edit3.Enabled:=false;
adoquery3.Close;
adoquery3.Parameters[0].Value:=edit4.Text;
dbgrid1.DataSource:=datasource4;
adoquery3.Open;
end
else
begin
edit1.Enabled:=true;
edit3.Enabled:=true;
dbgrid1.DataSource:=datasource1;
end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
adotable1.Open;
edit1.Text:='' ;
edit3.text:='';
edit4.Text:='';
end;

end.

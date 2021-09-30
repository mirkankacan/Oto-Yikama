unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ADOTable1: TADOTable;
    ADOTable1id: TAutoIncField;
    ADOTable1ad: TWideStringField;
    ADOTable1soyad: TWideStringField;
    ADOTable1email: TWideStringField;
    ADOTable1telefon: TWideStringField;
    ADOTable1marka: TWideStringField;
    ADOTable1model: TWideStringField;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
                 uses Unit7,Unit1;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var I:integer;
bul:boolean;
begin
bul:=false;
adotable1.First;
for I := 0 to adotable1.RecordCount do
 begin
 if edit4.text=Adotable1telefon.Value then
 bul:=true;
 adotable1.Next;
   end;
   if bul<>true then
  begin
Adoquery1.close;
adoquery1.Parameters[0].Value:=Edit1.Text;
 adoquery1.Parameters[1].Value:=Edit2.Text;
  adoquery1.Parameters[2].Value:=Edit3.Text;
   adoquery1.Parameters[3].Value:=Edit4.Text;
    adoquery1.Parameters[4].Value:=Edit5.Text;
 if radiobutton1.Checked=true then
         begin
     adoquery1.Parameters[5].Value:='Sıfır';
        end;
         if radiobutton2.Checked=true then
         begin
         adoquery1.Parameters[5].Value:='İkinci el';
         end;
     adoquery1.ExecSQL;
     showmessage('Kayıt başarıyla yapıldı.')    ;
        edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
        radiobutton1.Checked:=false ;
        radiobutton2.Checked:=false;
  end
  else
  begin
    showmessage('Kayıt daha önce yapılmış.')
  end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
if length(edit1.Text)>=3 then
begin
edit2.Enabled:=true;
end
else
begin
  edit2.Enabled:=false;
end;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
  if length(edit2.Text)>=3 then
begin
edit3.Enabled:=true;
end
else
begin
  edit3.Enabled:=false;
end;
end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
if length(edit3.Text)>=12 then
begin
edit4.Enabled:=true;
end
else
begin
  edit4.Enabled:=false;
end;
end;

procedure TForm2.Edit4Change(Sender: TObject);
begin
if length(edit4.Text)>=11 then
begin
edit5.Enabled:=true;
end
else
begin
  edit5.Enabled:=false;
end;
end;

procedure TForm2.Edit5Change(Sender: TObject);
begin
if length(edit5.Text)>=3 then
begin
radiobutton1.Enabled:=true;
radiobutton2.Enabled:=true;
end
else
begin
  radiobutton1.Enabled:=false;
radiobutton2.Enabled:=false;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
adotable1.Open;
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;

end;

end.

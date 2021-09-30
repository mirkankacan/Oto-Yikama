unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,Registry,
  Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
            uses Unit1,Unit2,Unit3,Unit4,Unit5,Unit6;
{$R *.dfm}



procedure TForm7.Button1Click(Sender: TObject);
var R:Tregistry;
begin
R:=TRegistry.Create;
R.RootKey:=HKEY_CURRENT_USER;
R.OpenKey('\software',false);
if r.KeyExists('Mirkan') then
  begin
  r.OpenKey('\software\Mirkan',false);
     if (r.ReadString('ad')=edit1.Text) and (r.ReadString('sifre')=edit2.Text) then
     begin
      showmessage('Hoşgeldiniz');
     end
     else
     begin
       showmessage('Hatalı giriş');
     end;
r.CloseKey;
r.Free;
end;
end;
procedure TForm7.FormCreate(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
end;

end.

unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExibeTextoMemo(valor:string);//valor:string;valor2:integer
    procedure LimparMemo;
    function PegaValorEdit:string;
    function Soma(valorA,ValorB:integer):integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  texto:string;

begin
  LimparMemo;
  texto:= PegaValorEdit;
  ExibeTextoMemo(texto);
  //ExibeTextoMemo('Aula sobre metodos');

end;



procedure TForm1.Button2Click(Sender: TObject);
var
  total,valor1,valor2:integer;
begin
  valor1:=10;
  valor2:=100;
  total := Soma(valor1,valor2);
  ExibeTextoMemo(total.ToString);
end;

procedure TForm1.ExibeTextoMemo(valor: string);
begin
  Memo1.Lines.Add(valor);
end;

procedure TForm1.LimparMemo;
begin
  Memo1.Clear;
end;

function TForm1.PegaValorEdit: string;
begin
  Result := Edit1.Text;
end;

function TForm1.Soma(valorA, ValorB: integer): integer;
begin

  Result := valorA + ValorB;
end;

end.

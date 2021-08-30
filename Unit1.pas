unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Um: TButton;
    Dois: TButton;
    Tres: TButton;
    Quatro: TButton;
    Cinco: TButton;
    Seis: TButton;
    Sete: TButton;
    Oito: TButton;
    Nove: TButton;
    Zero: TButton;
    Virgula: TButton;
    Mais: TButton;
    Menos: TButton;
    Multiplicar: TButton;
    Dividir: TButton;
    Igual: TButton;
    lLimpar: TButton;
    Visor: TEdit;
    procedure UmClick(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure MenosClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure VirgulaClick(Sender: TObject);
    procedure lLimparClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  v1 : real;
  v2 : real;
  inf : integer;

implementation

{$R *.dfm}


procedure TForm1.UmClick(Sender: TObject);
begin
 visor.text := visor.Text + (Sender as TButton).Caption
end;
procedure TForm1.MaisClick(Sender: TObject);
begin
 v1 := StrToFloat(visor.Text);
 visor.Text := '';
 inf := 1;
end;
procedure TForm1.MenosClick(Sender: Tobject);
begin
  v1 := StrToFloat(visor.Text);
  visor.Text := '';
  inf := 2;
end;
procedure TForm1.MultiplicarClick(Sender: TObject);
begin
 v1 := StrToFloat(visor.Text);
 visor.Text := '';
 inf := 3;
 end;
procedure TForm1.DividirClick(Sender: TObject);
begin
 v1 := StrToFloat(visor.Text);
 visor.Text := '';
 inf := 4;
end;
procedure TForm1.VirgulaClick(Sender: TObject);
begin
 v1 := StrToFloat(visor.Text);
 visor.Text := ',';
 inf := 5;
end;
procedure TForm1.lLimparClick(Sender: TObject);
begin
 visor.Text := '';
end;
procedure TForm1.IgualClick(Sender: TObject);
var
 calc:real;
 begin
   v2 := StrToFloat(visor.Text);
   case (inf) of
     1:
      begin
       calc:= v1+v2;
       visor.Text := FloatToStr(calc)
      end;
     2:
      begin
       calc:= v1-v2;
       visor.Text := FloatToStr(calc)
      end;
     3:
      begin
        calc:= v1*v2;
        visor.Text := FloatToStr(calc)
      end;
     4:
      begin
        if(v2<>0) then
         begin
           calc:= v1/v2;
           visor.Text := FloatToStr(calc)
         end
        else
         begin
           ShowMessage('ALERTA: DIVISÃO POR ZERO, OPERAÇÃO INVÁLIDA!!!');
           visor.Text := 'ERRO!';
         end;

      end;
   end;
 end;
end.

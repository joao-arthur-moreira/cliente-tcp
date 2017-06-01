unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient;

type
  TForm1 = class(TForm)
    IdTCPClient: TIdTCPClient;
    edtTexto: TEdit;
    btnSend: TButton;
    edtPorta: TEdit;
    edtHost: TEdit;
    btnConectar: TButton;
    procedure btnSendClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConectarClick(Sender: TObject);
begin
  if btnConectar.Caption = 'Conectar' then
  begin
    IdTCPClient.Port := StrToIntDef(edtPorta.Text,666);
    IdTCPClient.Host := edtHost.Text;
    IdTCPClient.Connect;
    btnConectar.Caption := 'Desconectar';
  end
  else
  begin
    IdTCPClient.Disconnect;
    btnConectar.Caption := 'Conectar';
  end;
end;

procedure TForm1.btnSendClick(Sender: TObject);
begin
  if IdTCPClient.Connected then
    IdTCPClient.IOHandler.WriteLn(edtTexto.Text)
  else
    ShowMessage('Sem conexão!');
end;

end.

object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cliente TCP'
  ClientHeight = 65
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtTexto: TEdit
    Left = 8
    Top = 34
    Width = 317
    Height = 21
    TabOrder = 0
  end
  object btnSend: TButton
    Left = 331
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 1
    OnClick = btnSendClick
  end
  object edtPorta: TEdit
    Left = 8
    Top = 8
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '666'
  end
  object edtHost: TEdit
    Left = 52
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '127.0.0.1'
  end
  object btnConectar: TButton
    Left = 179
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 4
    OnClick = btnConectarClick
  end
  object IdTCPClient: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 232
    Top = 8
  end
end

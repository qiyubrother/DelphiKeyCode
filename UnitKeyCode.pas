unit UnitKeyCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lblKeyCode: TLabel;
    lblControl: TLabel;
    lblShift: TLabel;
    lblAlt: TLabel;
    lblChar: TLabel;
    Image1: TImage;
    lblDec: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lblKeyCode.Caption := '0x' + Key.ToHexString;
  lblDec.Caption := Key.ToString;
  case Key of
    112:
      lblChar.Caption := 'F1';
    113:
      lblChar.Caption := 'F2';
    114:
      lblChar.Caption := 'F3';
    115:
      lblChar.Caption := 'F4';
    116:
      lblChar.Caption := 'F5';
    117:
      lblChar.Caption := 'F6';
    118:
      lblChar.Caption := 'F7';
    119:
      lblChar.Caption := 'F8';
    120:
      lblChar.Caption := 'F9';
    121:
      lblChar.Caption := 'F10';
    122:
      lblChar.Caption := 'F11';
    123:
      lblChar.Caption := 'F12';
    $25:
      lblChar.Caption := 'Left';
    $26:
      lblChar.Caption := 'Up';
    $27:
      lblChar.Caption := 'Right';
    $28:
      lblChar.Caption := 'Down';
    $BD:
      lblChar.Caption := '-';
    $BB:
      lblChar.Caption := '=';
    $2E:
      lblChar.Caption := 'Delete';
    $8:
      lblChar.Caption := 'BreakSpace';
    $2d:
      lblChar.Caption := 'Insert';
    $21:
      lblChar.Caption := 'PageUp';
    $22:
      lblChar.Caption := 'PageDown';
    $23:
      lblChar.Caption := 'End';
    $24:
      lblChar.Caption := 'Home';
    $DC:
      lblChar.Caption := '\';
    $C0:
      lblChar.Caption := '`';
    $BC:
      lblChar.Caption := ',';
    $BE:
      lblChar.Caption := '.';
    $BF:
      lblChar.Caption := '/';
  else
    lblChar.Caption := Char(Key);
  end;

  // Ctrol
  if ssCtrl in Shift then
    lblControl.Font.Color := clRed
  else
    lblControl.Font.Color := clSilver;
  // Shift
  if ssShift in Shift then
    lblShift.Font.Color := clRed
  else
    lblShift.Font.Color := clSilver;
  // Alt
  if ssAlt in Shift then
    lblAlt.Font.Color := clRed
  else
    lblAlt.Font.Color := clSilver;
end;

end.

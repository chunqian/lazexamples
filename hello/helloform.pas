{
 ---------------------------------------------------------
 * name: helloform.pas
 * author: shenchunqian
 * created: 2023-01-24
 ---------------------------------------------------------
}
unit HelloForm;

{$mode objfpc}
{$H+}

interface

uses SysUtils, Classes, Forms, Buttons, StdCtrls;

type
  THello = class(TForm)
    button1: TButton;
  public
    constructor Create(AOwner: TComponent); override;
    procedure button1Click(Sender: TObject);
  end;

var
  Hello: THello;

implementation

constructor THello.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner, 1);
  Caption := 'Hello World';
  Width := 200;
  Height := 75;
  Left := 200;
  Top := 200;

  button1 := TButton.Create(Self);
  button1.OnClick := @button1click;
  button1.Parent := Self;
  button1.left := (width - 75) div 2;
  button1.top := (height - 32) div 2;
  button1.width := 75;
  button1.height := 32;
  button1.caption := 'Close';
  button1.Show;

  Self.Constraints.MaxWidth:= 500; 
end;

procedure THello.button1Click(Sender: TObject);
begin
  close;
end;

end.

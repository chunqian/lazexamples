{
 ---------------------------------------------------------
 * name: hello.pas
 * author: shenchunqian
 * created: 2023-01-24
 ---------------------------------------------------------
}
program HelloWorld;

{$mode objfpc}
{$H+}

uses Interfaces, Forms, HelloForm;

begin
  Application.Initialize;
  Application.CreateForm(THello, Hello);
  Application.Run;
end.

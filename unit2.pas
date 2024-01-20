unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  a: integer;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var
  inputValue: Integer;
begin
  // Попытка преобразовать введенное значение в целое число
  if TryStrToInt(Edit1.Text, inputValue) then
  begin
    // Проверка на четность
    if inputValue mod 2 = 0 then
      Edit2.Text := 'Число четное'
    else
      Edit2.Text := 'Число нечетное';
  end
  else
    Edit2.Text := 'Введите корректное число';
end;

end.


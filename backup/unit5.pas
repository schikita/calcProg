unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  // Заполнение ComboBox доступными операциями
  ComboBox1.Items.Add('+');
  ComboBox1.Items.Add('-');
  ComboBox1.Items.Add('*');
  ComboBox1.Items.Add('/');
  ComboBox1.ItemIndex := 0; // Установка начального значения
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  num1, num2, result: Double;
begin
  // Проверка и преобразование введенных значений в числа
  if TryStrToFloat(Edit1.Text, num1) and TryStrToFloat(Edit2.Text, num2) then
  begin
    case ComboBox1.Text of
      '+': result := num1 + num2;
      '-': result := num1 - num2;
      '*': result := num1 * num2;
      '/':
        if num2 <> 0 then
          result := num1 / num2
        else
        begin
          Edit3.Text := 'Деление на ноль!';
          Exit;
        end;
    end;
    Edit3.Text := FloatToStr(result);
  end
  else
    Edit3.Text := 'Введите корректные числа';
end;

end.


unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnsimpan: TButton;
    btnreset: TButton;
    cbkota: TComboBox;
    cbxfoto: TCheckBox;
    cbxktp: TCheckBox;
    cbxijazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgjeniskelamin: TRadioGroup;
    procedure btnresetClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure cbxktpChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
  memo1.lines.add(edit1.text);
  if(rgjeniskelamin.itemindex=0) then
  begin
  memo1.lines.add('Laki-Laki');
  end
  else if(rgjeniskelamin.itemindex=1) then
  begin
   memo1.lines.add('Perempuan');
  end;
  memo1.lines.add(cbkota.text);

  if(cbxfoto.checked) then
    memo1.lines.add('Foto Ada');

  if(cbxktp.checked) then
    memo1.lines.add('KTP Ada');

  if(cbxijazah.checked) then
    memo1.lines.add('Ijazah Ada');
end;

procedure TForm1.cbxktpChange(Sender: TObject);
begin

end;

procedure TForm1.btnresetClick(Sender: TObject);
begin
  edit1.text:='';
  memo1.clear;
  rgjeniskelamin.itemindex:=-1;
  cbkota.itemindex:=-1;
  cbkota.text:='';
end;

end.


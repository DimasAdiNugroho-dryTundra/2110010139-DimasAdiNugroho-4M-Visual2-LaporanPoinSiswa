unit DataDiri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformDataDiri = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtNama: TEdit;
    txtNIS: TEdit;
    txtTktKelas: TEdit;
    txtJurusan: TEdit;
    txtWakel: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDataDiri: TformDataDiri;

implementation

{$R *.dfm}

end.

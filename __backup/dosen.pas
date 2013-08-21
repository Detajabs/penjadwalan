unit dosen;

interface

uses
  DML, PARENT, Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, DB, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, 
  ZAbstractRODataset, ZAbstractDataset, ZDataset, sDBMemo, sDBEdit, sLabel,
  sGroupBox, acDBGrid, sPanel;

type
  TFrmDosen = class(TFormDee)
    Panel1: TsPanel;
    DBEdit1: TsDBEdit;
    DBEdit3: TsDBEdit;
    Label1: TsLabel;
    Label4: TsLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDosen: TFrmDosen;

implementation

uses datamodul;
{$R *.dfm}

procedure TFrmDosen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmDosen := nil;
end;

procedure TFrmDosen.FormCreate(Sender: TObject);
begin
  inherited;//
  self.FiterField := 'dosen';
end;

end.
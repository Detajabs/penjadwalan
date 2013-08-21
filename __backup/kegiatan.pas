unit kegiatan;

interface

uses
  PARENT, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Forms, Dialogs, DML, ExtCtrls, Grids, DBGrids, DB, DBCtrls, ZAbstractRODataset, 
  ZAbstractDataset, ZAbstractTable, ZDataset, StdCtrls, Mask, SESSION,
  sGroupBox, sDBRadioGroup, sDBLookupListBox, sDBEdit, sLabel, sPanel, sSplitter, acDBGrid;

type
  TFrmKegiatan = class(TFormDee)
    DSDosenJurusan: TDataSource;
    DSMatakuliah: TDataSource;
    DBGrid1: TsDBGrid;
    Panel2: TsPanel;
    Panel1: TsPanel;
    Splitter1: TsSplitter;
    DBEdit1: TsDBEdit;
    Label3: TsLabel;
    Label4: TsLabel;
    Panel3: TsPanel;
    Panel4: TsPanel;
    DBLookupListBox2: TsDBLookupListBox;
    Panel5: TsPanel;
    DBLookupListBox1: TsDBLookupListBox;
    Label1: TsLabel;
    Label2: TsLabel;
    Splitter2: TsSplitter;
    TblKegiatanQuery: TZQuery;
    DSTblKegiatan: TDataSource;
    TblKegiatan: TZTable;
    DBGrid2: TsDBGrid;
    TblKegiatanid_kegiatan: TIntegerField;
    TblKegiatanid_matakuliah: TWideStringField;
    TblKegiatanid_dosenjurusan: TIntegerField;
    TblKegiatankelas: TWideStringField;
    TblKegiatanjam_pertemuan: TIntegerField;
    DBRadioGroupKelas: TsDBRadioGroup;
    TblKegiatanQueryid_kegiatan: TIntegerField;
    TblKegiatanQueryid_jurusan: TWideStringField;
    TblKegiatanQuerymatakuliah: TWideStringField;
    TblKegiatanQuerysks: TIntegerField;
    TblKegiatanQuerysemester: TWideStringField;
    TblKegiatanQuerydosen: TWideStringField;
    TblKegiatanQuerykelas: TWideStringField;
    TblKegiatanQueryjam_pertemuan: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TblKegiatanAfterPost(DataSet: TDataSet);
    procedure TblKegiatanAfterDelete(DataSet: TDataSet);
    procedure TblKegiatanAfterApplyUpdates(Sender: TObject);
    procedure TblKegiatanNewRecord(DataSet: TDataSet);
    procedure FrmDMLEdtSearchChange(Sender: TObject);
    procedure TblKegiatanQueryFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKegiatan: TFrmKegiatan;

implementation

uses datamodul;
{$R *.dfm}

procedure TFrmKegiatan.FormActivate(Sender: TObject);
begin
  TblKegiatanQuery.Refresh;
end;

procedure TFrmKegiatan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmKegiatan := nil;
end;

procedure TFrmKegiatan.FormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  DBGrid1.OnDrawColumnCell := DrawColumnCellOnSelect;
  DBGrid2.OnDrawColumnCell := FrmDML.DBGrid.OnDrawColumnCell;
  DBGrid2.Options := FrmDML.DBGrid.Options;
  DBRadioGroupKelas.Items.Clear;
  for i := 0 to Length(KELAS_KULIAH) - 1 do
    DBRadioGroupKelas.Items.Add(KELAS_KULIAH[i]);
end;

procedure TFrmKegiatan.FormShow(Sender: TObject);
begin
  TblKegiatan.Active := True;
  TblKegiatanQuery.Active := True;
  DSDosenJurusan.DataSet.Active := True;
  TblKegiatanQuery.First;
end;

procedure TFrmKegiatan.FrmDMLEdtSearchChange(Sender: TObject);
begin
  TblKegiatanQuery.Filtered := False;
  if not(TEdit(Sender).Text = '') then
    TblKegiatanQuery.Filtered := True;
end;

procedure TFrmKegiatan.TblKegiatanAfterApplyUpdates(Sender: TObject);
begin
  TblKegiatanQuery.Refresh;
end;

procedure TFrmKegiatan.TblKegiatanAfterDelete(DataSet: TDataSet);
begin
  TblKegiatanQuery.Refresh;
end;

procedure TFrmKegiatan.TblKegiatanAfterPost(DataSet: TDataSet);
begin
  TblKegiatanQuery.Refresh;
end;

procedure TFrmKegiatan.TblKegiatanNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id_kegiatan').Clear;
end;

procedure TFrmKegiatan.TblKegiatanQueryFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept := Pos(LowerCase(FrmDML.EdtSearch.Text), LowerCase
        (DataSet.FieldByName('matakuliah').AsString)) > 0;
end;

end.
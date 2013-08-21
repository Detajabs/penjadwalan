unit matakuliah;

interface

uses
  PARENT, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Forms, Dialogs, StdCtrls, DB, Grids, DBGrids, ExtCtrls, DBCtrls, Mask, ActnList, 
  Buttons, ImgList, ZDataset, DML, ZAbstractRODataset, ZAbstractDataset, 
  ZAbstractTable, SESSION, sDBComboBox, sDBLookupComboBox, sDBEdit, sLabel,
  sGroupBox, sSplitter, acDBGrid, sPanel;

type
  TFrmMatakuliah = class(TFormDee)
    DSSks: TDataSource;
    DSSemester: TDataSource;
    DBLookupComboBox1: TsDBLookupComboBox;
    DBLookupComboBox2: TsDBLookupComboBox;
    DBLookupComboBox3: TsDBLookupComboBox;
    DBEdit1: TsDBEdit;
    DBEdit2: TsDBEdit;
    DBLookupComboBox4: TsDBLookupComboBox;
    DBLookupComboBox5: TsDBLookupComboBox;
    Label1: TsLabel;
    Label2: TsLabel;
    Label3: TsLabel;
    Label4: TsLabel;
    Label5: TsLabel;
    DBGrid1: TsDBGrid;
    Splitter1: TsSplitter;
    TblJurusan: TZTable;
    TblJurusanid_jurusan: TWideStringField;
    TblJurusanjurusan: TWideStringField;
    DSJurusan: TDataSource;
    DBComboBoxSks: TsDBComboBox;
    Panel1: TsPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridxxColExit(Sender: TObject);
    procedure DBGridxxKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridxxDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMatakuliah: TFrmMatakuliah;

implementation

uses datamodul;
{$R *.dfm}

procedure TFrmMatakuliah.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmMatakuliah := nil;
end;

procedure TFrmMatakuliah.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  self.FiterField := 'matakuliah';
  DBComboBoxSks.Items.Clear;
  for I := 0 to Length(SKS_KULIAH) - 1 do
    DBComboBoxSks.Items.Add(SKS_KULIAH[I]);
  DBGrid1.OnDrawColumnCell := DrawColumnCellOnSelect;
  TblJurusan.Active := True;
end;

procedure TFrmMatakuliah.DBGridxxColExit(Sender: TObject);
begin
  with FrmDML.DBGrid do
    if SelectedField.FieldName = DBLookupComboBox1.DataField then
      DBLookupComboBox1.Visible := False
    else if SelectedField.FieldName = DBLookupComboBox2.DataField then
      DBLookupComboBox2.Visible := False
    else if SelectedField.FieldName = DBLookupComboBox3.DataField then
      DBLookupComboBox3.Visible := False;
end;

procedure TFrmMatakuliah.DBGridxxDrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DBLookupComboBox1.DataField) then
      with DBLookupComboBox1 do
      begin
        Left := Rect.Left + FrmDML.DBGrid.Left + 2;
        Top := Rect.Top + FrmDML.DBGrid.Top + 2 + Panel1.Height;
        Width := Rect.Right - Rect.Left;
        Width := Rect.Right - Rect.Left;
        Height := Rect.Bottom - Rect.Top;
        Visible := True;
      end
      else if (Column.Field.FieldName = DBLookupComboBox2.DataField) then
        with DBLookupComboBox2 do
        begin
          Left := Rect.Left + FrmDML.DBGrid.Left + 2;
          Top := Rect.Top + FrmDML.DBGrid.Top + 2 + Panel1.Height;
          Width := Rect.Right - Rect.Left;
          Width := Rect.Right - Rect.Left;
          Height := Rect.Bottom - Rect.Top;
          Visible := True;
        end
        else if (Column.Field.FieldName = DBLookupComboBox3.DataField) then
          with DBLookupComboBox3 do
          begin
            Left := Rect.Left + FrmDML.DBGrid.Left + 2;
            Top := Rect.Top + FrmDML.DBGrid.Top + 2 + Panel1.Height;
            Width := Rect.Right - Rect.Left;
            Width := Rect.Right - Rect.Left;
            Height := Rect.Bottom - Rect.Top;
            Visible := True;
          end;
  end;
end;

procedure TFrmMatakuliah.DBGridxxKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Chr(9)) then
    Exit;
  with FrmDML.DBGrid do
    if (SelectedField.FieldName = DBLookupComboBox1.DataField) then
    begin
      DBLookupComboBox1.SetFocus;
      SendMessage(DBLookupComboBox1.Handle, WM_Char, word(Key), 0);
    end
    else if (SelectedField.FieldName = DBLookupComboBox2.DataField) then
    begin
      DBLookupComboBox2.SetFocus;
      SendMessage(DBLookupComboBox2.Handle, WM_Char, word(Key), 0);
    end
    else if (SelectedField.FieldName = DBLookupComboBox3.DataField) then
    begin
      DBLookupComboBox3.SetFocus;
      SendMessage(DBLookupComboBox3.Handle, WM_Char, word(Key), 0);
    end;
end;

end.
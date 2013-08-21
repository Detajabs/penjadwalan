unit dosenjurusan;

interface

uses
  PARENT, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Forms, Dialogs, DB, DBGrids, Grids, DBCtrls, StdCtrls, Mask, ZAbstractRODataset, 
  ZAbstractDataset, ZDataset, Buttons, ExtCtrls, ZAbstractTable, ActnList,
  sLabel, sEdit, sSpeedButton, sPanel, sSplitter, sGroupBox, acDBGrid;

type
  TFrmDosenJurusan = class(TFormDee)
    DSDosenJurusan: TDataSource;
    Panel1: TsPanel;
    Splitter1: TsSplitter;
    SpeedButton1: TsSpeedButton;
    DBGrid2: TsDBGrid;
    DBGrid3: TsDBGrid;
    DSDosen: TDataSource;
    DSJurusan: TDataSource;
    Splitter2: TsSplitter;
    ActionList: TActionList;
    DBInsert: TAction;
    DBDelete: TAction;
    FilterDosen: TAction;
    FilterJurusan: TAction;
    ShowAll: TAction;
    SpeedButton4: TsSpeedButton;
    Panel2: TsPanel;
    DBGrid1: TsDBGrid;
    LblSummary: TsLabel;
    Panel3: TsPanel;
    Edit1: TsEdit;
    Edit2: TsEdit;
    DBQuery: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBInsertExecute(Sender: TObject);
    procedure DBDeleteExecute(Sender: TObject);
    procedure ShowAllExecute(Sender: TObject);
    procedure FilterDosenExecute(Sender: TObject);
    procedure FilterJurusanExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DrawColumnCellOnSelect(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DSDosenJurusanDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    function Validation():Boolean;
    procedure SetSummary(counter: Integer);
    property JumDosen: Integer write SetSummary;
  public
    { Public declarations }
  end;

var
  FrmDosenJurusan: TFrmDosenJurusan;
  PrevIndex: Integer;

implementation

uses datamodul;

{$R *.dfm}

procedure TFrmDosenJurusan.SetSummary(counter: Integer);
begin
    LblSummary.Caption := 'Jumlah Dosen : ' + IntToStr(counter);
end;

function TFrmDosenJurusan.Validation():Boolean;
begin
  with DBQuery do begin
    Close;
    SQL.Text := 'select * from dosenjurusan where id_dosen=:dosen and id_jurusan=:jurusan';
    Params.ParamByName('dosen').Value :=  DSDosen.DataSet.FieldByName('id_dosen').AsVariant;
    Params.ParamByName('jurusan').Value :=  DSJurusan.DataSet.FieldByName('id_jurusan').AsVariant;
    Open;
    if IsEmpty then
      Result := True
    else
      Result := False;
    Close;
  end;
end;

procedure TFrmDosenJurusan.ShowAllExecute(Sender: TObject);
begin
  with FrmDataModul.QueryDosenJurusan do begin
    Filtered := False;
    JumDosen := RecordCount;
  end;
end;

procedure TFrmDosenJurusan.FilterDosenExecute(Sender: TObject);
begin
  with FrmDataModul.QueryDosenJurusan do begin
    Filtered := False;
    Filter := 'id_dosen=' + QuotedStr(DSDosen.DataSet.FieldByName('id_dosen').AsString);
    Filtered := True;
    JumDosen := RecordCount;
  end;
end;

procedure TFrmDosenJurusan.FilterJurusanExecute(Sender: TObject);
begin
  with FrmDataModul.QueryDosenJurusan do begin
    Filtered := False;
    Filter := 'id_jurusan=' + QuotedStr(DSJurusan.DataSet.FieldByName('id_jurusan').AsString);
    Filtered := True;
    JumDosen := RecordCount;
  end;
end;

procedure TFrmDosenJurusan.DBInsertExecute(Sender: TObject);
begin
  if Validation then begin
      with DBQuery do begin
        SQL.Text := 'insert into dosenjurusan(id_dosen,id_jurusan) values(:dosen,:jurusan)';
        Params.ParamByName('dosen').Value :=  DSDosen.DataSet.FieldByName('id_dosen').AsVariant;
        Params.ParamByName('jurusan').Value :=  DSJurusan.DataSet.FieldByName('id_jurusan').AsVariant;
        ExecSQL;
        DSDosenJurusan.DataSet.Refresh;
        //JumDosen := QueryDosenJurusan.RecordCount;
      end;
  end else begin
      MessageDLG('Pilih Jurusan Lain..',MTInformation,[MBOk],0);
  end;
end;

procedure TFrmDosenJurusan.DrawColumnCellOnSelect(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
    {
    if (gdSelected in State) then begin
        if(Sender as TDBGrid).Name = 'DBGrid3' then
          FilterDosen.Execute
        else if(Sender as TDBGrid).Name = 'DBGrid2' then
          FilterJurusan.Execute;
      end;
  }
end;

procedure TFrmDosenJurusan.DSDosenJurusanDataChange(Sender: TObject;
  Field: TField);
begin
    JumDosen := DSDosenJurusan.DataSet.RecordCount;
end;

procedure TFrmDosenJurusan.DBDeleteExecute(Sender: TObject);
begin
  with DBQuery do begin
    Close;
    SQL.Text := 'delete from dosenjurusan where id_dosenjurusan=:id';
    Params.ParamByName('id').Value :=  DSDosenJurusan.DataSet.FieldByName('id_dosenjurusan').AsVariant;
    ExecSQL;
    DSDosenJurusan.DataSet.Refresh;
    //JumDosen := QueryDosenJurusan.RecordCount;
    DBGrid1.SelectedIndex := prevIndex;
  end;
end;

procedure TFrmDosenJurusan.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ((Sender as TDBGrid).DataSource.DataSet.RecNo mod 2)=0 then
    (Sender as TDBGrid).Canvas.Brush.Color := $00E1FFF9
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FFEBDF;

  if gdSelected IN State then begin
    (Sender as TDBGrid).Canvas.Brush.Color := clBlue;
    (Sender as TDBGrid).Canvas.Font.Color := clWhite;
    (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
  end;
  //(Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left, Rect.Top, Column.Field.Value);
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmDosenJurusan.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ShowMessage(IntToStr(Key));
  if(Key=46)then begin
    DBDelete.Execute;
  end;
end;

procedure TFrmDosenJurusan.DBGrid1TitleClick(Column: TColumn);
begin
  with FrmDataModul.QueryDosenJurusan do
  if SortedFields=Column.FieldName then
    if SortType = stAscending then
      SortType := stDescending
    else
      SortType := stAscending
  else begin
    SortedFields := Column.FieldName ;
    SortType := stAscending;
  end;
end;

procedure TFrmDosenJurusan.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then DBInsert.Execute;
end;

procedure TFrmDosenJurusan.DBGrid3TitleClick(Column: TColumn);
begin
  with Column.Grid.DataSource.DataSet as TZTable do
  if SortedFields=Column.FieldName then
    if SortType = stAscending then
      SortType := stDescending
    else
      SortType := stAscending
  else begin
    SortedFields := Column.FieldName ;
    SortType := stAscending;
  end;
end;

procedure TFrmDosenJurusan.FormActivate(Sender: TObject);
begin
  if (DSDosenJurusan.DataSet.Active = True) then   DSDosenJurusan.DataSet.Refresh;
end;

procedure TFrmDosenJurusan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmDosenJurusan := nil;
end;

procedure TFrmDosenJurusan.FormShow(Sender: TObject);
begin
  //DBGrid2.OnDrawColumnCell := DrawColumnCellOnSelect;
  //DBGrid3.OnDrawColumnCell := DrawColumnCellOnSelect;

  if(DSDosen.DataSet.Active=true)then DSDosen.DataSet.Close;
  if(DSDosen.DataSet.Active=true)then DSJurusan.DataSet.Close;
  if(DSDosenJurusan.DataSet.Active=true)then DSDosenJurusan.DataSet.Close;

  DSDosen.DataSet.Open;
  DSJurusan.DataSet.Open;
  DSDosenJurusan.DataSet.Open;

  ShowAll.Execute;
end;

end.
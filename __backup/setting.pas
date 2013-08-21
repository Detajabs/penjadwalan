unit setting;

interface

uses
  PARENT, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Forms, Dialogs, DB, Grids, DBGrids, ExtCtrls, jpeg, ComCtrls, DBCtrls, StdCtrls,
  sDBLookupComboBox, sPageControl, sGroupBox, sStatusBar, acDBGrid, SESSION;

type
  TFrmSetting = class(TFormDee)
    DSSemester: TDataSource;
    StatusBar: TsStatusBar;
    DSGrup: TDataSource;
    PageControl: TsPageControl;
    TabSms: TsTabSheet;
    DBGrid4: TsDBGrid;
    DBLookupComboBox1: TsDBLookupComboBox;
    TabGrup: TsTabSheet;
    DBGrid7: TsDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4ColExit(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DSGrupStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure CountRecord();
    procedure Matching();
  public
    { Public declarations }
  end;

var
  FrmSetting: TFrmSetting;

implementation

uses datamodul;

{$R *.dfm}

procedure TFrmSetting.Matching();
var grup:TStringList;
begin
  with FrmDataModul.TblGrup do
  if not(IsEmpty) then begin
    grup := TStringList.Create;
    Refresh; First;
    while not(Eof) do begin
      grup.Add(Fields[0].AsString);
      Next;
    end;
    DBGrid4.Columns[2].PickList := grup;
  end;
end;

procedure TFrmSetting.CountRecord();
var total: Integer;
begin
  with FrmDataModul do
  case PageControl.TabIndex of
    0:  begin
          TblSemester.Refresh;
          total := TblSemester.RecordCount;
        end;
    1:  begin
          TblGrup.Refresh;
          total := TblGrup.RecordCount;
        end;
    else  total := 0;
  end;
  StatusBar.Panels.Items[0].Text := 'Jumlah Record : ' + IntToStr(total);
end;

procedure TFrmSetting.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var DBGrid:TDBGrid;
begin
  try
    DBGrid := (Sender as TDBGrid);
    case Key of
      13: with DBGrid.DataSource.DataSet do begin
            if (State=dsInsert) or (State=dsEdit) then Post;
          end;
      46: DBGrid.DataSource.DataSet.Delete;
      27: DBGrid.DataSource.DataSet.Cancel;
    end;
  except
    on E:Exception do begin
      MessageDLG(E.Message,MTError,[MBOk],0);
    end;
  end;
end;

procedure TFrmSetting.DSGrupStateChange(Sender: TObject);
begin
  if ((Sender as TDataSource).DataSet.Active=True) and ((Sender as TDataSource).DataSet.State=dsBrowse) then begin
    CountRecord();
    Matching();
  end;
end;

procedure TFrmSetting.DBGrid4ColExit(Sender: TObject);
begin
  if (Sender as TDBGrid).SelectedField.FieldName = DBLookupComboBox1.DataField then
    DBLookupComboBox1.Visible := False;
end;

procedure TFrmSetting.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DBLookupComboBox1.DataField) then
      with DBLookupComboBox1 do
      begin
        Left := Rect.Left + (Sender as TDBGrid).Left + 1;
        Top := Rect.Top + (Sender as TDBGrid).Top + 1;
        Width := Rect.Right - Rect.Left;
        Width := Rect.Right - Rect.Left;
        Height := Rect.Bottom - Rect.Top;
        Visible := True;
      end
  end;
end;

procedure TFrmSetting.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then Exit;
  if ((Sender as TDBGrid).SelectedField.FieldName = DBLookupComboBox1.DataField) then begin
    DBLookupComboBox1.SetFocus;
    SendMessage(DBLookupComboBox1.Handle, WM_Char, word(Key), 0);
  end;
end;

procedure TFrmSetting.DBGridDblClick(Sender: TObject);
begin
  (Sender as TDBGrid).DataSource.DataSet.Append;
end;

procedure TFrmSetting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmSetting := nil;
end;

procedure TFrmSetting.FormCreate(Sender: TObject);
begin
  PageControl.TabIndex := 0;
end;

procedure TFrmSetting.FormShow(Sender: TObject);
begin
  Matching();
  CountRecord();
end;

procedure TFrmSetting.PageControlChange(Sender: TObject);
begin
  CountRecord();
end;

end.
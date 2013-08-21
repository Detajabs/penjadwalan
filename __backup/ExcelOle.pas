unit ExcelOle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DisplayQuarterlySales(oWS : Variant);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

Const xlVAlignCenter = -4108;
Const xlThin = 2;
Const xlEdgeBottom = 9;
Const xlDouble = -4119;
Const xlThick = 4;
Const xl3DColumn = -4100;
Const xlColumns = 2;
Const xlLocationAsObject = 2;

implementation

uses ComObj;

{$R *.DFM}

procedure TForm1.DisplayQuarterlySales(oWS : Variant);
var
  oResizeRange, oChart, oSeries: Variant;
  iNumQtrs,iRet : Integer;
  sMsg : String;
begin
  // Determine how many quarters to display data for
  for iNumQtrs := 4 downto 2 do
  begin
    sMsg := 'Enter sales data for ' + IntToStr(iNumQtrs) + ' quarter(s)?';
    if MessageDlg(sMsg,mtConfirmation,[mbYes,mbNo],0) = mrYes then
      break;
  end;
  sMsg := 'Displaying data for ' + IntToStr(iNumQtrs) + ' quarter(s).';
  MessageDlg(sMsg,mtInformation,[mbOK],0);

  // Starting at E1, fill headers for the number of columns selected
  oResizeRange := oWS.Range['E1:' + Chr(Ord('E') + iNumQtrs - 1) + '1'];
  oResizeRange.Formula := '="Q" & COLUMN()-4 & CHAR(10) & "Sales"';


  // Change the orientation and WrapText properties for the headers
  oResizeRange.Orientation := 38;
  oResizeRange.WrapText := True;

  // Fill the interior color of the headers
  oResizeRange.Interior.ColorIndex := 36;

  // Fill the columns with a formula and apply a number format
  oResizeRange := oWS.Range['E2:' + Chr(Ord('E') + iNumQtrs - 1) + '6'];
  oResizeRange.Formula := '=RAND()*100';
  oResizeRange.NumberFormat := '$0.00';

  // Apply borders to the Sales  data and headers
  oResizeRange := oWS.Range['E1:' + Chr(Ord('E') + iNumQtrs - 1) + '6'];
  oResizeRange.Borders.Weight := xlThin;

  // Add a totals formula for the sales data and apply a border
  oResizeRange := oWS.Range['E8:' + Chr(Ord('E') + iNumQtrs - 1) + '8'];
  oResizeRange.Formula := '=SUM(E2:E6)';
  oResizeRange.Borders.Item[xlEdgeBottom].LineStyle := xlDouble;
  oResizeRange.Borders.Item[xlEdgeBottom].Weight := xlThick;

  // Add a chart for the selected data
  oResizeRange := oWS.Range['E2:' + Chr(Ord('E') + iNumQtrs - 1) + '6'];
  oChart := oWS.Parent.Charts.Add;
  oChart.ChartWizard(oResizeRange,xl3DColumn,,xlColumns);

  oResizeRange := oWS.Range['A2:A6'];
  oChart.SeriesCollection.Item[1].XValues := oResizeRange;
  iRet := oChart.SeriesCollection.Count;
  for iRet := 1 to iNumQtrs do
  begin
    sMsg :=  '="Q' + IntToStr(iRet) + '"';
    oChart.SeriesCollection.Item[iRet].Name := sMsg;
  end;
  oChart.Location(xlLocationAsObject,oWS.Name);

  // Move the chart so as not to cover your data
  oWS.Shapes.Item(1).Top := oWS.Rows.Item[10].Top;
  oWS.Shapes.Item(1).Left := oWS.Columns.Item[2].Left
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  oXL, oWB, oSheet, oRng, VArray : Variant;
begin
  // Start Excel and get Application Object
  oXL := CreateOleObject('Excel.Application');
  oXL.Visible := True;

  // Get a new workbook
  oWB := oXL.Workbooks.Add;
  oSheet := oWB.ActiveSheet;

  // Add table headers going cell by cell
  oSheet.Cells[1,1] := 'First Name';
  oSheet.Cells[1,2] := 'Last Name';
  oSheet.Cells[1,3] := 'Full Name';
  oSheet.Cells[1,4] := 'Salary';

  // Format A1:D1 as bold, vertical alignment = center
  oSheet.Range['A1:D1'].Font.Bold := True;
  oSheet.Range['A1:D1'].VerticalAlignment := xlVAlignCenter;

  // Create an array to set multiple values at once
  VArray := VarArrayCreate([0,4,0,1],varVariant);
  VArray[0,0] := 'John';
  VArray[0,1] := 'Smith';
  VArray[1,0] := 'Tom';
  VArray[1,1] := 'Brown';
  VArray[2,0] := 'Sue';
  VArray[2,1] := 'Thomas';
  VArray[3,0] := 'Jane';
  VArray[3,1] := 'Jones';
  VArray[4,0] := 'Adam';
  VArray[4,1] := 'Johnson';


  // Fill A2:B6 with an array of values
  oSheet.Range['A2:B6'] := VArray;

  // Fill C2:C6 with a relative formula (=A2 + ' ' + B2)
  oRng := oSheet.Range['C2:C6'];
  oRng.Formula := '=A2 & " " & B2';

  // Fill D2:D6 with a formula (=RAND()*100000) and apply format
  oRng := oSheet.Range['D2:D6'];
  oRng.Formula := '=RAND()*100000';
  oRng.NumberFormat := '$0.00';

  // Autofit columns A:D
  oRng := oSheet.Range['A1:D1'];
  oRng.EntireColumn.AutoFit;



  // Manipulate a variable number of columns for Quarterly Sales Data
  DisplayQuarterlySales(oSheet);

  // Make sure Excel is visible and give the user control

  // of Microsoft Excel's lifetime
  oXL.Visible := True;
  oXL.UserControl := True;

end;

end.

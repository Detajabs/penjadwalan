object FrmSetting: TFrmSetting
  Left = 0
  Top = 0
  Caption = 'Setting'
  ClientHeight = 489
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TsStatusBar
    Left = 0
    Top = 470
    Width = 303
    Height = 19
    Panels = <
      item
        Text = 'Jumlah Record'
        Width = 80
      end>
    SkinData.SkinSection = 'STATUSBAR'
  end
  object PageControl: TsPageControl
    AlignWithMargins = True
    Left = 0
    Top = 3
    Width = 303
    Height = 464
    Margins.Left = 0
    Margins.Right = 0
    ActivePage = TabSms
    Align = alClient
    DockSite = True
    DoubleBuffered = True
    DragKind = dkDock
    MultiLine = True
    ParentDoubleBuffered = False
    TabOrder = 1
    TabStop = False
    OnChange = PageControlChange
    SkinData.SkinSection = 'PAGECONTROL'
    object TabSms: TsTabSheet
      Caption = 'Semester'
      ImageIndex = 3
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object DBGrid4: TsDBGrid
        Left = 0
        Top = 0
        Width = 295
        Height = 436
        Align = alClient
        Color = 16380653
        Ctl3D = False
        DataSource = DSSemester
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColExit = DBGrid4ColExit
        OnDrawColumnCell = DBGrid4DrawColumnCell
        OnDblClick = DBGridDblClick
        OnKeyDown = DBGridKeyDown
        OnKeyPress = DBGrid4KeyPress
        SkinData.SkinSection = 'EDIT'
        Columns = <
          item
            Expanded = False
            FieldName = 'sorter'
            Title.Alignment = taCenter
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'semester'
            Title.Alignment = taCenter
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grup'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end>
      end
      object DBLookupComboBox1: TsDBLookupComboBox
        Left = 72
        Top = 128
        Width = 145
        Height = 21
        Color = 16380653
        DataField = 'grup'
        DataSource = DSSemester
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'grup'
        ListField = 'grup'
        ListSource = DSGrup
        ParentFont = False
        TabOrder = 1
        Visible = False
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
    object TabGrup: TsTabSheet
      Caption = 'Grup'
      ImageIndex = 6
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 291
      ExplicitHeight = 425
      object DBGrid7: TsDBGrid
        Left = 0
        Top = 0
        Width = 291
        Height = 425
        Align = alClient
        Color = 16380653
        Ctl3D = False
        DataSource = DSGrup
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridDblClick
        OnKeyDown = DBGridKeyDown
        SkinData.SkinSection = 'EDIT'
        Columns = <
          item
            Expanded = False
            FieldName = 'grup'
            Title.Alignment = taCenter
            Width = 124
            Visible = True
          end>
      end
    end
  end
  object DSSemester: TDataSource
    DataSet = FrmDataModul.TblSemester
    OnStateChange = DSGrupStateChange
    Left = 40
    Top = 408
  end
  object DSGrup: TDataSource
    DataSet = FrmDataModul.TblGrup
    OnStateChange = DSGrupStateChange
    Left = 208
    Top = 408
  end
end

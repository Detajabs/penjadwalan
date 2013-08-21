object FrmMatakuliah: TFrmMatakuliah
  Left = 0
  Top = 0
  Caption = 'Matakuliah'
  ClientHeight = 369
  ClientWidth = 792
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TsSplitter
    Left = 257
    Top = 62
    Width = 2
    Height = 307
    SkinData.SkinSection = 'SPLITTER'
    ExplicitTop = 65
    ExplicitHeight = 304
  end
  object DBGrid1: TsDBGrid
    Left = 0
    Top = 62
    Width = 257
    Height = 307
    Align = alLeft
    Color = 16380653
    DataSource = FrmDataModul.DSJurusan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Expanded = False
        FieldName = 'id_jurusan'
        Title.Alignment = taCenter
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Width = 138
        Visible = True
      end>
  end
  object DBLookupComboBox3: TsDBLookupComboBox
    Left = 311
    Top = 254
    Width = 145
    Height = 21
    Color = 16380653
    DataField = 'sks'
    DropDownWidth = 50
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'sks'
    ListField = 'sks'
    ListSource = DSSks
    ParentFont = False
    TabOrder = 2
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
  object DBLookupComboBox2: TsDBLookupComboBox
    Left = 311
    Top = 227
    Width = 145
    Height = 21
    Color = 16380653
    DataField = 'semester'
    DropDownRows = 8
    DropDownWidth = 100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'semester'
    ListField = 'semester'
    ListSource = DSSemester
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
  object DBLookupComboBox1: TsDBLookupComboBox
    Left = 311
    Top = 200
    Width = 145
    Height = 21
    Color = 16380653
    DataField = 'id_jurusan'
    DropDownWidth = 200
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id_jurusan'
    ListField = 'id_jurusan;jurusan;'
    ParentFont = False
    TabOrder = 0
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
  inline FrmDML: TFrmDML
    Left = 259
    Top = 62
    Width = 533
    Height = 307
    Align = alClient
    TabOrder = 4
    ExplicitLeft = 263
    ExplicitTop = 71
    ExplicitWidth = 529
    ExplicitHeight = 298
    inherited Panel1: TsPanel
      Width = 533
      Height = 34
      ExplicitWidth = 529
      ExplicitHeight = 34
      inherited BtnDelete: TsSpeedButton
        Top = 5
        ExplicitTop = 5
      end
      inherited BtnSearch: TsSpeedButton
        Left = 471
        Top = 5
        ExplicitLeft = 467
        ExplicitTop = 5
      end
      inherited BtnRefresh: TsSpeedButton
        Top = 5
        ExplicitTop = 5
      end
      inherited BtnAdd: TsBitBtn
        Top = 5
        ExplicitTop = 5
      end
      inherited BtnEdit: TsBitBtn
        Top = 5
        ExplicitTop = 5
      end
      inherited EdtSearch: TsEdit
        Top = 6
        Width = 137
        ExplicitTop = 6
        ExplicitWidth = 133
      end
    end
    inherited DBGrid: TsDBGrid
      Top = 34
      Width = 533
      Height = 273
      Columns = <
        item
          Expanded = False
          FieldName = 'id_matakuliah'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'matakuliah'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_jurusan'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'semester'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sks'
          Width = 28
          Visible = True
        end>
    end
    inherited DSource: TDataSource
      DataSet = FrmDataModul.TblMatakuliah
    end
  end
  object Panel1: TsPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 62
    Margins.Left = 0
    Margins.Right = 0
    Align = alTop
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    SkinData.SkinSection = 'PANEL'
    ExplicitTop = 3
    object Label1: TsLabel
      Left = 16
      Top = 5
      Width = 28
      Height = 16
      Caption = 'Kode'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label2: TsLabel
      Left = 119
      Top = 5
      Width = 61
      Height = 16
      Caption = 'Matakuliah'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label3: TsLabel
      Left = 311
      Top = 5
      Width = 44
      Height = 16
      Caption = 'Jurusan'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label4: TsLabel
      Left = 462
      Top = 5
      Width = 55
      Height = 16
      Caption = 'Semester'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label5: TsLabel
      Left = 583
      Top = 5
      Width = 23
      Height = 16
      Caption = 'SKS'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object DBComboBoxSks: TsDBComboBox
      Left = 583
      Top = 27
      Width = 50
      Height = 24
      Color = 16380653
      DataField = 'sks'
      DataSource = FrmDML.DSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object DBEdit1: TsDBEdit
      Left = 16
      Top = 27
      Width = 97
      Height = 24
      Color = 16380653
      Ctl3D = True
      DataField = 'id_matakuliah'
      DataSource = FrmDML.DSource
      ParentCtl3D = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object DBEdit2: TsDBEdit
      Left = 119
      Top = 27
      Width = 186
      Height = 24
      Color = 16380653
      Ctl3D = True
      DataField = 'matakuliah'
      DataSource = FrmDML.DSource
      ParentCtl3D = False
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object DBLookupComboBox4: TsDBLookupComboBox
      Left = 311
      Top = 27
      Width = 145
      Height = 24
      Color = 16380653
      Ctl3D = True
      DataField = 'id_jurusan'
      DataSource = FrmDML.DSource
      DropDownWidth = 300
      KeyField = 'id_jurusan'
      ListField = 'jurusan;id_jurusan;'
      ListSource = DSJurusan
      ParentCtl3D = False
      TabOrder = 3
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
    object DBLookupComboBox5: TsDBLookupComboBox
      Left = 462
      Top = 27
      Width = 115
      Height = 24
      Color = 16380653
      Ctl3D = True
      DataField = 'semester'
      DataSource = FrmDML.DSource
      DropDownRows = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'semester'
      ListField = 'semester'
      ListSource = DSSemester
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
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
  object DSSks: TDataSource
    Left = 72
    Top = 264
  end
  object DSSemester: TDataSource
    DataSet = FrmDataModul.TblSemester
    Left = 72
    Top = 216
  end
  object TblJurusan: TZTable
    Connection = FrmDataModul.DB17090069
    SortedFields = 'id_jurusan'
    TableName = 'jurusan'
    IndexFieldNames = 'id_jurusan Asc'
    Left = 152
    Top = 280
    object TblJurusanid_jurusan: TWideStringField
      DisplayLabel = 'Kode'
      DisplayWidth = 10
      FieldName = 'id_jurusan'
      Required = True
      Size = 30
    end
    object TblJurusanjurusan: TWideStringField
      DisplayLabel = 'Nama Jurusan'
      DisplayWidth = 19
      FieldName = 'jurusan'
      Required = True
      Size = 100
    end
  end
  object DSJurusan: TDataSource
    DataSet = TblJurusan
    Left = 152
    Top = 320
  end
end

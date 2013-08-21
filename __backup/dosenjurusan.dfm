object FrmDosenJurusan: TFrmDosenJurusan
  Left = 0
  Top = 0
  Caption = 'Dosen Jurusan'
  ClientHeight = 471
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TsSplitter
    Left = 217
    Top = 0
    Width = 2
    Height = 471
    SkinData.SkinSection = 'SPLITTER'
    ExplicitLeft = 266
  end
  object Panel1: TsPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 471
    Margins.Left = 0
    Margins.Right = 0
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object Splitter1: TsSplitter
      Left = 1
      Top = 182
      Width = 215
      Height = 2
      Cursor = crVSplit
      Align = alBottom
      SkinData.SkinSection = 'SPLITTER'
      ExplicitTop = 186
      ExplicitWidth = 264
    end
    object SpeedButton1: TsSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 209
      Height = 32
      Action = DBInsert
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 215
    end
    object SpeedButton4: TsSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 435
      Width = 209
      Height = 32
      Action = ShowAll
      Align = alBottom
      AllowAllUp = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 1
      ExplicitTop = 422
      ExplicitWidth = 279
    end
    object DBGrid2: TsDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 184
      Width = 209
      Height = 248
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      Color = 16380653
      DataSource = DSJurusan
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DrawColumnCellOnSelect
      OnDblClick = FilterJurusanExecute
      OnKeyDown = DBGrid3KeyDown
      OnTitleClick = DBGrid3TitleClick
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'id_jurusan'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jurusan'
          Title.Alignment = taCenter
          Title.Caption = 'Jurusan'
          Width = 142
          Visible = True
        end>
    end
    object DBGrid3: TsDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 77
      Width = 209
      Height = 105
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      Color = 16380653
      DataSource = DSDosen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DrawColumnCellOnSelect
      OnDblClick = FilterDosenExecute
      OnKeyDown = DBGrid3KeyDown
      OnTitleClick = DBGrid3TitleClick
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'id_dosen'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dosen'
          Title.Alignment = taCenter
          Title.Caption = 'Dosen'
          Width = 141
          Visible = True
        end>
    end
    object Panel3: TsPanel
      Left = 1
      Top = 39
      Width = 215
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      SkinData.SkinSection = 'PANEL'
      ExplicitWidth = 264
      object Edit1: TsEdit
        Left = 0
        Top = 8
        Width = 121
        Height = 21
        Color = 16380653
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
      object Edit2: TsEdit
        Left = 125
        Top = 8
        Width = 121
        Height = 21
        Color = 16380653
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
    end
  end
  object Panel2: TsPanel
    Left = 219
    Top = 0
    Width = 512
    Height = 471
    Margins.Left = 0
    Margins.Right = 0
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    ExplicitLeft = 268
    ExplicitWidth = 463
    object LblSummary: TsLabel
      Left = 0
      Top = 0
      Width = 512
      Height = 13
      Align = alTop
      Caption = 'LblSummary'
      ExplicitWidth = 57
    end
    object DBGrid1: TsDBGrid
      Left = 0
      Top = 13
      Width = 512
      Height = 458
      Align = alClient
      Color = 16380653
      DataSource = DSDosenJurusan
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      OnTitleClick = DBGrid1TitleClick
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'id_dosenjurusan'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_dosen'
          Title.Alignment = taCenter
          Title.Caption = 'ID Dosen'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dosen'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Dosen'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jurusan'
          Title.Alignment = taCenter
          Title.Caption = 'Jurusan'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_jurusan'
          Title.Alignment = taCenter
          Width = -1
          Visible = False
        end>
    end
  end
  object DSDosenJurusan: TDataSource
    DataSet = FrmDataModul.QueryDosenJurusan
    OnDataChange = DSDosenJurusanDataChange
    Left = 448
    Top = 56
  end
  object DSDosen: TDataSource
    DataSet = FrmDataModul.TblDosen
    Left = 40
    Top = 88
  end
  object DSJurusan: TDataSource
    DataSet = FrmDataModul.TblJurusan
    Left = 40
    Top = 272
  end
  object ActionList: TActionList
    Left = 392
    Top = 184
    object ShowAll: TAction
      Caption = 'Reset'
      OnExecute = ShowAllExecute
    end
    object FilterDosen: TAction
      Caption = 'Filter Dosen'
      OnExecute = FilterDosenExecute
    end
    object FilterJurusan: TAction
      Caption = 'Filter Jurusan'
      OnExecute = FilterJurusanExecute
    end
    object DBInsert: TAction
      Caption = 'Tambahkan'
      OnExecute = DBInsertExecute
    end
    object DBDelete: TAction
      Caption = 'Hapus'
      OnExecute = DBDeleteExecute
    end
  end
  object DBQuery: TZQuery
    Connection = FrmDataModul.DB17090069
    Params = <>
    Left = 320
    Top = 184
  end
end

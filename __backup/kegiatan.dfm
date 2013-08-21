object FrmKegiatan: TFrmKegiatan
  Left = 0
  Top = 0
  Caption = 'Kelas Kuliah'
  ClientHeight = 444
  ClientWidth = 835
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TsSplitter
    Left = 250
    Top = 0
    Width = 2
    Height = 444
    SkinData.SkinSection = 'SPLITTER'
    ExplicitHeight = 511
  end
  object DBGrid1: TsDBGrid
    Left = 0
    Top = 0
    Width = 250
    Height = 444
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
    TabOrder = 0
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
  object Panel2: TsPanel
    Left = 252
    Top = 0
    Width = 583
    Height = 444
    Align = alClient
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      583
      444)
    object Panel1: TsPanel
      Left = 1
      Top = 1
      Width = 581
      Height = 222
      Align = alTop
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object Label3: TsLabel
        Left = 7
        Top = 187
        Width = 34
        Height = 16
        Caption = 'Kelas'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14603725
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object Label4: TsLabel
        Left = 173
        Top = 187
        Width = 100
        Height = 16
        Caption = 'Jam Pertemuan'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14603725
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object DBEdit1: TsDBEdit
        Left = 279
        Top = 187
        Width = 36
        Height = 21
        Color = 16380653
        DataField = 'jam_pertemuan'
        DataSource = FrmDML.DSource
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
      object Panel3: TsPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 575
        Height = 170
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        TabOrder = 1
        SkinData.SkinSection = 'PANEL'
        object Splitter2: TsSplitter
          AlignWithMargins = True
          Left = 285
          Top = 4
          Width = 2
          Height = 162
          Margins.Left = 0
          Margins.Right = 0
          Align = alRight
          SkinData.SkinSection = 'SPLITTER'
          ExplicitLeft = 346
        end
        object Panel4: TsPanel
          AlignWithMargins = True
          Left = 287
          Top = 4
          Width = 284
          Height = 162
          Margins.Left = 0
          Align = alRight
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object Label1: TsLabel
            AlignWithMargins = True
            Left = 4
            Top = 1
            Width = 279
            Height = 16
            Margins.Top = 0
            Margins.Right = 0
            Align = alTop
            Caption = 'Dosen'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14603725
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ExplicitWidth = 40
          end
          object DBLookupListBox2: TsDBLookupListBox
            AlignWithMargins = True
            Left = 4
            Top = 23
            Width = 276
            Height = 134
            Align = alClient
            Color = 16380653
            DataField = 'id_dosenjurusan'
            DataSource = FrmDML.DSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'id_dosenjurusan'
            ListField = 'id_dosen;dosen;'
            ListSource = DSDosenJurusan
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
            SkinData.SkinSection = 'EDIT'
          end
        end
        object Panel5: TsPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 281
          Height = 162
          Margins.Right = 0
          Align = alClient
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object Label2: TsLabel
            AlignWithMargins = True
            Left = 4
            Top = 1
            Width = 276
            Height = 16
            Margins.Top = 0
            Margins.Right = 0
            Align = alTop
            Caption = 'Matakuliah'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14603725
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ExplicitWidth = 70
          end
          object DBLookupListBox1: TsDBLookupListBox
            AlignWithMargins = True
            Left = 4
            Top = 23
            Width = 273
            Height = 134
            Align = alClient
            Color = 16380653
            DataField = 'id_matakuliah'
            DataSource = FrmDML.DSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'id_matakuliah'
            ListField = 'id_matakuliah;matakuliah;sks;semester;'
            ListSource = DSMatakuliah
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
            SkinData.SkinSection = 'EDIT'
          end
        end
      end
      object DBRadioGroupKelas: TsDBRadioGroup
        Left = 47
        Top = 182
        Width = 121
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'GROUPBOX'
        Columns = 3
        DataField = 'kelas'
        DataSource = FrmDML.DSource
      end
    end
    inline FrmDML: TFrmDML
      Left = 1
      Top = 223
      Width = 581
      Height = 220
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 223
      ExplicitWidth = 581
      ExplicitHeight = 220
      inherited Panel1: TsPanel
        Width = 581
        Height = 32
        ExplicitWidth = 581
        ExplicitHeight = 32
        inherited BtnDelete: TsSpeedButton
          Top = 4
          ExplicitTop = 4
        end
        inherited BtnSearch: TsSpeedButton
          Left = 519
          Top = 4
          ExplicitLeft = 573
          ExplicitTop = 4
        end
        inherited BtnRefresh: TsSpeedButton
          Top = 4
          ExplicitTop = 4
        end
        inherited BtnAdd: TsBitBtn
          Top = 4
          ExplicitTop = 4
        end
        inherited BtnEdit: TsBitBtn
          Top = 4
          ExplicitTop = 4
        end
        inherited EdtSearch: TsEdit
          Top = 5
          Width = 184
          OnChange = FrmDMLEdtSearchChange
          ExplicitTop = 5
          ExplicitWidth = 184
        end
      end
      inherited DBGrid: TsDBGrid
        Top = 32
        Width = 581
        Height = 188
        Columns = <
          item
            Expanded = False
            FieldName = 'id_kegiatan'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_matakuliah'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_dosenjurusan'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kelas'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jam_pertemuan'
            Width = 105
            Visible = True
          end>
      end
      inherited DSource: TDataSource
        DataSet = TblKegiatan
      end
    end
    object DBGrid2: TsDBGrid
      Left = 1
      Top = 254
      Width = 581
      Height = 188
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 16380653
      DataSource = DSTblKegiatan
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'matakuliah'
          Title.Alignment = taCenter
          Title.Caption = 'Matakuliah'
          Width = 251
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sks'
          Title.Alignment = taCenter
          Title.Caption = 'SKS'
          Width = 39
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'semester'
          Title.Alignment = taCenter
          Title.Caption = 'Semester'
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'kelas'
          Title.Alignment = taCenter
          Title.Caption = 'Kelas'
          Width = 41
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'jam_pertemuan'
          Title.Alignment = taCenter
          Title.Caption = 'Jam Pert'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dosen'
          Title.Alignment = taCenter
          Title.Caption = 'Dosen'
          Width = 269
          Visible = True
        end>
    end
  end
  object DSDosenJurusan: TDataSource
    DataSet = FrmDataModul.QueryDosenJurusan
    Left = 640
    Top = 32
  end
  object DSMatakuliah: TDataSource
    DataSet = FrmDataModul.TblMatakuliah
    Left = 280
    Top = 24
  end
  object TblKegiatanQuery: TZQuery
    Connection = FrmDataModul.DB17090069
    OnFilterRecord = TblKegiatanQueryFilterRecord
    Active = True
    SQL.Strings = (
      
        'SELECT k.id_kegiatan,dj.id_jurusan, CONCAT(k.id_matakuliah,'#39' : '#39 +
        ',m.matakuliah) AS matakuliah,m.sks,m.semester, CONCAT(d.id_dosen' +
        ','#39' : '#39',d.dosen) AS dosen,k.kelas,k.jam_pertemuan'
      'FROM kegiatan k'
      'JOIN dosenjurusan dj ON dj.id_dosenjurusan=k.id_dosenjurusan'
      'JOIN dosen d ON d.id_dosen=dj.id_dosen'
      'JOIN matakuliah m ON m.id_matakuliah=k.id_matakuliah'
      'ORDER BY k.id_matakuliah ASC, m.semester ASC, k.kelas ASC')
    Params = <>
    MasterFields = 'id_jurusan'
    MasterSource = FrmDataModul.DSJurusan
    LinkedFields = 'id_jurusan'
    Left = 40
    Top = 240
    object TblKegiatanQueryid_kegiatan: TIntegerField
      FieldName = 'id_kegiatan'
      Required = True
    end
    object TblKegiatanQueryid_jurusan: TWideStringField
      FieldName = 'id_jurusan'
      Required = True
      Size = 30
    end
    object TblKegiatanQuerymatakuliah: TWideStringField
      FieldName = 'matakuliah'
      ReadOnly = True
      Size = 153
    end
    object TblKegiatanQuerysks: TIntegerField
      FieldName = 'sks'
      Required = True
    end
    object TblKegiatanQuerysemester: TWideStringField
      FieldName = 'semester'
      Required = True
      Size = 50
    end
    object TblKegiatanQuerydosen: TWideStringField
      FieldName = 'dosen'
      ReadOnly = True
      Size = 153
    end
    object TblKegiatanQuerykelas: TWideStringField
      FieldName = 'kelas'
      Required = True
    end
    object TblKegiatanQueryjam_pertemuan: TIntegerField
      FieldName = 'jam_pertemuan'
      Required = True
    end
  end
  object DSTblKegiatan: TDataSource
    DataSet = TblKegiatanQuery
    Left = 40
    Top = 168
  end
  object TblKegiatan: TZTable
    Connection = FrmDataModul.DB17090069
    AfterApplyUpdates = TblKegiatanAfterApplyUpdates
    AfterPost = TblKegiatanAfterPost
    AfterDelete = TblKegiatanAfterDelete
    OnNewRecord = TblKegiatanNewRecord
    TableName = 'kegiatan'
    MasterFields = 'id_kegiatan'
    MasterSource = DSTblKegiatan
    LinkedFields = 'id_kegiatan'
    Left = 39
    Top = 104
    object TblKegiatanid_kegiatan: TIntegerField
      FieldName = 'id_kegiatan'
      Required = True
    end
    object TblKegiatanid_matakuliah: TWideStringField
      FieldName = 'id_matakuliah'
      Required = True
      Size = 50
    end
    object TblKegiatanid_dosenjurusan: TIntegerField
      FieldName = 'id_dosenjurusan'
      Required = True
    end
    object TblKegiatankelas: TWideStringField
      FieldName = 'kelas'
      Required = True
    end
    object TblKegiatanjam_pertemuan: TIntegerField
      FieldName = 'jam_pertemuan'
      Required = True
    end
  end
end

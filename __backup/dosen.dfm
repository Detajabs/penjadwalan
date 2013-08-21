object FrmDosen: TFrmDosen
  Left = 0
  Top = 0
  Caption = 'Pengajar'
  ClientHeight = 523
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmDML: TFrmDML
    Left = 0
    Top = 56
    Width = 664
    Height = 467
    Align = alClient
    TabOrder = 0
    ExplicitTop = 56
    ExplicitWidth = 664
    ExplicitHeight = 467
    inherited Panel1: TsPanel
      Width = 664
      Height = 31
      ExplicitWidth = 664
      ExplicitHeight = 31
      inherited BtnDelete: TsSpeedButton
        Top = 3
        ExplicitTop = 3
      end
      inherited BtnSearch: TsSpeedButton
        Left = 602
        Top = 3
        ExplicitLeft = 602
        ExplicitTop = 3
      end
      inherited BtnRefresh: TsSpeedButton
        Top = 3
        ExplicitTop = 3
      end
      inherited BtnAdd: TsBitBtn
        Top = 3
        ExplicitTop = 3
      end
      inherited BtnEdit: TsBitBtn
        Top = 3
        ExplicitTop = 3
      end
      inherited EdtSearch: TsEdit
        Top = 5
        Width = 268
        ExplicitTop = 5
        ExplicitWidth = 268
      end
    end
    inherited DBGrid: TsDBGrid
      Top = 31
      Width = 664
      Height = 436
      Columns = <
        item
          Expanded = False
          FieldName = 'pid'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'kode'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pengajar'
          Width = 200
          Visible = True
        end>
    end
    inherited DSource: TDataSource
      DataSet = FrmDataModul.TblPengajar
    end
  end
  object Panel1: TsPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 56
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
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object Label1: TsLabel
      Left = 16
      Top = 5
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID Dosen'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Label4: TsLabel
      Left = 141
      Top = 5
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'NIP'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object DBEdit1: TsDBEdit
      Left = 16
      Top = 21
      Width = 116
      Height = 24
      Hint = 'DDDD'
      Color = 16380653
      DataField = 'kode'
      DataSource = FrmDML.DSource
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
    object DBEdit3: TsDBEdit
      Left = 141
      Top = 21
      Width = 182
      Height = 24
      Hint = 'DDDD'
      Color = 16380653
      DataField = 'pengajar'
      DataSource = FrmDML.DSource
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

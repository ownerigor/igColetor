object frmEscolherLancamento: TfrmEscolherLancamento
  Left = 0
  Top = 0
  Caption = 'Escolher lan'#231'amento para contagem...'
  ClientHeight = 256
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 578
    Height = 256
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 578
      Height = 256
      Align = alClient
      DataSource = dsLancamento
      Options = [dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'LANCAMENTO'
          Title.Caption = 'Lan'#231'amento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Visible = True
        end>
    end
  end
  object qryLancamento: TFDQuery
    Connection = dmConexao.fbConnection
    SQL.Strings = (
      'SELECT * FROM CONTROLE_ESTOQUE'
      'ORDER BY LANCAMENTO')
    Left = 520
    Top = 152
    object qryLancamentoLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
      Origin = 'LANCAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLancamentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object qryLancamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
  end
  object dsLancamento: TDataSource
    DataSet = qryLancamento
    Left = 520
    Top = 200
  end
end

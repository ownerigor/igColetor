unit uniFrmCadastrarControle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TfrmCadastrarControle = class(TForm)
    Panel1: TPanel;
    pnlButtons: TPanel;
    Image5: TImage;
    Image2: TImage;
    Image3: TImage;
    Image1: TImage;
    pnlBody: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    edtLancamento: TEdit;
    dsControle: TDataSource;
    qryControle: TFDQuery;
    qryControleLANCAMENTO: TIntegerField;
    qryControleDATA: TSQLTimeStampField;
    qryControleSTATUS: TStringField;
    cbStatus: TComboBox;
    dtpData: TDateTimePicker;
    procedure Image1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure qryControleAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    var lancamento : Integer;
    var modoEdicao : Boolean;

    procedure limparCampos;
  public
    { Public declarations }
  end;

var
  frmCadastrarControle: TfrmCadastrarControle;

implementation

{$R *.dfm}

uses uniDmConexao;

procedure TfrmCadastrarControle.FormShow(Sender: TObject);
begin
  dtpData.DateTime := Now;

  qryControle.Close;
  qryControle.Open;
end;

procedure TfrmCadastrarControle.Image1Click(Sender: TObject);
begin
  limparCampos;
end;

procedure TfrmCadastrarControle.Image2Click(Sender: TObject);
begin
  qryControle.Delete;
end;

procedure TfrmCadastrarControle.Image3Click(Sender: TObject);
begin
  modoEdicao := True;
  lancamento := qryControleLANCAMENTO.AsInteger;
end;

procedure TfrmCadastrarControle.Image5Click(Sender: TObject);
begin
  try
    if (modoEdicao = False) and (edtLancamento.Text = '') then
    begin
      with dmConexao.qryConsultas do
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO CONTROLE_ESTOQUE ');
        SQL.Add('(DATA, STATUS) ');
        SQL.Add('VALUES');
        SQL.Add('(:pData, :pStatus)');

        ParamByName('pData').AsDateTime := dtpData.DateTime;
        ParamByName('pStatus').AsString := cbStatus.Text;

        ExecSQL;
        end;
    end
    else
    begin
      with dmConexao.qryConsultas do
      begin
        SQL.Clear;
        SQL.Add('UPDATE CONTROLE_ESTOQUE ');
        SQL.Add('  SET DATA = :pData, ');
        SQL.Add('   STATUS = :pStatus ');
        SQL.Add('WHERE LANCAMENTO = :pLancamento');

        ParamByName('pData').AsDateTime := dtpData.DateTime;
        ParamByName('pStatus').AsString := cbStatus.Text;
        ParamByName('pLancamento').AsInteger := StrToInt(edtLancamento.Text);

        ExecSQL;
      end;
    end;
  finally
    if modoEdicao = True then
      modoEdicao := False;

    ShowMessage('Controle salvo com sucesso!');

    qryControle.Refresh;
    limparCampos;
  end;
end;

procedure TfrmCadastrarControle.limparCampos;
begin
  edtLancamento.Text := '';
  dtpData.DateTime := Now;
  cbStatus.ItemIndex := 0;
end;

procedure TfrmCadastrarControle.qryControleAfterScroll(DataSet: TDataSet);
begin
  edtLancamento.Text := qryControleLANCAMENTO.AsString;
  dtpData.DateTime := qryControleDATA.AsDateTime;

  if qryControleSTATUS.AsString = 'Aberto' then
    cbStatus.ItemIndex := 0
  else
    cbStatus.ItemIndex := 1;
end;

end.

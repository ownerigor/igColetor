unit uniFrmColetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TfrmColetor = class(TForm)
    pnlPage: TPanel;
    pnlNavigation: TPanel;
    pnlIcon: TPanel;
    Image1: TImage;
    pnlBody: TPanel;
    pnlButtons: TPanel;
    pnlData: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    lblLanc: TLabel;
    lblData: TLabel;
    lblStatus: TLabel;
    qryControleEst: TFDQuery;
    dsControleEst: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Image6: TImage;
    Label4: TLabel;
    edtCodBarra: TEdit;
    Label5: TLabel;
    edtQuantidade: TEdit;
    Image7: TImage;
    Image2: TImage;
    Panel4: TPanel;
    Image3: TImage;
    qryControleEstCONTROLE_LANCAMENTO: TIntegerField;
    qryControleEstPRO_CODIGO: TIntegerField;
    qryControleEstESTOQUE: TSingleField;
    qryControleEstEST_REAL: TSingleField;
    PopupMenu1: TPopupMenu;
    Estornarlanamento1: TMenuItem;
    procedure Panel2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Estornarlanamento1Click(Sender: TObject);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodBarraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    v_LancamentoIniciado : Integer;
    v_Pesquisando : Boolean;
  end;

var
  frmColetor: TfrmColetor;

implementation

{$R *.dfm}

uses uniFrmCadastrarProdutos, uniFrmCadastrarControle, uniDmConexao,
  uniFrmLancamentoContagem;

procedure TfrmColetor.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.Field.FieldName = 'ESTOQUE') then
  begin
    if qryControleEst.RecordCount = 0 then
    begin
      DBGrid1.Canvas.Brush.Color := clWhite;
      DBGrid1.Canvas.Font.Color := clBlack;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      Exit;
    end;

    if qryControleEst.FieldByName('EST_REAL').AsFloat <= 0 then
    begin
      DBGrid1.Canvas.Brush.Color := clRed;
      DBGrid1.Canvas.Font.Color := clBlack;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;
end;

procedure TfrmColetor.edtCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtQuantidade.SetFocus;
end;

procedure TfrmColetor.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Image7Click(Self);
end;

procedure TfrmColetor.Estornarlanamento1Click(Sender: TObject);
var
  v_EstoqueEstornado : Integer;
begin
  with dmConexao.qryConsultas do
  begin
    SQL.Clear;
    SQL.Text := 'UPDATE PRODUTO '+
                ' SET ESTOQUE = ESTOQUE + '+ IntToStr(qryControleEstESTOQUE.AsInteger) +' '+
                '  WHERE PRO_CODIGO = '+ qryControleEstPRO_CODIGO.AsString +'; ';
    ExecSQL;
    qryControleEst.Delete;
  end;
end;

procedure TfrmColetor.FormShow(Sender: TObject);
begin
  v_Pesquisando := False;
end;

procedure TfrmColetor.Image2Click(Sender: TObject);
begin
  if not Assigned(frmEscolherLancamento) then
    frmEscolherLancamento := TfrmEscolherLancamento.Create(Application);

  frmEscolherLancamento.ShowModal;

  lblLanc.Caption := IntToStr(v_LancamentoIniciado);
  lblData.Caption := DateTimeToStr(frmEscolherLancamento.qryLancamentoDATA.AsDateTime);
  lblStatus.Caption := frmEscolherLancamento.qryLancamentoSTATUS.AsString;

  qryControleEst.Close;
  qryControleEst.SQL.Clear;
  qryControleEst.SQL.Text := 'SELECT ICE.CONTROLE_LANCAMENTO, ICE.PRO_CODIGO, ICE.ESTOQUE, P.ESTOQUE AS EST_REAL '+
                             'FROM ITEM_CONTROLE_ESTOQUE ICE '+
                             'INNER JOIN PRODUTO P ON P.PRO_CODIGO = ICE.PRO_CODIGO '+
                             'WHERE ICE.CONTROLE_LANCAMENTO = :pContLanc ';

  qryControleEst.ParamByName('pContLanc').AsInteger := v_LancamentoIniciado;
  qryControleEst.Open;
end;

procedure TfrmColetor.Image3Click(Sender: TObject);
begin
  v_Pesquisando := True;

  if not Assigned(frmEscolherLancamento) then
    frmEscolherLancamento := TfrmEscolherLancamento.Create(Application);

  frmEscolherLancamento.ShowModal;
  FreeAndNil(frmEscolherLancamento);

  v_Pesquisando := False;
end;

procedure TfrmColetor.Image6Click(Sender: TObject);
var
  v_EstoqueProd : Integer;
  v_EstoqueProdNovo : Integer;
begin
  with dmConexao.qryConsultas do
  begin
    SQL.Clear;
    SQL.Text := 'UPDATE CONTROLE_ESTOQUE' +
                ' SET STATUS = ''Fechado'' '+
                'WHERE LANCAMENTO = ''' +  IntToStr(v_LancamentoIniciado) + ''' ';
    ExecSQL;

    lblStatus.Caption := 'Fechado';
  end;

  ShowMessage('Controle finalizado com sucesso!');
end;

procedure TfrmColetor.Image7Click(Sender: TObject);
var
  v_ProCodigo : Integer;
  v_EstoqueProd : Integer;
  v_EstoqueProdNovo : Integer;
begin
  if (edtCodBarra.Text = '') or (edtQuantidade.Text = '') then
    Abort;


  if v_LancamentoIniciado <= 0 then
  begin
    ShowMessage('Nenhum lançamento foi iniciado!');
    Abort;
  end;

  dmConexao.qryConsultas.Close;
  dmConexao.qryConsultas.SQL.Clear;
  dmConexao.qryConsultas.SQL.Text := 'SELECT PRO_CODIGO FROM PRODUTO '+
                                     'WHERE COD_BARRA = ''' + edtCodBarra.Text + ''' ';
  dmConexao.qryConsultas.Open;

  v_ProCodigo := dmConexao.qryConsultas.FieldByName('PRO_CODIGO').AsInteger;

  dmConexao.qryConsultas2.Close;
  dmConexao.qryConsultas2.SQL.Clear;
  dmConexao.qryConsultas2.SQL.Text := 'SELECT ESTOQUE FROM PRODUTO '+
                                      'WHERE PRO_CODIGO = ''' + dmConexao.qryConsultas.FieldByName('PRO_CODIGO').AsString + ''' ';
  dmConexao.qryConsultas2.Open;
  v_EstoqueProd := dmConexao.qryConsultas2.FieldByName('ESTOQUE').AsInteger;

  v_EstoqueProdNovo := (v_EstoqueProd - StrToInt(edtQuantidade.Text));

  dmConexao.qryConsultas.SQL.Clear;
  dmConexao.qryConsultas.SQL.Text := 'UPDATE PRODUTO' +
                                     ' SET ESTOQUE = '+ IntToStr(v_EstoqueProdNovo) +' '+
                                     'WHERE PRO_CODIGO = ''' + IntToStr(v_ProCodigo) + ''' ';

  dmConexao.qryConsultas.ExecSQL;

  with dmConexao.qryConsultas2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PRO_CODIGO FROM PRODUTO');
    SQL.Add('WHERE COD_BARRA = :pCodBarra ');

    ParamByName('pCodBarra').AsInteger := StrToInt(edtCodBarra.Text);
    Open;

    v_ProCodigo := FieldByName('PRO_CODIGO').AsInteger;

    if RecordCount = 0 then
    begin
      ShowMessage('Código de barra não encontrado!');
      Abort;
    end;
  end;

  with dmConexao.qryConsultas do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO ITEM_CONTROLE_ESTOQUE ');
    SQL.Add('(CONTROLE_LANCAMENTO, PRO_CODIGO, ESTOQUE) ');
    SQL.Add('VALUES');
    SQL.Add('(:pContLanc, :pProCodigo, :pEstoque)');

    ParamByName('pContLanc').AsInteger := v_LancamentoIniciado;
    ParamByName('pProCodigo').AsInteger := v_ProCodigo;
    ParamByName('pEstoque').AsInteger := StrToInt(edtQuantidade.Text);

    ExecSQL;
  end;

  qryControleEst.Refresh;
  edtCodBarra.Text := '';
  edtQuantidade.Text := '';
end;

procedure TfrmColetor.Panel2Click(Sender: TObject);
begin
  if not Assigned(frmCadastrarProdutos) then
    frmCadastrarProdutos := TfrmCadastrarProdutos.Create(Application);

  frmCadastrarProdutos.ShowModal;
  FreeAndNil(frmCadastrarProdutos);
end;

procedure TfrmColetor.Panel4Click(Sender: TObject);
begin
  if not Assigned(frmCadastrarControle) then
    frmCadastrarControle := TfrmCadastrarControle.Create(Application);
  frmCadastrarControle.ShowModal;

  FreeAndNil(frmCadastrarControle);
end;

end.

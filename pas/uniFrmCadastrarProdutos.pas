unit uniFrmCadastrarProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastrarProdutos = class(TForm)
    pnlCadastrarProdutos: TPanel;
    pnlButtons: TPanel;
    Image5: TImage;
    Image2: TImage;
    Image3: TImage;
    pnlBody: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    qryProdutos: TFDQuery;
    dsProdutos: TDataSource;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    qryProdutosPRO_CODIGO: TIntegerField;
    qryProdutosPRO_DESCRICAO: TStringField;
    qryProdutosESTOQUE: TSingleField;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    edtEstoque: TEdit;
    Image1: TImage;
    edtCodBarra: TEdit;
    Label4: TLabel;
    qryProdutosCOD_BARRA: TIntegerField;
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryProdutosAfterScroll(DataSet: TDataSet);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var codProduto : Integer;
    var modoEdicao : Boolean;
    
    procedure limparCampos;
    procedure validacoesCampos;
  public
    { Public declarations }
  end;

var
  frmCadastrarProdutos: TfrmCadastrarProdutos;

implementation

{$R *.dfm}

uses uniDmConexao;

procedure TfrmCadastrarProdutos.FormCreate(Sender: TObject);
begin
  modoEdicao := False;
end;

procedure TfrmCadastrarProdutos.FormShow(Sender: TObject);
begin
  qryProdutos.Close;
  qryProdutos.Open;
end;

procedure TfrmCadastrarProdutos.Image1Click(Sender: TObject);
begin
  limparCampos;
end;

procedure TfrmCadastrarProdutos.Image2Click(Sender: TObject);
begin
  qryProdutos.Delete;
end;

procedure TfrmCadastrarProdutos.Image3Click(Sender: TObject);
begin
  modoEdicao := True;
  codProduto := qryProdutosPRO_CODIGO.AsInteger;
end;

procedure TfrmCadastrarProdutos.Image4Click(Sender: TObject);
begin
  qryProdutos.Insert;
end;

procedure TfrmCadastrarProdutos.Image5Click(Sender: TObject);
begin
  validacoesCampos;

  try
    if (modoEdicao = False) and (edtCodigo.Text = '') then
    begin
      with dmConexao.qryConsultas do
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO PRODUTO ');
        SQL.Add('(PRO_DESCRICAO, ESTOQUE, COD_BARRA) ');
        SQL.Add('VALUES');
        SQL.Add('(:pProDesc, :pEstoque, :pCodBarra)');

        ParamByName('pProDesc').AsString := edtDescricao.Text;
        ParamByName('pEstoque').AsFloat := StrToFloat(edtEstoque.Text);
        ParamByName('pCodBarra').AsFloat := StrToFloat(edtCodBarra.Text);

        ExecSQL;
      end;
    end
    else
    begin
      with dmConexao.qryConsultas do
      begin
        SQL.Clear;
        SQL.Add('UPDATE PRODUTO ');
        SQL.Add('  SET PRO_DESCRICAO = :pProDesc, ');
        SQL.Add('   ESTOQUE = :pEstoque, ');
        SQL.Add('    COD_BARRA = :pCodBarra ');
        SQL.Add('WHERE PRO_CODIGO = :pProCodigo');

        ParamByName('pProDesc').AsString := edtDescricao.Text;
        ParamByName('pEstoque').AsFloat := StrToFloat(edtEstoque.Text);
        ParamByName('pProCodigo').AsInteger := StrToInt(edtCodigo.Text);
        ParamByName('pCodBarra').AsInteger := StrToInt(edtCodBarra.Text);

        ExecSQL;
      end;      
    end;
  finally
    if modoEdicao = True then
      modoEdicao := False;

    ShowMessage('Produto salvo com sucesso!');
    
    qryProdutos.Refresh;
    limparCampos;
  end;
end;

procedure TfrmCadastrarProdutos.limparCampos;
begin
  edtCodigo.Text := '';
  edtDescricao.Text := '';
  edtEstoque.Text := '';
  edtCodBarra.Text := '';
end;

procedure TfrmCadastrarProdutos.qryProdutosAfterScroll(DataSet: TDataSet);
begin
  if qryProdutos.State = dsBrowse then
  begin
    edtCodigo.Text := qryProdutosPRO_CODIGO.AsString;
    edtDescricao.Text := qryProdutosPRO_DESCRICAO.AsString;
    edtEstoque.Text := FloatToStr(qryProdutosESTOQUE.AsFloat);
    edtCodBarra.Text := FloatToStr(qryProdutosCOD_BARRA.AsFloat)
  end;
end;

procedure TfrmCadastrarProdutos.validacoesCampos;
begin
  if edtDescricao.Text = '' then
  begin
    ShowMessage('Preencha a descrição do produto corretamente!');
    Abort;
  end;

  if edtEstoque.Text = '' then
  begin
    ShowMessage('Preencha o estoque do produto corretamente!');
    Abort;
  end;

  if edtCodBarra.Text = '' then
  begin
    ShowMessage('Preencha o código de barra do produto corretamente!');
    Abort;
  end;
end;

end.

program projColetor;

uses
  Vcl.Forms,
  uniFrmColetor in '..\pas\uniFrmColetor.pas' {frmColetor},
  uniDmConexao in '..\dm\uniDmConexao.pas' {dmConexao: TDataModule},
  uniFrmCadastrarProdutos in '..\pas\uniFrmCadastrarProdutos.pas' {frmCadastrarProdutos},
  uniFrmCadastrarControle in '..\pas\uniFrmCadastrarControle.pas' {frmCadastrarControle},
  uniFrmLancamentoContagem in '..\pas\uniFrmLancamentoContagem.pas' {frmEscolherLancamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmColetor, frmColetor);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmCadastrarProdutos, frmCadastrarProdutos);
  Application.CreateForm(TfrmCadastrarControle, frmCadastrarControle);
  Application.CreateForm(TfrmEscolherLancamento, frmEscolherLancamento);
  Application.Run;
end.

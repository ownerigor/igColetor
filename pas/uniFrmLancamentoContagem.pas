unit uniFrmLancamentoContagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmEscolherLancamento = class(TForm)
    qryLancamento: TFDQuery;
    dsLancamento: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qryLancamentoLANCAMENTO: TIntegerField;
    qryLancamentoDATA: TSQLTimeStampField;
    qryLancamentoSTATUS: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEscolherLancamento: TfrmEscolherLancamento;

implementation

{$R *.dfm}

uses uniDmConexao, uniFrmColetor;

procedure TfrmEscolherLancamento.DBGrid1DblClick(Sender: TObject);
begin
  if qryLancamentoSTATUS.AsString = 'Fechado' then
  begin
    ShowMessage('Não é possível iniciar um lançamento que está fechado!');
    Exit;
  end;

  frmColetor.v_LancamentoIniciado := qryLancamentoLANCAMENTO.AsInteger;
  Close;
end;

procedure TfrmEscolherLancamento.FormShow(Sender: TObject);
begin
  qryLancamento.Close;
  qryLancamento.Open;
end;

end.

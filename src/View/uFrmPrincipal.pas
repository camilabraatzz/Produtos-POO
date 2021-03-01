unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uProduto,
  uListaProdutos;

type
  TFrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    edtDescricao: TLabeledEdit;
    edtQuantidade: TLabeledEdit;
    edtValorUnitario: TLabeledEdit;
    btnExibirNota: TButton;
    Memo1: TMemo;
    Panel1: TPanel;
    edtValorTotal: TLabeledEdit;
    procedure btnExibirNotaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FoProduto : TProduto;
    FoListaProdutos : TListaDeProdutos;
    procedure ExibirNota;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}


procedure TFrmPrincipal.btnExibirNotaClick(Sender: TObject);
begin
  ExibirNota;
end;

procedure TFrmPrincipal.ExibirNota;
begin
  FoProduto.Descricao     := edtDescricao.Text;
  FoProduto.Quantidade    := StrToInt(edtQuantidade.Text);
  FoProduto.ValorUnitario := StrToFloat(edtValorUnitario.Text);
  FoListaProdutos.AdicionarProduto(FoProduto);
  Memo1.Lines.Add(FoListaProdutos.ToString);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FoProduto := TProduto.Create;
  FoListaProdutos := TListaDeProdutos.Create;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  if Assigned(FoProduto) then
    FreeAndNil(FoProduto);
  if Assigned(FoListaProdutos) then
    FreeAndNil(FoListaProdutos);
end;

end.

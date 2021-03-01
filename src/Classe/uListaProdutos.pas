unit uListaProdutos;

interface

uses
  uProduto, System.Generics.Collections, System.SysUtils;

type
  TListaDeProdutos = class
  private
    FoListaDeProdutos : TList<TProduto>;
    function GetProduto: TList<TProduto>;
    procedure SetProduto(const Value: TList<TProduto>);
  public
    property Produto : TList<TProduto> read GetProduto write SetProduto;
    constructor Create;
    destructor Destroy; override;
    procedure AdicionarProduto(AoProduto : TProduto);
    function ToString : String; override;
    function QuantidadeItens: Integer;
  end;
implementation

{ TListaDeProdutos }

procedure TListaDeProdutos.AdicionarProduto(AoProduto : TProduto);
begin
  FoListaDeProdutos.Add(AoProduto);
end;

constructor TListaDeProdutos.Create;
begin
  FoListaDeProdutos := TList<TProduto>.Create;
end;

function TListaDeProdutos.GetProduto: TList<TProduto>;
begin
  Result := FoListaDeProdutos;
end;

procedure TListaDeProdutos.SetProduto(const Value: TList<TProduto>);
begin
  FoListaDeProdutos := Value;
end;

function TListaDeProdutos.ToString: String;
var
  i: integer;
begin
  Result := 'Produtos: ' + sLineBreak;
  for i := 0 to FoListaDeProdutos.Count -1 do
    begin
    Result := Result + FoListaDeProdutos[i].ToString + sLineBreak;
//            + 'Valor total: ' + ValorTotal.ToString;
  end;
end;

function TListaDeProdutos.QuantidadeItens: Integer;
begin
  Result := FoListaDeProdutos.Count;
end;

destructor TListaDeProdutos.Destroy;
begin
  if Assigned(FoListaDeProdutos) then
    FoListaDeProdutos.Free;
end;

end.

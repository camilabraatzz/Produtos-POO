unit uProduto;

interface

uses
  System.Classes, System.SysUtils;

type
  TProduto = class
  private
    FDescricao     : String;
    FQuantidade    : Integer;
    FValorUnitario : Double;
    function GetDescricao: String;
    function GetQuantidade: Integer;
    function GetValorUnitario: Double;
    procedure SetDescricao(const Value: String);
    procedure SetQuantidade(const Value: Integer);
    procedure SetValorUnitario(const Value: Double);
  public
    property Descricao : String read GetDescricao write SetDescricao;
    property Quantidade : Integer read GetQuantidade write SetQuantidade;
    property ValorUnitario: Double read GetValorUnitario write SetValorUnitario;
    function ToString : String; override;
    function ValorDesconto : Integer;
  end;
implementation

{ TProduto }

function TProduto.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TProduto.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

function TProduto.GetValorUnitario: Double;
begin
  Result := FValorUnitario;
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value;
end;

procedure TProduto.SetValorUnitario(const Value: Double);
begin
  FValorUnitario := Value;
end;

function TProduto.ToString: String;
begin
  Result := 'Descrição: ' + FDescricao + ' | '
          + 'Quantidade: ' + FQuantidade.ToString + ' | '
          + 'Valor unitário: ' + FValorUnitario.ToString;
end;

function TProduto.ValorDesconto: Integer;
begin
  case FQuantidade of
  1..10   : Result := 0;
  11..20  : Result := 10;
  21..50  : Result := 20;
  51..100 : Result := 25;
  end;
end;

end.

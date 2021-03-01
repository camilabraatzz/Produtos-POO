program prjProduto;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uException in 'Exception\uException.pas',
  uProduto in 'Classe\uProduto.pas',
  uListaProdutos in 'Classe\uListaProdutos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.

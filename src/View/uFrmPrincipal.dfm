object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 343
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 515
    Height = 81
    Align = alTop
    Caption = 'Produto'
    TabOrder = 0
    object edtDescricao: TLabeledEdit
      Left = 32
      Top = 44
      Width = 121
      Height = 21
      EditLabel.Width = 53
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o: '
      TabOrder = 0
    end
    object edtQuantidade: TLabeledEdit
      Left = 184
      Top = 44
      Width = 73
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade: '
      NumbersOnly = True
      TabOrder = 1
    end
    object edtValorUnitario: TLabeledEdit
      Left = 288
      Top = 44
      Width = 121
      Height = 21
      EditLabel.Width = 70
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor unit'#225'rio: '
      NumbersOnly = True
      TabOrder = 2
    end
    object btnExibirNota: TButton
      Left = 432
      Top = 44
      Width = 75
      Height = 21
      Caption = 'Exibir nota'
      TabOrder = 3
      OnClick = btnExibirNotaClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 81
    Width = 515
    Height = 211
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 515
    Height = 51
    Align = alBottom
    TabOrder = 2
    object edtValorTotal: TLabeledEdit
      Left = 386
      Top = 16
      Width = 121
      Height = 21
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor Total: '
      LabelPosition = lpLeft
      ReadOnly = True
      TabOrder = 0
    end
  end
end

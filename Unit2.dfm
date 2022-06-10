object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 291
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 8
    Top = 89
    Width = 592
    Height = 193
    TabOrder = 0
    OnChange = TabControl1Change
    object StringGrid1: TStringGrid
      Left = 4
      Top = 6
      Width = 584
      Height = 183
      Align = alClient
      TabOrder = 0
      OnDrawCell = StringGrid1DrawCell
    end
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 521
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Encher'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 521
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Esvaziar'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 264
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Contador'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 96
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Encher2'
    TabOrder = 6
    OnClick = Button6Click
  end
end

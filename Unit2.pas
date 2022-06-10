unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.StdCtrls, Vcl.ComCtrls, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope, Vcl.Grids, Data.DB, Datasnap.DBClient;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  X, Y: integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  TabControl1.Tabs.Append('NEW');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  TabControl1.Tabs.Clear;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if Y<5 then
    begin
      StringGrid1.Cells[Y,X]:= 'Linguiça';
      inc(Y);
    end
  else
    begin
      inc(X);
      Y:= 0;
    end;
end;

procedure TForm2.Button4Click(Sender: TObject);
var lin, col: integer;
begin
     for lin := 0 to StringGrid1.RowCount - 1 do
       for col := 0 to StringGrid1.ColCount - 1 do
         StringGrid1.Cells[col, lin] := '';
     X:=0;
     Y:=0;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  StringGrid1.RowCount:=5;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  if Y<5 then
    begin
      StringGrid1.Cells[Y,X]:= 'Salsicha';
      inc(Y);
    end
  else
    begin
      inc(X);
      Y:= 0;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
X:= 0;
Y:= 0;
end;

procedure TForm2.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if StringGrid1.Cells[ACol, ARow] = 'Salsicha' then
    StringGrid1.Canvas.Font.Color:= clRed
  else
    StringGrid1.Canvas.Font.Color:= clBlue;

  if ARow > 0 then
    if ARow mod 2 = 0 then
      StringGrid1.Canvas.Brush.Color := clWhite
    else
      StringGrid1.Canvas.Brush.Color := clWebWhiteSmoke
  else
      StringGrid1.Canvas.Brush.Color := clWebLightCyan;
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left+2, Rect.Top+5, StringGrid1.Cells[ACol,ARow]);
end;

procedure TForm2.TabControl1Change(Sender: TObject);
begin
  ShowMessage('Tab atual: ' + TabControl1.TabIndex.ToString);

end;

end.

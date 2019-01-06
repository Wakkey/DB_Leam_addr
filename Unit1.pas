unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
var
  frm:TForm2;
  no:integer;
begin
  no := ADOQuery1.RecordCount;

  frm := TForm2.Create(Self);
  frm.ShowModal;

  ADOQuery1.Close;

  ADOQuery1.sql.Text :=
    'INSERT INTO YUHI.ADDR(NO,NAME,ADDR,TEL1,TEL2,MAIL1,MAIL2)' +
    'VALUES('+
      no.ToString + ',"' +
      frm.adName.Text + '","' +
      frm.adaddr.Text + '","' +
      frm.adtel1.Text + '","' +
      frm.adtel2.Text + '","' +
      frm.admail1.Text + '","' +
      frm.admail2.Text + '"'
    +');';

  ADOQuery1.ExecSQL;

  ADOQuery1.Close;

  ADOQuery1.SQL.Text := 'SELECT * FROM YUHI.ADDR;';

  ADOQuery1.Open;

  frm.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Open('yuhi','m0jpw10p');
  //ADOQuery1.SQL.Text := 'select * form yuhi.addr';
  ADOQuery1.Open;
end;

end.

program Client;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  Inout in 'Inout.pas' {Form11},
  stats in 'stats.pas' {Form14},
  JUN in 'JUN.pas' {Form2},
  WorkList in 'WorkList.pas' {Form3},
  WorkTong in 'WorkTong.pas' {Form4},
  WorkEdit in 'WorkEdit.pas' {Form5},
  Workmagam in 'Workmagam.pas' {Form6},
  Tong_Worker in 'Tong_Worker.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

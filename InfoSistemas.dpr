program InfoSistemas;

uses
  Vcl.Forms,
  uFrmCliente in 'uFrmCliente.pas' {frmCLiente},
  UnAPIviacep in 'UnAPIviacep.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCLiente, frmCLiente);
  Application.Run;
end.

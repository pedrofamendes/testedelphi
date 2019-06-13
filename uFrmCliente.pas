unit uFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdCustomTCPServer,
  IdSocksServer;

type
  TfrmCLiente = class(TForm)
    pnlCliente: TPanel;
    cdsClientes: TClientDataSet;
    cdsClientesID: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesIDENTIDADE: TStringField;
    cdsClientesTELEFONE: TStringField;
    cdsClientesEMAIL: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesLOGRADOURO: TStringField;
    cdsClientesNUMERO: TIntegerField;
    cdsClientesCOMPLEMENTO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesPAIS: TStringField;
    dsClientes: TDataSource;
    lblNome: TLabel;
    dbEditNome: TDBEdit;
    lblIdentidade: TLabel;
    dbEditIdentidade: TDBEdit;
    lblTelefone: TLabel;
    dbEditTelefone: TDBEdit;
    lblEmail: TLabel;
    dbEditEmail: TDBEdit;
    grpEndereco: TGroupBox;
    lblCep: TLabel;
    dbEditCep: TDBEdit;
    lblRua: TLabel;
    dbEditRua: TDBEdit;
    lblNumero: TLabel;
    dbEditNumero: TDBEdit;
    lblComplemento: TLabel;
    dbEditComplemento: TDBEdit;
    lblBairro: TLabel;
    dbEditBairro: TDBEdit;
    lblCidade: TLabel;
    dbEditCidade: TDBEdit;
    lblEstado: TLabel;
    cdsClientesESTADO: TStringField;
    dbEditEstado: TDBEdit;
    lblPais: TLabel;
    dbEditPais: TDBEdit;
    navCliente: TDBNavigator;
    gridClientes: TDBGrid;
    IdSMTP: TIdSMTP;
    btnEnviarEmail: TButton;
    btnSalvarXml: TButton;
    IdMessage: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    procedure FormShow(Sender: TObject);
    procedure dbEditCepExit(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnSalvarXmlClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCLiente: TfrmCLiente;

implementation

{$R *.dfm}

uses UnAPIviacep;

procedure TfrmCLiente.btnEnviarEmailClick(Sender: TObject);
begin

  try
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username:= 'pedro.famendes@gmail.com';
    IdSMTP.Password := 'XXXXXXXX';


    IdMessage.From.Address:= 'pedro.famendes@gmail.com';
    IdMessage.Subject:= 'Avaliação Delphi Pedro Almeida';
    if not IdSMTP.Connected then
    begin
      IdSMTP.Connect();
      IdSMTP.Authenticate;
    end;


    IdSMTP.Send(IdMessage);

    ShowMessage('Email enviado com sucesso');
  finally
    IdSMTP.Disconnect;
  end;



end;

procedure TfrmCLiente.btnSalvarXmlClick(Sender: TObject);
begin
  if(cdsClientes.RecordCount > 0)then
  begin
    cdsClientes.SaveToFile('C:\delphoso\infoSistemas\clientes.xml');
    ShowMessage('clientes salvos em xml com sucesso');
  end;

end;

procedure TfrmCLiente.dbEditCepExit(Sender: TObject);
var
   UmAPIviacep : TAPIviacep;
begin
  try
    try
      UmAPIviacep := TAPIviacep.Create(cdsClientes.Fields.FieldByName('cep').AsString);
      //se encontrou o CEP, preenche os TEdits do form
      if (UmAPIviacep.GetRespCode = 200 ) then
      begin

        if(cdsClientes.State in[dsEdit,dsInsert])then
        begin
          cdsClientes.Fields.FieldByName('logradouro').AsString :=  UmAPIviacep.GetLogradouro;
          cdsClientes.Fields.FieldByName('bairro').AsString :=  UmAPIviacep.GetBairro;
          cdsClientes.Fields.FieldByName('complemento').AsString :=  UmAPIviacep.GetComplemento;
          cdsClientes.Fields.FieldByName('cidade').AsString :=  UmAPIviacep.GetLocalidade;
         end;

      end
      else if (UmAPIviacep.GetRespCode = 400) then
        showMessage('CEP inválido ou não encontrado');
    except
        on E:Exception do
        begin
          cdsClientes.Fields.FieldByName('cep').asstring := null;
          dbEditCep.Text := EmptyStr;
          ShowMessage('Número inválido');

        end;
    end;




   finally
     FreeAndNil(UmAPIviacep);
   end;
end;

procedure TfrmCLiente.FormCreate(Sender: TObject);
begin
  with IdSMTP do
    begin
       // AuthenticationType := atLogin;
        Host := 'smtp.gmail.com';
        IOHandler := IdSSLIOHandlerSocketOpenSSL;
        Password := '!@Java17';
        Port := 587;
        Username := 'pedro.famendes@gmail.com';
    end;

    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode := sslmClient;
end;

procedure TfrmCLiente.FormShow(Sender: TObject);
begin
  cdsClientes.Close;
  cdsClientes.CreateDataSet;
  cdsCLientes.Open;
end;

end.

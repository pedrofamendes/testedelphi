object frmCLiente: TfrmCLiente
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 480
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCliente: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 480
    Align = alClient
    TabOrder = 0
    object lblNome: TLabel
      Left = 69
      Top = 29
      Width = 31
      Height = 13
      Caption = 'Nome:'
      FocusControl = dbEditNome
    end
    object lblIdentidade: TLabel
      Left = 44
      Top = 56
      Width = 56
      Height = 13
      Caption = 'Identidade:'
      FocusControl = dbEditIdentidade
    end
    object lblTelefone: TLabel
      Left = 54
      Top = 83
      Width = 46
      Height = 13
      Caption = 'Telefone:'
      FocusControl = dbEditTelefone
    end
    object lblEmail: TLabel
      Left = 69
      Top = 110
      Width = 28
      Height = 13
      Caption = 'email:'
      FocusControl = dbEditEmail
    end
    object dbEditNome: TDBEdit
      Left = 102
      Top = 26
      Width = 361
      Height = 21
      DataField = 'NOME'
      DataSource = dsClientes
      TabOrder = 0
    end
    object dbEditIdentidade: TDBEdit
      Left = 102
      Top = 53
      Width = 134
      Height = 21
      DataField = 'IDENTIDADE'
      DataSource = dsClientes
      TabOrder = 1
    end
    object dbEditTelefone: TDBEdit
      Left = 102
      Top = 80
      Width = 134
      Height = 21
      DataField = 'TELEFONE'
      DataSource = dsClientes
      TabOrder = 2
    end
    object dbEditEmail: TDBEdit
      Left = 102
      Top = 107
      Width = 300
      Height = 21
      DataField = 'EMAIL'
      DataSource = dsClientes
      TabOrder = 3
    end
    object grpEndereco: TGroupBox
      Left = 16
      Top = 136
      Width = 704
      Height = 153
      Caption = 'Endere'#231'o:'
      TabOrder = 4
      object lblCep: TLabel
        Left = 58
        Top = 24
        Width = 23
        Height = 13
        Caption = 'CEP:'
        FocusControl = dbEditCep
      end
      object lblRua: TLabel
        Left = 57
        Top = 50
        Width = 23
        Height = 13
        Caption = 'Rua:'
        FocusControl = dbEditRua
      end
      object lblNumero: TLabel
        Left = 39
        Top = 76
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
        FocusControl = dbEditNumero
      end
      object lblComplemento: TLabel
        Left = 11
        Top = 104
        Width = 69
        Height = 13
        Caption = 'Complemento:'
        FocusControl = dbEditComplemento
      end
      object lblBairro: TLabel
        Left = 360
        Top = 23
        Width = 32
        Height = 13
        Caption = 'Bairro:'
        FocusControl = dbEditBairro
      end
      object lblCidade: TLabel
        Left = 355
        Top = 50
        Width = 37
        Height = 13
        Caption = 'Cidade:'
        FocusControl = dbEditCidade
      end
      object lblEstado: TLabel
        Left = 355
        Top = 78
        Width = 37
        Height = 13
        Caption = 'Estado:'
      end
      object lblPais: TLabel
        Left = 369
        Top = 104
        Width = 23
        Height = 13
        Caption = 'Pais:'
        FocusControl = dbEditPais
      end
      object dbEditCep: TDBEdit
        Left = 86
        Top = 20
        Width = 108
        Height = 21
        DataField = 'CEP'
        DataSource = dsClientes
        TabOrder = 0
        OnExit = dbEditCepExit
      end
      object dbEditRua: TDBEdit
        Left = 86
        Top = 47
        Width = 267
        Height = 21
        DataField = 'LOGRADOURO'
        DataSource = dsClientes
        TabOrder = 1
      end
      object dbEditNumero: TDBEdit
        Left = 86
        Top = 74
        Width = 134
        Height = 21
        DataField = 'NUMERO'
        DataSource = dsClientes
        TabOrder = 2
      end
      object dbEditComplemento: TDBEdit
        Left = 86
        Top = 101
        Width = 267
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = dsClientes
        TabOrder = 3
      end
      object dbEditBairro: TDBEdit
        Left = 398
        Top = 20
        Width = 250
        Height = 21
        DataField = 'BAIRRO'
        DataSource = dsClientes
        TabOrder = 4
      end
      object dbEditCidade: TDBEdit
        Left = 398
        Top = 47
        Width = 250
        Height = 21
        DataField = 'CIDADE'
        DataSource = dsClientes
        TabOrder = 5
      end
      object dbEditEstado: TDBEdit
        Left = 398
        Top = 74
        Width = 200
        Height = 21
        DataField = 'ESTADO'
        DataSource = dsClientes
        TabOrder = 6
      end
      object dbEditPais: TDBEdit
        Left = 398
        Top = 101
        Width = 250
        Height = 21
        DataField = 'PAIS'
        DataSource = dsClientes
        TabOrder = 7
      end
    end
    object navCliente: TDBNavigator
      Left = 480
      Top = 23
      Width = 240
      Height = 25
      DataSource = dsClientes
      TabOrder = 5
    end
    object gridClientes: TDBGrid
      Left = 16
      Top = 295
      Width = 704
      Height = 162
      DataSource = dsClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDENTIDADE'
          Title.Caption = 'Identidade'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Caption = 'Telefone'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'email'
          Width = 261
          Visible = True
        end>
    end
    object btnEnviarEmail: TButton
      Left = 480
      Top = 85
      Width = 126
      Height = 25
      Caption = 'Enviar email'
      TabOrder = 7
      OnClick = btnEnviarEmailClick
    end
    object btnSalvarXml: TButton
      Left = 480
      Top = 54
      Width = 126
      Height = 25
      Caption = 'Salvar Dados em xml'
      TabOrder = 8
      OnClick = btnSalvarXmlClick
    end
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 56
    object cdsClientesID: TIntegerField
      FieldName = 'ID'
    end
    object cdsClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsClientesIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object cdsClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object cdsClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsClientesLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object cdsClientesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object cdsClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClientesPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object cdsClientesESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 664
    Top = 104
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 680
    Top = 176
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 680
    Top = 224
  end
  object IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 424
    Top = 96
  end
end

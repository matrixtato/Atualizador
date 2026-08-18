; Script gerado pelo Inno Setup Script Wizard - Personalizado para Servus Fidelis

#define MyAppName "Servus Fidelis"
#define MyAppVersion "1.0.0.2"
#define MyAppPublisher "Servus Fidelis"
#define MyAppURL "https://www.linkedin.com/in/jonathan-andrietti-ba4bb033/"
#define MyAppExeName "ServusFidelis.exe"

[Setup]
; Identificador único do aplicativo (GUID)
AppId={{2CB9FC29-9582-42D6-99A7-3F364585AD50}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}

; Diretório padrão de instalação do sistema
DefaultDirName=C:\Visão_Futura\{#MyAppName}
DefaultGroupName={#MyAppName}

; Permite ao usuário escolher não criar menu no Menu Iniciar
AllowNoIcons=yes

; Destino onde a compilação do .exe do instalador será salva
OutputDir=C:\Visão_Futura\Servus Fidelis\Atualizador
OutputBaseFilename=Atualizar Servus Fidelis

; Ícone do instalador (utilizado na tela de instalação e no executável gerado)
SetupIconFile=C:\Visão_Futura\Servus Fidelis\Imagens\Atualiza.ico

; Algoritmos de compressão pesada para gerar um instalador menor
Compression=lzma2/ultra64
SolidCompression=yes

; Solicita que o Windows feche o sistema automaticamente se ele estiver aberto durante a instalação/atualização
CloseApplications=yes
RestartApplications=no

[Languages]
; Idioma do assistente de instalação
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
; Cria atalho na Área de Trabalho (Marcado por padrão)
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
; Executável Principal e Arquivos Complementares
Source: "C:\Visão_Futura\Servus Fidelis\ServusFidelis.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\Alarme.wav"; DestDir: "{app}"; Flags: ignoreversion

; DLLs de Dependência e Conexão de Banco de Dados
;Source: "C:\Visão_Futura\Servus Fidelis\borlndmm.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\DllInscE32.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\libcrypto-3.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\libiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\libssl-3.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\libsybdb-5.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\midas.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\mscorlib.DLL"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\ntwdblib.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\Rz_MsSql.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\Servus_MsSql.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Visão_Futura\Servus Fidelis\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion

; Copia apenas o arquivo de ícone LogoSF.ico para a pasta Imagens do sistema
;Source: "C:\Visão_Futura\Servus Fidelis\Imagens\LogoSF.ico"; DestDir: "{app}\Imagens"; Flags: ignoreversion

; Se o SQLServus.db não existir no cliente, copia o BancoZero.db renomeando para SQLServus.db.
; Se já existir, ignora e preserva os dados do cliente.
;Source: "C:\Visão_Futura\Servus Fidelis\Dados\BancoZero.db"; DestDir: "{app}\Dados"; DestName: "SQLServus.db"; Flags: onlyifdoesntexist

[Icons]
; Atalhos no Menu Iniciar
;Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\Imagens\LogoSF.ico"
;Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
;Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

; Atalho na Área de Trabalho
;Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: "{app}\Imagens\LogoSF.ico"

[Run]
; Opção de iniciar o sistema ao concluir a instalação
;Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
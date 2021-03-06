; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ProjetoIntegracao"
#define MyAppVersion "1.0"
#define MyAppPublisher "Eletra Energy Solutions"
#define MyAppExeName "IntegrationProject-1.0.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C2BCBD04-F7FB-4465-A0B6-2F600B289621}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DisableStartupPrompt=Yes
DisableDirPage=Yes
DisableProgramGroupPage=Yes
DisableReadyPage=Yes
DisableFinishedPage=Yes
DisableWelcomePage=Yes
DefaultGroupName={#MyAppPublisher}
;Optional License
LicenseFile=
;WinXP or above
OutputBaseFilename=IntegracaoProjeto-1.0
AllowNoIcons=yes
MinVersion=0,5.1
SetupIconFile=C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\src\main\deploy\package\windows\IntegrationProject.ico
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon=C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\src\main\deploy\package\windows\IntegrationProject.ico
UninstallDisplayName=IntegrationProject
WizardImageStretch=No
WizardSmallImageFile=C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\src\main\deploy\package\windows\IntegrationProject-setup-icon.bmp
ArchitecturesInstallIn64BitMode=
UsePreviousGroup=no
UsePreviousAppDir=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\target\jfx\native\IntegrationProject-1.0.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\target\jfx\native\IntegrationProject-1.0.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\target\jfx\native\IntegrationProject\app\Step3-Front-0.0.1-SNAPSHOT-jfx.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\b_ren\eclipse-workspace2\FrontIntegrationProject\src\main\deploy\package\windows\IntegrationProject.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{localappdata}\IntegrationProject\uninstall.exe"; Flags: skipifdoesntexist
Filename: "{app}\{#MyAppExeName}"; Parameters: "-Xappcds:generatecache"; Check: returnFalse()
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
Filename: "{app}\{#MyAppExeName}"; Parameters: "-install -svcName ""IntegrationProject"" -svcDesc ""IntegrationProject"" -mainExe ""IntegrationProject-1.0.exe"" "; Check: returnFalse()

[InstallDelete]
Type: files; Name: "{commondesktop}\IntegrationProject.lnk";

[UninstallRun]
Filename: "{app}\{#MyAppExeName} "; Parameters: "-uninstall -svcName IntegrationProject -stopOnUninstall"; Check: returnFalse()

[Code]
function returnTrue(): Boolean;
begin
  Result := True;
end;

function returnFalse(): Boolean;
begin
  Result := False;
end;

function InitializeSetup(): Boolean;
begin
//  Possible future improvements:
//    if version less or same => just launch app
//    if upgrade => check if same app is running and wait for it to exit
//    Add pack200/unpack200 support?
  Result := True;
end;


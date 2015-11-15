; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#include <idp.iss>

#define MyAppName "QuantAn"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "University of West Bohemia, NTIS"
#define MyAppURL "http://mjirik.github.io/quantan/"

[Files]
;Source: "{tmp}\Miniconda-latest-Windows-x86_64.exe"; DestDir: "{app}"; Flags: external; ExternalSize: 22743040
Source: "quantan\icon\icon.ico"; DestDir: "{app}"
Source: "..\..\Downloads\Miniconda-latest-Windows-x86_64.exe"; DestDir: "{tmp}"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{08C90394-34FC-432B-9AF0-D7E48F337DFC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
;DefaultDirName={pf}\{#MyAppName}
DefaultDirName={%HOMEPATH}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=setup_quantan
Compression=lzma
SolidCompression=yes
;PrivilegesRequired=lowest
UsePreviousSetupType=False
UsePreviousTasks=False
UsePreviousLanguage=False
ExtraDiskSpaceRequired=43
SetupIconFile=quantan\icon\icon.ico
UsePreviousAppDir=False

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"

[Run]
;Filename: "{tmp}\Miniconda-latest-Windows-x86_64.exe"; Parameters: "/InstallationType=JustMe /AddToPath=1"; Flags: runasoriginaluser
Filename: "{tmp}\Miniconda-latest-Windows-x86_64.exe"; Parameters: "/AddToPath=1 /RegisterPython=1 /D={%HOMEPATH}\Minicoconda2"; Flags: waituntilterminated runasoriginaluser
; Filename: "{cmd}"; Parameters: "/C ""pause"""
;Filename: "{cmd}"; Parameters: "/C ""conda config --add http://conda.anaconda.org/simpleitk """
;Filename: "{cmd}"; Parameters: "/C ""conda config --add http://conda.anaconda.org/mjirik """

Filename: "{cmd}"; Parameters: "/C ""conda install --yes -c SimpleITK -c mjirik quantan"""; WorkingDir: "{%HOMEPATH}\Miniconda2\Scripts"; Flags: runasoriginaluser
;Filename: "{cmd}"; Parameters: "/C ""conda install --yes -c mjirik -c SimpleITK quantan """

; this works too
;Filename: "{userdocs}\..\Miniconda2\scripts\conda.exe"; Parameters: "install --yes -c mjirik -c SimpleITK quantan"

;Filename: "{cmd}"; Parameters: "/C ""pause"""
;Filename: "{%HOME}\Miniconda2\conda.exe"; Parameters: "install quantan"
;Filename: "net.exe"; Parameters: "localgroup ..."
;Filename: "{cmd}"; Parameters: "/C ""pause"""

;[Code]
;procedure InitializeWizard();
;begin
;    idpAddFileSize('https://repo.continuum.io/miniconda/Miniconda-latest-Windows-x86_64.exe', ExpandConstant('{tmp}\Miniconda-latest-Windows-x86_64.exe'), 22743040);
;
;    idpDownloadAfter(wpReady);
;end;

[Icons]
Name: "{group}\QuantAn"; Filename: "{cmd}"; Flags: runminimized; IconFilename: "{app}\icon.ico"; IconIndex: 0; Parameters: "/C ""python -m quantan"""

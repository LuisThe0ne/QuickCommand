; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Quick Command"
#define MyAppVersion "1.0"
#define MyAppPublisher "LuistheOne"
#define MyAppURL "http://www.luistheone.net/"
[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; \
    ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{win}\QuickCommand\functions"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{02316637-42F4-49BC-9022-360445BBA4F6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={win}\QuickCommand\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile="V:\Technik\Batch\Quick Command\note.txt"
LicenseFile="V:\Technik\Batch\Quick Command\license.txt"
; Remove the following line to run in administrative install mode (install for all users.)

OutputDir=V:\Technik\Setup's\QuickCommand
OutputBaseFilename=QuickCommand
Compression=lzma
SolidCompression=yes
WizardStyle=modern


[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Files]                                                                    
Source: "V:\Technik\Batch\Quick Command\Quick Command.cmd"; DestDir: "{win}\QuickCommand"; Flags: ignoreversion
Source: "V:\Technik\Batch\Quick Command\Quick Command.lnk"; DestDir: "{userdesktop}"; Flags: ignoreversion
Source: "V:\Technik\Batch\Quick Command\note.txt"; DestDir: "{win}\QuickCommand"; Flags: ignoreversion
Source: "V:\Technik\Batch\Quick Command\functions\-status.cmd"; DestDir: "{win}\QuickCommand\functions"; Flags: ignoreversion
Source: "V:\Technik\Batch\Quick Command\license.txt"; DestDir: "{win}\QuickCommand"; Flags: ignoreversion
Source: "V:\Technik\Batch\Quick Command\functions\-date.cmd"; DestDir: "{win}\QuickCommand\functions"; Flags: ignoreversion
Source: "V:\Technik\Batch\Quick Command\functions\-time.cmd"; DestDir: "{win}\QuickCommand\functions"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files


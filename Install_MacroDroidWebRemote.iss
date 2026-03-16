[Setup]
AppName=MacroDroid Web Remote
AppVersion=2.2.1
;AppVerName=MacroDroid Web Remote 2.2.1
AppPublisher=Yves Balestra
AppPublisherURL=https://yves.balestra.com
AppSupportURL=https://yves.balestra.com
AppUpdatesURL=https://yves.balestra.com
DefaultDirName={autopf}\MacroDroidWebRemote
DefaultGroupName=MacroDroid Web Remote
DisableProgramGroupPage=yes
OutputDir=Output
OutputBaseFilename=Install_MacroDroidWebRemote_v2.2.1
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "index.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "favicon.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "favicon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "manifest.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "sw.js"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "macrodroid_boutons_sauvegarde.json"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist
Source: "macrodroid_telephones_sauvegarde.json"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist

[Icons]
Name: "{autoprograms}\MacroDroid Web Remote"; Filename: "{app}\index.html"; IconFilename: "{app}\favicon.ico"
Name: "{autodesktop}\MacroDroid Web Remote"; Filename: "{app}\index.html"; IconFilename: "{app}\favicon.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Setup]
AppName=MacroDroid Web Remote
AppVersion=1.0.0
AppPublisher=Yves Balestra
AppPublisherURL=mailto:yves.balestra@gmail.com
DefaultDirName={autopf}\MacroDroid Web Remote
DefaultGroupName=MacroDroid Web Remote
OutputDir=Output
OutputBaseFilename=Install_MacroDroidWebRemote_v1.0.0
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

[Icons]
Name: "{autoprograms}\MacroDroid Web Remote"; Filename: "{app}\index.html"; IconFilename: "{app}\favicon.ico"
Name: "{autodesktop}\MacroDroid Web Remote"; Filename: "{app}\index.html"; IconFilename: "{app}\favicon.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

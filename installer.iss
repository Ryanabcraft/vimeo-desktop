[Setup]
AppName=Vimeo Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/vimeo-desktop
AppSupportURL=https://github.com/Ryanabcraft/vimeo-desktop/issues
DefaultDirName={localappdata}\Vimeo Desktop
DefaultGroupName=Vimeo Desktop
UninstallDisplayIcon={app}\Vimeo.exe
UninstallDisplayName=Vimeo Desktop
OutputDir=dist_installer
OutputBaseFilename=Vimeo-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Vimeo.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Vimeo"; Filename: "{app}\Vimeo.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Vimeo Desktop"; Filename: "{app}\Vimeo.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Vimeo Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Vimeo.exe"; Description: "Executar Vimeo Desktop"; Flags: postinstall nowait skipifsilent

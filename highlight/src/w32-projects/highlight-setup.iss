; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Highlight Code Converter

AppVerName=WinHighlight
OutputBaseFilename=highlight-setup-3.2

AppPublisher=Andr� Simon
AppPublisherURL=http://www.andre-simon.de
AppSupportURL=http://wiki.andre-simon.de
AppUpdatesURL=http://www.andre-simon.de
DefaultDirName={pf}\WinHighlight
DefaultGroupName=Highlight Code Converter
AllowNoIcons=yes
LicenseFile=..\..\COPYING
InfoAfterFile=..\..\README
Compression=lzma/max
SolidCompression=yes
PrivilegesRequired=none

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"

[Files]
Source: "..\..\highlight-gui.exe"; DestDir: "{app}";  Flags: ignoreversion
Source: "dlls\*.dll"; DestDir: "{app}";  Flags: ignoreversion
Source: "hl_icon_exe.ico"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\langDefs\*.lang"; DestDir: "{app}\langDefs\";  Flags: ignoreversion sortfilesbyextension
Source: "..\..\themes\*.theme"; DestDir: "{app}\themes\";  Flags: ignoreversion sortfilesbyextension
Source: "..\..\README*"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\TODO"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\AUTHORS"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\ChangeLog"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\COPYING"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\filetypes.conf"; DestDir: "{app}";  Flags: ignoreversion
Source: "..\..\gui_files\l10n\*.qm"; DestDir: "{app}\gui_files\l10n\";  Flags: ignoreversion sortfilesbyextension
Source: "..\..\gui_files\ext\*.*"; DestDir: "{app}\gui_files\ext\";  Flags: ignoreversion
Source: "..\..\examples\*.py";  DestDir: "{app}\examples\";  Flags: ignoreversion;
Source: "..\..\plugins\*.lua";  DestDir: "{app}\plugins\";  Flags: ignoreversion;

Source: "..\..\highlight.exe";   DestDir: "{app}";  Flags: ignoreversion; Components: cli;
Source: "..\..\man\*.*";  DestDir: "{app}\man\";  Flags: ignoreversion; Components: cli;
Source: "..\..\examples\highlight_pipe.*";  DestDir: "{app}\examples\";  Flags: ignoreversion; Components: cli;
Source: "..\..\examples\swig\*.*";  DestDir: "{app}\examples\swig";  Flags: ignoreversion; Components: cli;
Source: "..\..\examples\web_plugins\dokuwiki\*.*";  DestDir: "{app}\examples\plugins\dokuwiki\";  Flags: ignoreversion; Components: cli;
Source: "..\..\examples\web_plugins\movabletype\*.*";  DestDir: "{app}\examples\plugins\movabletype\";  Flags: ignoreversion; Components: cli;
Source: "..\..\examples\web_plugins\wordpress\*.*";  DestDir: "{app}\examples\plugins\wordpress";  Flags: ignoreversion; Components: cli;
Source: "..\..\examples\web_plugins\serendipity_event_highlight\*.*";  DestDir: "{app}\examples\plugins\serendipity_event_highlight";  Flags: ignoreversion; Components: cli;

Source: "..\include\*.*";  DestDir: "{app}\src\include\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\include\astyle\*.*";  DestDir: "{app}\src\include\astyle\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\include\re\*.*";  DestDir: "{app}\src\include\re\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\include\Diluculum\*.*";  DestDir: "{app}\src\include\Diluculum\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\core\*.*";  Excludes: "*.o,*.depend"; DestDir: "{app}\src\core\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\core\re\*.*";  Excludes: "*.o"; DestDir: "{app}\src\core\re\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\core\astyle\*.*";  Excludes: "*.o"; DestDir: "{app}\src\core\astyle\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\core\Diluculum\*.*";  Excludes: "*.o"; DestDir: "{app}\src\core\Diluculum\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\gui-qt\*.*";  Excludes: "*.o,*.Release,*.Debug,ui_*,*.user,*.qm,Makefile"; DestDir: "{app}\src\gui-qt\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\cli\*.*";  Excludes: "*.o"; DestDir: "{app}\src\cli\";  Flags: ignoreversion; Components: sourcecode;

Source: "..\w32-projects\*.iss";   DestDir: "{app}\projectfiles\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\w32-projects\highlight_cli\*.pro";   DestDir: "{app}\projectfiles\highlight_cli\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\w32-projects\highlight_lib\*.pro";   DestDir: "{app}\projectfiles\highlight_lib\";  Flags: ignoreversion; Components: sourcecode;
Source: "..\w32-projects\highlight_gui\*.*"; Excludes: "*.o,*.Release,*.Debug,ui_*,*.user,*.qm,Makefile"; DestDir: "{app}\projectfiles\highlight_gui\";  Flags: ignoreversion; Components: sourcecode;



[Dirs]
Name: "{userappdata}\WinHighlight"; Attribs: hidden

[Components]
Name: "main"; Description: "Highlight GUI"; Types: full compact custom; Flags: fixed
Name: "cli"; Description: "Highlight command line interface"; Types: full
Name: "sourcecode"; Description: "Source code"; Types: full

[INI]
Filename: "{app}\Highlight.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.andre-simon.de"

[Icons]
Name: "{group}\Highlight Code Converter"; Filename: "{app}\highlight-gui.exe";  IconFilename: "{app}\hl_icon_exe.ico";WorkingDir: "{app}"
Name: "{group}\Highlight Code Converter on the Web"; Filename: "{app}\WinHighlight.url"
Name: "{group}\Uninstall Highlight Code Converter"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Highlight Code Converter"; Filename: "{app}\highlight-gui.exe"; Tasks: desktopicon; IconFilename: "{app}\hl_icon_exe.ico";WorkingDir: "{app}"
;Name: "{sendto}\Highlight"; Filename: "{app}\highlight-gui.exe";  IconFilename: "{app}\hl_icon_exe.ico";WorkingDir: "{app}"; Check: MyProgCheck

[Run]
Filename: "{app}\highlight-gui.exe"; Description: "Launch Highlight Code Converter"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\Highlight.url"

;[Code]

;function MyProgCheck(): Boolean;
;begin
;  Result := MsgBox('Do you want to create an entry of Highlight in your SendTo folder?', mbConfirmation, MB_YESNO) = idYes;
;end;


;; OpenSong Version 2.1 Installer Script

; If any version below the specified version is used for compiling,
; this error will be shown.
; Periods are automatically added at the end of the message.
#if VER < EncodeVer(5,5,2)
  #error You must use Inno Setup 5.5.2 or newer to compile this script
#endif

#ifdef UNICODE
  ; Do nothing, since Unicode is needed to compile
#else
  ; If non-Unicode (AKA ANSI) Inno Setup is used
  #error You must use Unicode Inno Setup to compile this script
#endif

; The ISPP eliminates redundant typing and prevents errors.
; Changing these values changes all other values that refer back to here.
#define MyAppName "OpenSong"
#define MyAppVersion "2.1.0"
#define MyAppVerName "OpenSong Version 2.1"
#define MyAppPublisher "OpenSong Development Team"
#define MyAppURL "http://opensong.org/"
#define MyAppExeName "OpenSong.exe"

[Setup]
; Always generate a new GUID before compiling,
; as it uniquely identifies the release. Never use the same AppId value
; or other versions or leave it blank so the Add/Remove Programs entry
; will not be overwritten with each new release.
AppID={#MyAppName}, {#MyAppVersion}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppVerName}
VersionInfoVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
VersionInfoDescription=OpenSong is a free, open-source software application created to manage lyrics, chords, lead sheets, overheads, computer projection, and more.
VersionInfoCopyright=2012
AppCopyright=2012
LicenseFile=OpenSong License\gpl-en.txt
; Start menu\screen and Desktop shortcuts
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=True
; Installer Graphics
SetupIconFile=OpenSong2.ico
WizardImageFile=Installer-Sidebar.bmp
WizardSmallImageFile=Installer-Icon.bmp
WizardImageBackColor=clWhite
; Location of the compiled Installer
OutputDir=Output
OutputBaseFilename={#MyAppVerName} Setup
; Show Language selection dialog
ShowLanguageDialog=yes
; Uninstallation items
UninstallFilesDir={app}
UninstallDisplayIcon={app}\OpenSong2Uninstall.ico
; An uninstall string and Exe won't be created if it was installed
; in portable mode, otherwise they will.
Uninstallable=not IsTaskSelected('Portable')
CreateUninstallRegKey=not IsTaskSelected('Portable')
UninstallDisplayName={#MyAppVerName}
; Compression
Compression=lzma2/ultra64
SolidCompression=True
InternalCompressLevel=ultra
LZMAUseSeparateProcess=yes
; Do not inherit previously selected installation options
UsePreviousTasks=no

[Languages]
; Arranged in alphabetical order (according to native name),
; but with English on top
Name: english; MessagesFile: compiler:Default.isl; LicenseFile: OpenSong License\gpl-en.txt
Name: czech; MessagesFile: compiler:Languages\Czech.isl; LicenseFile: OpenSong License\gpl-cs.pdf
Name: nederlands; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: OpenSong License\gpl-nl.txt

; Unofficial Inno Setup Translation (required)
Name: estonian; MessagesFile: IS Languages\Estonian.isl; LicenseFile: OpenSong License\gpl-en.txt
Name: francais; MessagesFile: compiler:Languages\French.isl; LicenseFile: OpenSong License\gpl-fr.txt
Name: deutsch; MessagesFile: compiler:Languages\German.isl; LicenseFile: OpenSong License\gpl-de.txt
Name: magyar; MessagesFile: compiler:Languages\Hungarian.isl; LicenseFile: OpenSong License\gpl-hu.txt

; Unofficial Inno Setup Translation (required)
Name: svenska; MessagesFile: IS Languages\Swedish.isl; LicenseFile: OpenSong License\gpl-sv.txt

Name: italiano; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: OpenSong License\gpl-it.txt
Name: norwegian; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: OpenSong License\gpl-no.txt
Name: polski; MessagesFile: compiler:Languages\Polish.isl; LicenseFile: OpenSong License\gpl-pl.pdf
Name: portugues; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: OpenSong License\gpl-pt.txt
Name: portuguesbrazil; MessagesFile: compiler:Languages\BrazilianPortuguese.isl; LicenseFile: OpenSong License\gpl-pt_BR.txt
Name: espanol; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: OpenSong License\gpl-es.txt
Name: russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: OpenSong License\gpl-ru.txt

; Unofficial Inno Setup Translation (required)
Name: slovak; MessagesFile: IS Languages\Slovak.isl; LicenseFile: OpenSong License\gpl-en.txt

Name: slovenian; MessagesFile: compiler:Languages\Slovenian.isl; LicenseFile: OpenSong License\gpl-sv.txt

; Unofficial Inno Setup Translation (required)
Name: turkish; MessagesFile: IS Languages\Turkish.isl; LicenseFile: OpenSong License\gpl-en.txt

[Dirs]
; Create all the directories
Name: {app}\OpenSong Data; Tasks: Portable
Name: {app}\OpenSong Defaults
Name: {app}\OpenSong Scripture
Name: {app}\OpenSong Languages
Name: {app}\OpenSong Settings
Name: {app}\OpenSong Defaults\Settings
Name: {app}\OpenSong Defaults\Backgrounds; Components: Extras\Backgrounds
Name: {app}\OpenSong Defaults\Sets; Components: Extras\Example_Sets
Name: {app}\OpenSong Defaults\Songs; Components: Extras\Songs
Name: {app}\OpenSong Libs

[Files]
; Change logs, Exe
Source: "changelog.txt"; DestDir: "{app}"
Source: "Language-Changelog.txt"; DestDir: "{app}"
Source: "OpenSong.exe"; DestDir: "{app}"

; OpenSong Defaults folder
Source: "OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Defaults\Settings"
Source: "OpenSong Defaults\Backgrounds\*"; DestDir: "{app}\OpenSong Defaults\Backgrounds"; Components: Extras\Backgrounds
Source: "OpenSong Defaults\Sets\*"; DestDir: "{app}\OpenSong Defaults\Sets"; Components: Extras\Example_Sets
Source: "OpenSong Defaults\Songs\*"; DestDir: "{app}\OpenSong Defaults\Songs"; Components: Extras\Songs

; OpenSong Scripture, Settings, and Libs folders
Source: "OpenSong Scripture\*"; DestDir: "{app}\OpenSong Scripture"; Components: Bibles\KJV
Source: "OpenSong Settings\*"; DestDir: "{app}\OpenSong Settings"
Source: "OpenSong Libs\*"; DestDir: "{app}\OpenSong Libs"

; OpenSong Languages files
; Arranged in alphabetical order (according to native name)
Source: "OpenSong Languages\English"; DestDir: "{app}\OpenSong Languages"
Source: "OpenSong Languages\Čeština"; DestDir: "{app}\OpenSong Languages"; Components: Languages\czech
Source: "OpenSong Languages\Deutsch"; DestDir: "{app}\OpenSong Languages"; Components: Languages\german
Source: "OpenSong Languages\Español"; DestDir: "{app}\OpenSong Languages"; Components: Languages\spanish
Source: "OpenSong Languages\Estonian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\estonian
Source: "OpenSong Languages\Francais"; DestDir: "{app}\OpenSong Languages"; Components: Languages\french
Source: "OpenSong Languages\Italiano"; DestDir: "{app}\OpenSong Languages"; Components: Languages\italian
Source: "OpenSong Languages\Nederlands"; DestDir: "{app}\OpenSong Languages"; Components: Languages\dutch
Source: "OpenSong Languages\Magyar"; DestDir: "{app}\OpenSong Languages"; Components: Languages\hungarian
Source: "OpenSong Languages\Norwegian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\norwegian
Source: "OpenSong Languages\Polski"; DestDir: "{app}\OpenSong Languages"; Components: Languages\polish
Source: "OpenSong Languages\Portugues"; DestDir: "{app}\OpenSong Languages"; Components: Languages\portugues
Source: "OpenSong Languages\Portugues(Brasil)"; DestDir: "{app}\OpenSong Languages"; Components: Languages\portuguesbrasil
Source: "OpenSong Languages\Russian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\russian
Source: "OpenSong Languages\Slovak"; DestDir: "{app}\OpenSong Languages"; Components: Languages\slovak
Source: "OpenSong Languages\Slovenian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\slovenian
Source: "OpenSong Languages\Svenska"; DestDir: "{app}\OpenSong Languages"; Components: Languages\swedish
Source: "OpenSong Languages\Türkçe"; DestDir: "{app}\OpenSong Languages"; Components: Languages\turkish

; GPL V2 License files
Source: "OpenSong License\gpl-cs.pdf"; DestDir: "{app}\OpenSong License"; Components: Languages\czech
Source: "OpenSong License\gpl-nl.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\dutch
Source: "OpenSong License\gpl-es.txt"; DestDir: "{app}\OpenSong License"
Source: "OpenSong License\gpl-fr.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\french
Source: "OpenSong License\gpl-de.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\german
Source: "OpenSong License\gpl-hu.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\hungarian
Source: "OpenSong License\gpl-it.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\italian
Source: "OpenSong License\gpl-no.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\norwegian
Source: "OpenSong License\gpl-pl.pdf"; DestDir: "{app}\OpenSong License"; Components: Languages\polish
Source: "OpenSong License\gpl-ru.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\russian
Source: "OpenSong License\gpl-es.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\spanish
Source: "OpenSong License\gpl-sv.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\swedish
Source: "OpenSong License\gpl-pt.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\portugues
Source: "OpenSong License\gpl-pt_BR.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\portuguesbrasil

; OpenSong 2.1 Icons
Source: "OpenSong2.ico"; DestDir: "{app}"
Source: "OpenSong2Uninstall.ico"; DestDir: "{app}"

; Portable Switch
Source: "OpenSong Portable\GlobalsInstall"; DestDir: "{app}\OpenSong Settings"; DestName: "Globals"; Check: not IsTaskSelected('Portable')
Source: "OpenSong Portable\GlobalsPortable"; DestDir: "{app}\OpenSong Settings"; DestName: "Globals"; Check: IsTaskSelected('Portable')

; Allow the user to reset the OpenSong preferences if desired.
Source: "OpenSong Settings\preferences.plist"; DestDir: "{userappdata}\OpenSong"; Flags: uninsneveruninstall; Tasks: ResetPrefs; Permissions: users-modify; Check: not IsTaskSelected('Portable')
Source: "OpenSong Settings\preferences.plist"; DestDir: "{app}\OpenSong Settings"; Flags: uninsneveruninstall; Tasks: ResetPrefs; Permissions: users-modify; Check: IsTaskSelected('Portable')

; Create the OpenSong Data files when Portable is selected, depending if they are selected in the first place.
Source: "OpenSong Defaults\Backgrounds\*"; DestDir: "{app}\OpenSong Data\Backgrounds"; Components: Extras\Backgrounds; Check: IsTaskSelected('Portable')
Source: "OpenSong Defaults\Songs\*"; DestDir: "{app}\OpenSong Data\Songs"; Components: Extras\Songs; Check: IsTaskSelected('Portable')
Source: "OpenSong Defaults\Sets\*"; DestDir: "{app}\OpenSong Data\Sets"; Components: Extras\Example_Sets; Check: IsTaskSelected('Portable')
Source: "OpenSong Scripture\*"; DestDir: "{app}\OpenSong Data\Scripture"; Components: Bibles\KJV; Check: IsTaskSelected('Portable')
Source: "OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Data\Settings"; Check: IsTaskSelected('Portable')

[Types]
; Installation types
Name: Normal; Description: Normal installation
Name: Full; Description: Full installation
Name: Custom; Description: Custom installation; Flags: iscustom

[Components]
; OpenSong itself, cannot be deselected
Name: {#MyAppName}; Description: {#MyAppVerName}; Types: Custom Normal Full; Flags: fixed

; OpenSong Extras
Name: Extras; Description: Extra Files; Types: Full Normal
Name: Extras\Backgrounds; Description: Backgrounds; Types: Full Normal
Name: Extras\Example_Sets; Description: Example Set; Types: Full Normal
Name: Extras\Songs; Description: Songs; Types: Full Normal
Name: Bibles; Description: Bibles; Types: Full Normal
Name: Bibles\KJV; Description: King James Version; Types: Full Normal

; OpenSong Languages
; Arranged in alphabetical order (according to native name),
; displayed when user is asked what components to install.
Name: Languages; Description: Languages; Types: Full; Flags: checkablealone
Name: Languages\czech; Description: Čeština; Types: Full; Flags: checkablealone
Name: Languages\german; Description: Deutsch; Types: Full; Flags: checkablealone
Name: Languages\spanish; Description: Español; Types: Full; Flags: checkablealone
Name: Languages\estonian; Description: Estonian; Types: Full; Flags: checkablealone
Name: Languages\french; Description: Francais; Types: Full; Flags: checkablealone
Name: Languages\italian; Description: Italiano; Types: Full; Flags: checkablealone
Name: Languages\hungarian; Description: Magyar; Types: Full; Flags: checkablealone
Name: Languages\dutch; Description: Nederlands; Types: Full; Flags: checkablealone
Name: Languages\norwegian; Description: Norwegian; Types: Full; Flags: checkablealone
Name: Languages\polish; Description: Polski; Types: Full; Flags: checkablealone
Name: Languages\portugues; Description: Português; Types: Full; Flags: checkablealone
Name: Languages\portuguesbrasil; Description: Português (Brasil); Types: Full; Flags: checkablealone
Name: Languages\russian; Description: Russian; Types: Full; Flags: checkablealone
Name: Languages\slovak; Description: Slovak; Types: Full; Flags: checkablealone
Name: Languages\slovenian; Description: Slovenian; Types: Full; Flags: checkablealone
Name: Languages\swedish; Description: Svenska; Types: Full; Flags: checkablealone
Name: Languages\turkish; Description: Turkish; Types: Full; Flags: checkablealone

[InstallDelete]
; Delete the current OpenSong preferences if the task is selected.
; first line standard installation, second portable installation.
Type: files; Name: "{userappdata}\OpenSong\preferences.plist"; Tasks: ResetPrefs; Check: not IsTaskSelected('Portable')
Type: files; Name: "{app}\preferences.plist"; Tasks: ResetPrefs; Check: IsTaskSelected('Portable')

[Messages]
; Small line of text shown throughout the installer
; By not appending a specific language (english.BeveledLabel),
; it is used in all languages with no compile warnings.
BeveledLabel={#MyAppVerName}

; Keeping the the [CustomMessages] section in a separate script helps
; prevent character corruption when updating the main script.

#include "CustomMessages.iss"

[Tasks]
; From top to bottom: Reset Preferences switch, Portable switch, Desktop Icon.
; Will not be created if OpenSong was installed portable, else it will.
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:InstallOps}; Flags: unchecked; Check: not IsTaskSelected('Portable')
Name: Portable; Description: {cm:Portable}; GroupDescription: {cm:InstallOps}; Flags: unchecked
Name: ResetPrefs; Description: {cm:ResetPrefs}; GroupDescription: {cm:InstallOps}; Flags: unchecked

[Icons]
; None of this will be created if the portable switch was selected.
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon; Check: not IsTaskSelected('Portable')
Name: {commonstartmenu}\Programs\{#MyAppName}\{#MyAppName}; Filename: {app}\{#MyAppName}; Check: not IsTaskSelected('Portable')
Name: {commonstartmenu}\Programs\{#MyAppName}\OpenSong.org; Filename: {#MyAppURL}; Check: not IsTaskSelected('Portable')
Name: {commonstartmenu}\Programs\{#MyAppName}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}; IconFilename: {app}\OpenSong2Uninstall.ico; Check: not IsTaskSelected('Portable')

[Run]
; Option to run OpenSong after installation is complete,
; valid for both installed and portable versions.
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"

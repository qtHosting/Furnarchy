!define PRODUCT_NAME "Idle Hands"
!define PRODUCT_VERSION "1.2-r4"
!define PRODUCT_WEB_SITE "http://proxy.entwinedstudios.com/"

SetCompressor lzma

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "${PRODUCT_NAME}-${PRODUCT_VERSION}.exe"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf"
InstallDir "$PROGRAMFILES\Furnarchy2"
Icon "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
UninstallIcon "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
ComponentText "Check the components you want to install and uncheck the components you don't want to install:"
DirText "Setup will install $(^Name) in the following folder.$\r$\n$\r$\nTo install in a different folder, click Browse and select another folder."
LicenseText "If you accept all the terms of the agreement, choose I Agree to continue. You must accept the agreement to install $(^Name)."
LicenseData "..\COPYING"
ShowInstDetails show
ShowUnInstDetails show
XPStyle on

Page license
PageEx directory
  PageCallbacks initModuleInstall
PageExEnd
Page instfiles

Section "Main"
  SectionIn RO
  
    SetOutPath "$INSTDIR\modules\idlehands"
    SetOverwrite on
    File "..\bin\modules\idlehands\idlehands.dll"
    File "..\bin\modules\idlehands\module.ini"
    File "..\bin\modules\idlehands\COPYING"
    File "..\bin\modules\idlehands\about.txt"
    File "..\bin\modules\idlehands\interop.txt"
    File "..\bin\modules\idlehands\ChangeLog.txt"
    SetOverwrite off
    File "..\bin\modules\idlehands\thumbnail.tga"

SectionEnd

Function initModuleInstall
  ReadRegStr $0 HKLM "Software\Furnarchy2" "path"
  IfErrors 0 +3
    MessageBox MB_OK|MB_ICONINFORMATION "The installer couldn't detect your Furnarchy2 folder. Please enure the path is correct."
    Return
  StrCpy $INSTDIR $0
FunctionEnd
; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Furnarchy 2 (Full Install)"
!define PRODUCT_VERSION "2.6-r8"
!define PRODUCT_WEB_SITE "http://proxy.entwinedstudios.com/"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\Furnarchy2"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

!define SF_SELECTED   1
!define SF_SECGRP     2
!define SF_SECGRPEND  4
!define SF_BOLD       8
!define SF_RO         16
!define SF_EXPAND     32
!define SF_PSELECTED  64

SetCompressor /SOLID lzma

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "f2-full-${PRODUCT_VERSION}.exe"
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

Section "Furnarchy 2 Proxy (required)" SEC01
  SectionIn RO
  
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File "..\bin\launch.exe"
  File "..\bin\config.exe"
  File "..\bin\embed.exe"
  File "..\bin\*.dll"
  File "..\bin\COPYING*"
  File "..\bin\scriptapi.html"
  File "..\bin\scriptapi.css"
  File "..\bin\README.txt"
  File "..\ChangeLog.txt"
  File "..\bin\f2faq.txt"
  File "..\bin\scriptprimer.txt"
  File "..\bin\furn2.lib"
  File "..\bin\furn2.h"
  SetOverwrite off
  File "..\bin\launch.ini"
  File "..\bin\options.xml"
  
  SetOutPath "$INSTDIR\memlocs"
  SetOverwrite on
  File "..\bin\memlocs\*.ini"
  
  SetOutPath "$INSTDIR\scripts"
  SetOverwrite ifnewer
  File "..\bin\scripts\*.gm"
  File "..\bin\scripts\*.dfrm"
;  File "..\bin\scripts\acrophobia.gm"
;  File "..\bin\scripts\annoy.gm"
;  File "..\bin\scripts\fixurl.gm"
;  File "..\bin\scripts\fly.gm"
;  File "..\bin\scripts\hello.gm"
;  File "..\bin\scripts\keepalive.gm"
;  File "..\bin\scripts\kiwi.gm"
;  File "..\bin\scripts\listplayers.gm"
;  File "..\bin\scripts\pirate.gm"
;  File "..\bin\scripts\prtsshow.gm"
;  File "..\bin\scripts\rawterm.gm"
;  File "..\bin\scripts\reverse.gm"
;  File "..\bin\scripts\squaredance.gm"
;  File "..\bin\scripts\uinttest.gm"
;  File "..\bin\scripts\uptime.gm"
  
  SetOutPath "$INSTDIR\scripts\imports"
  SetOverwrite on
  File "..\bin\scripts\imports\*.gm"
 ; File "..\bin\scripts\imports\keys.gm"
 ; File "..\bin\scripts\imports\avatar.gm"
 ; File "..\bin\scripts\imports\parsechat.gm"
 ; File "..\bin\scripts\imports\term.gm"
  
  SetOutPath "$INSTDIR\skins\default"
  SetOverwrite off
  File "..\bin\skins\default\skin.gm"
  File "..\bin\skins\default\skin.db"
  File "..\bin\skins\default\scroll.tga"
  File "..\bin\skins\default\icon.tga"
  File "..\bin\skins\default\glow.tga"
  File "..\bin\skins\default\check.tga"
  File "..\bin\skins\default\bar.tga"
  File "..\bin\skins\default\skin.xml"
  
  SetOutPath "$INSTDIR\skins\fat"
  SetOverwrite off
  File "..\bin\skins\fat\skin.xml"
  File "..\bin\skins\fat\skin.gm"
  File "..\bin\skins\fat\scroll_r.tga"
  File "..\bin\skins\fat\scroll_l.tga"
  File "..\bin\skins\fat\icon.tga"
  File "..\bin\skins\fat\glow.tga"
  File "..\bin\skins\fat\bar_r.tga"
  File "..\bin\skins\fat\bar_m.tga"
  File "..\bin\skins\fat\bar_l.tga"
  
  SetOutPath "$INSTDIR\adapters"
  SetOverwrite on
  File "..\bin\adapters\*.dll"
  File "..\bin\adapters\*.manifest"
  
  SetOutPath "$INSTDIR\source"
  SetOverwrite off
  File "..\bin\source\init.txt"
  File "..\bin\source\login.txt"
  
  SetOutPath "$INSTDIR\filters"
  SetOverwrite off
  File "..\bin\filters\out.txt"
  File "..\bin\filters\in.txt"
  File "..\bin\filters\pirate.txt"
  
  CreateDirectory "$INSTDIR\modules"
  
  ;SetOutPath "$INSTDIR\modules\dummy"
  ;SetOverwrite on
  ;File "..\bin\modules\dummy\dummy.dll"
  ;File "..\bin\modules\dummy\entry.cpp"
  ;File "..\bin\modules\dummy\module.ini"
  ;SetOverwrite off
  ;File "..\bin\modules\dummy\thumbnail.tga"
  
  WriteRegStr HKLM "Software\Furnarchy2" "path" "$INSTDIR"
  
  SetOutPath "$INSTDIR"
  CreateDirectory "$SMPROGRAMS\Furnarchy 2"
  CreateDirectory "$SMPROGRAMS\Furnarchy 2\DevDocs"
;
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\DevDocs\Furnarchy FAQ.lnk" "$INSTDIR\f2faq.txt"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\DevDocs\Script Primer.lnk" "$INSTDIR\scriptprimer.txt"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\DevDocs\Script API.lnk" "$INSTDIR\scriptapi.html"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\DevDocs\Changelog.lnk" "$INSTDIR\ChangeLog.txt"
;
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\Furnarchy 2.lnk" "$INSTDIR\launch.exe"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\Furnarchy 2 (Character Pick).lnk" "$INSTDIR\launch.exe" "-pick"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\Furnarchy Configuration.lnk" "$INSTDIR\config.exe"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\Browse Files.lnk" "$INSTDIR"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\Browse Documents.lnk" "$DOCUMENTS\Furnarchy2"
SectionEnd

Section "Curses: Character Selection" SEC_CURSES
    SetOutPath "$INSTDIR"
    SetOverwrite on
    File "..\bin\Curses.exe"
    CreateShortCut "$SMPROGRAMS\Furnarchy 2\Curses Character Selection.lnk" "$INSTDIR\Curses.exe" ""
SectionEnd
  
SectionGroup "Modules"

  Section "Eggy"
    SetOutPath "$INSTDIR\modules\eggy"
    SetOverwrite on
    File "..\bin\modules\eggy\eggy.dll"
    File "..\bin\modules\eggy\module.ini"
    File "..\bin\modules\eggy\COPYING"
    File "..\bin\modules\eggy\ChangeLog"
    File "..\bin\modules\eggy\interop.txt"
    SetOverwrite off
    File "..\bin\modules\eggy\thumbnail.tga"
  SectionEnd
  
  Section "Idle Hands"
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
  
  Section "Winampeeny 2"
    SetOutPath "$INSTDIR\modules\winampeeny2"
    SetOverwrite on
    File "..\bin\modules\winampeeny2\winampeeny2.dll"
    File "..\bin\modules\winampeeny2\module.ini"
    File "..\bin\modules\winampeeny2\interop.txt"
    File "..\bin\modules\winampeeny2\COPYING"
    File "..\bin\modules\winampeeny2\ChangeLog"
    SetOverwrite off
    File "..\bin\modules\winampeeny2\strings.txt"
    File "..\bin\modules\winampeeny2\thumbnail.tga"
  SectionEnd
  
  Section "Tricorder"
    SetOutPath "$INSTDIR\modules\tricorder"
    SetOverwrite on
    File "..\bin\modules\tricorder\tricorder.dll"
    File "..\bin\modules\tricorder\module.ini"
    File "..\bin\modules\tricorder\eula.txt"
    File "..\bin\modules\tricorder\readme.txt"
    SetOverwrite off
    File "..\bin\modules\tricorder\thumbnail.tga"
  SectionEnd
  
  Section "Director"
    SetOutPath "$INSTDIR\modules\director"
    SetOverwrite on
    File "..\bin\modules\director\director.dll"
    File "..\bin\modules\director\module.ini"
    File "..\bin\modules\director\eula.txt"
    File "..\bin\modules\director\readme.txt"
    SetOverwrite off
    File "..\bin\modules\director\thumbnail.tga"
  SectionEnd
  
  Section "Tweetarchy"
    SetOutPath "$INSTDIR\modules\Tweetarchy"
    SetOverwrite on
    File "..\bin\modules\Tweetarchy\Tweetarchy.dll"
    File "..\bin\modules\Tweetarchy\module.ini"
    File "..\bin\modules\Tweetarchy\eula.txt"
    File "..\bin\modules\Tweetarchy\readme.txt"
    SetOverwrite off
    File "..\bin\modules\Tweetarchy\thumbnail.tga"
    File "..\bin\modules\Tweetarchy\newtweet.wav"
  SectionEnd
  
SectionGroupEnd

Section "Desktop Shortcuts"
  SetOutPath "$INSTDIR"
  SectionGetFlags ${SEC_CURSES} $1
  IntOp $2 ${SF_SELECTED} && $1
  IntCmp $2 0 +3
         CreateShortCut "$DESKTOP\Curses (Character Select).lnk" "$INSTDIR\Curses.exe"
         return
  CreateShortCut "$DESKTOP\Furnarchy 2.lnk" "$INSTDIR\launch.exe"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$SMPROGRAMS\Furnarchy 2\Website.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Furnarchy 2\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "${PRODUCT_NAME} ${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\launch.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall

  Delete "$DESKTOP\Furnarchy 2.lnk"
  Delete "$DESKTOP\Curses (Character Select).lnk"
  RMDir /r "$SMPROGRAMS\Furnarchy 2"

  RMDir /r $INSTDIR"
  DeleteRegKey HKLM "Software\Furnarchy2"
  
  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  SetAutoClose true
SectionEnd

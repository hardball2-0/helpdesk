@echo off
rem Installation de logiciels 
rem Service Informatique - Dynaren
echo Auteur : Pedro Andrade
echo Service Informatique
echo Lancement des installations de logiciels :

echo ---


IF not exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (

@echo installations de Google Chrome - Merci de patienter...
@echo off
start "Installing Chrome Silently" /wait "\\--path--\ChromeSetup.exe" /silent /install
echo Google Chrome est Installee
@echo off

) ELSE ( echo Chrome existe deja
)

echo ---

IF not exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip" (

echo Installation de 7Zip - Merci de patienter...
@echo off
Start /w "" "\\--path--\7z2103-x64.exe"   /S
echo 7Zip est Installee
@echo off

) ELSE ( echo 7Zip existe deja
)

echo ---

IF not exist "C:\Program Files (x86)\TeamViewer\TeamViewer.exe" (

echo Installation de TeamViewer Host - Merci de patienter...
@echo off
Start /w "" "\\--path--\TeamViewer_Host_Setup.exe"   /S
echo TeamViewer est Installee
@echo off

) ELSE ( echo TeamViewer existe deja
)

echo ---

IF not exist "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" (

echo Installation d'Acrobat Reader - Merci de patienter...
Start /w "Installing Acrobat Silently" "\\--path--\readerdc_fr_xa_crd_install.exe"  /silent
echo Acrobat Reader est instalee
@echo off

) ELSE ( echo Adobe existe deja
)

echo ---

IF not exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Java" (

echo Installation de Java - Merci de patienter...
Start /w "" "\\--path--\jre-8u301-windows-x64.exe"  /s 
echo Java est instalee
@echo off

) ELSE ( echo Java existe deja
)

echo ---

IF not exist "%userprofile%\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"" (

echo Installation de Teams - Merci de patienter...
@echo off
Start /w "" "\\--path--\Teams_windows_x64.exe"   /s
echo Teams est instalee
@echo off

) ELSE ( echo Teams existe deja
)


echo ---

echo Installations terminees - Merci de votre patience ! :)

echo ---

@echo off
rem Attente de 7 secondes avant de fermer la fenêtre
PING localhost -n 7 >NUL
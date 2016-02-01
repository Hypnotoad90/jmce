@ECHO OFF

CALL "%CD%\utilities\variables.bat"

PUSHD jmce_assets
IF NOT EXIST "%CD%\acs" MKDIR "%CD%\acs"
acc "%CD%\source\libretro.acs" "%CD%\acs\libretro.o"
%SEVENZAEXE% a -tzip "%START%\jmce_assets-dev.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak -xr!.gitignore
POPD

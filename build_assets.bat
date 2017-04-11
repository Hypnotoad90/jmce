@ECHO OFF

CALL "%CD%\utilities\variables.bat" %*
CALL "%CD%\utilities\mkvers.bat" %*

DEL /F /Q "%OUTDIR%\jmce_assets*.pk3"

PUSHD jmce_assets
%SEVENZAEXE% a -tzip "%OUTDIR%\jmce_assets%FILEVERSION%.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak -xr!.gitignore
POPD

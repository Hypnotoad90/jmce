@ECHO OFF

CALL "%CD%\utilities\variables.bat"
CALL "%CD%\utilities\mkvers.bat"

DEL /F /Q "%OUTDIR%\jmce_maps*.pk3"

PUSHD jmce_maps
%SEVENZAEXE% a -tzip "%OUTDIR%\jmce_maps%FILEVERSION%.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak
POPD

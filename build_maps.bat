@ECHO OFF

CALL "%CD%\utilities\variables.bat"
CALL "%CD%\utilities\mkvers.bat"

PUSHD jmce_maps
%SEVENZAEXE% a -tzip "%START%\jmce_maps-%FILEVERSION%.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak
POPD

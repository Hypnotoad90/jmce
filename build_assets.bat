@ECHO OFF

CALL "%CD%\utilities\variables.bat"

pushd jmce_assets
%SEVENZAEXE% a -tzip "%CD%\jmce_assets-dev.pk3" * -r -xr!*.dbs -xr!*.backup1 -xr!*.backup2 -xr!*.backup3 -xr!*.bak
popd

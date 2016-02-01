@echo off
7z a -tzip ./jmce_assets-dev.pk3 ./jmce_assets/* -x!*.dbs -x!*.bak -x!*.backup1 -x!*.backup2 -x!*.backup3
pause 
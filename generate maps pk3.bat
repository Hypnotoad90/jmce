@echo off
7z a -tzip ./jmce_maps-dev.pk3 ./jmce_maps/* -x!*.dbs -x!*.bak -x!*.backup1 -x!*.backup2 -x!*.backup3
pause 
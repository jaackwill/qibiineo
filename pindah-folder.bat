@echo off
set "targetPath=%userprofile%\Desktop\qibiineo\QibiiNEO\QibiiNEO.exe"
set "shortcutName=%userprofile%\Desktop\QibiiNEO.lnk"

echo Set oWS = WScript.CreateObject("WScript.Shell")> CreateShortcut.vbs
echo sLinkFile = "%shortcutName%">> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile)>> CreateShortcut.vbs
echo oLink.TargetPath = "%targetPath%">> CreateShortcut.vbs
echo oLink.Save>> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo Shortcut created successfully.
pause

set "desktopFolder=%USERPROFILE%\Desktop"

echo Memulai pemindahan folder...

rem Folder pertama
set "source1=%desktopFolder%\qibiineo\DOCQIBIINEW"
set "destination1=%desktopFolder%"
echo Memindahkan folder qibiineo DOCQIBIINEW...
move "%source1%" "%destination1%"

rem Folder kedua (Extensions)
set "source2=%desktopFolder%\qibiineo\Extensions"
set "destination2=C:\"
echo Memindahkan folder Extensions...
move "%source2%" "%destination2%"

echo Pemindahan folder selesai!
pause

echo Menghapus file batch...
ping 127.0.0.1 -n 2 > nul
del "%~f0"

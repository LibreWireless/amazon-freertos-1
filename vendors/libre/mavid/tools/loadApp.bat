echo off
if [%1]==[] goto noArg
echo "Flashing " %1
ST-LINK_CLI.exe -SE 6 11  -P %1 0x08080000 
ST-LINK_CLI.exe -Rst
goto :eof

:noArg
echo Enter Project Path



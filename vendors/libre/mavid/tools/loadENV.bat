echo off
if [%1]==[] goto noArg
echo Flashing %1\env.bin
ST-LINK_CLI.exe -SE 1 2 -P %1\env.bin 0x08008000 
ST-LINK_CLI.exe -Rst
goto :eof

:noArg
echo Enter Folder Location of env.bin



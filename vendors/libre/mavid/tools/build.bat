echo off
If /I "%COMSPEC%" == %CMDCMDLINE% Goto runBat
echo Run from Command Prompt....
PAUSE
goto :eof

:runBat
if [%1]==[] goto noArg
echo "Building " %1
IarBuild %1\projects\libre\mavid\iar\aws_tests\aws_tests.ewp -build Debug
goto :eof

:noArg
echo Enter Project Path

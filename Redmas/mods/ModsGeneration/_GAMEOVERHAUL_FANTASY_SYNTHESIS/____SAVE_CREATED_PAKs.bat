echo off
set myDIR="..\..\localFiles\CreatedModPAKs"
IF not exist %myDIR% (mkdir %myDIR%)
xcopy ..\..\localFiles\CreatedModPAKs ..\..\localFiles\AmumssTool\CreatedMods\ /q /s /y

md old\src log
del .\old\src\*.exp
move ..\src\*.exp old\src\
"C:\Program Files (x86)\Bosch Rexroth\BODAS-design 3.0.17\CoDeSys V2.3\Codesys" ^
"..\DPC_TM10.pro" /noinfo /show normal /cmd bin/expWithoutCompile.cmd
del DEFAULT.DFR
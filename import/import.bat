md old log
move ..\DPC_TM10.pro old
"C:\Program Files (x86)\Bosch Rexroth\BODAS-design 3.0.17\CoDeSys V2.3\Codesys" ^
"raw/DPC_TM10_raw.pro" /noinfo /show normal /cmd bin/import.cmd
move DPC_TM10.pro ..\
del DEFAULT.DFR
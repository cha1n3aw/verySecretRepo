out open log\log.txt
out clear
replace yesall
query off ok
project import ..\src\*.exp
replace query
file saveas DPC_TM10.pro
query on
file quit
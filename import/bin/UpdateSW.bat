@Echo Off

set sFile=..\..\src\SW_VERSION.EXP
set sFile=src\SW_VERSION.EXP

Echo (* @NESTEDCOMMENTS := 'Yes' *)>"%sFile%"
Echo (* @PATH := '\/Autocode' *) >>"%sFile%"
Echo (* @OBJECTFLAGS := '0, 8' *) >>"%sFile%"
Echo (* @SYMFILEFLAGS := '2048' *) >>"%sFile%"
Echo PROGRAM SW_Version >>"%sFile%"
Echo VAR >>"%sFile%"
Echo 	SW_Git_Commit_s32	: DINT;		(* First 7 characters of the current git commit, hex *) >>"%sFile%"
Echo 	SW_Git_Hash_as8	: STRING;	(* First 7 characters of the current git commit, hex *) >>"%sFile%"
Echo END_VAR >>"%sFile%"
Echo (* @END_DECLARATION := '0' *) >>"%sFile%"
Echo (*********************************************) >>"%sFile%"
Echo (*  DON'T MAKE ANY CHANGES TO THIS PROGRAM!! *) >>"%sFile%"
Echo (*     FILE WAS AUTOMATICALLY GENERATED!!    *) >>"%sFile%"
Echo (*********************************************) >>"%sFile%"
<nul set /p  =SW_Git_Commit_s32 := 16#>>"%sFile%"
git log -n 1 --pretty=format:"%%h">>"%sFile%"
Echo ;>>"%sFile%"
<nul set /p  =SW_Git_Hash_as8 := '>>"%sFile%"
git log -n 1 --pretty=format:"%%h">>"%sFile%"
Echo ';>>"%sFile%"
Echo END_PROGRAM >>"%sFile%"
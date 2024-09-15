#NoEnv  
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#IfWinActive ahk_exe EXCEL.EXE
	!u::  ; Navigate to excel sheet on the left.
		Send, ^{PgUp}
		return
	!o::  ; Navigate to excel sheet on the right.
		Send, ^{PgDn}
		return
        
	+Enter:: ; Add line break while in cell edit mode.
		Send, !{Enter}
		Return
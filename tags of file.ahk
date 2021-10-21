;to tag the file------------

#IfWinActive, ahk_exe Explorer.EXE
{
	^!t::
	Send, !{Enter}
	Sleep, 350
	Send, ^{Tab 2}
	Sleep, 150
	Send, {Home}{Down 3}{Space}
	Send, ✅
	Send, {Enter 2}
	Return
}
; to get video length column in file explorer---------

#IfWinActive, ahk_exe Explorer.EXE
{
	^!l::
	MouseClick, Right, 1215, 197, 1, , , 
	Sleep, 400
	Send, {Down 10}{Enter}
	Sleep, 500
	Send, {l 6} ; press L six times for length
	Sleep, 100
	Send, {Space}
	Sleep, 100
	Send, {Enter}
	Return
}





; to get tag column in file explorer---------

#IfWinActive, ahk_exe Explorer.EXE
{
	^!i::
	MouseClick, Right, 1215, 197, 1, , , 
	Sleep, 400
	Send, {Up}{Enter}
	Sleep, 500
	Send, {t 2} 
	Sleep, 100
	Send, {Space}
	Sleep, 100
	Send, {Enter}
	Return
}
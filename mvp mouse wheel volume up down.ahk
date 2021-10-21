;volume increase or decrease in MVP player using mouse wheel
#IfWinActive, ahk_exe mpv.exe
{
	WheelDown:: Send, {9}
	WheelUp::Send, {0}
	return
}

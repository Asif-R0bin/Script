;------This Section contains hotstring------
;--------------------------------------------    
;----Term 1----
;::dip:: AEAS 103 (Lec Dipto)
;::ayu:: AEAV 101 (LT Col Ayub)
;::sa:: MATH 121 (Lec Sadia)
;::mon:: MATH 121 (Wg Cdr Monir)
;::sul:: MATH 127 (Maj Sultana)
;::frd:: MATH 127 (Prof Farid)
;::raj:: PHY 115 (Lec Rajan)
;::tah:: PHY 115 (Maj Tahmina)
;::trq:: AEAS 110 (Lec Tariqul)
;::nab:: AEAV 102 (Lec Nabia)
;----Term 2----
;::evn:: AEAV 103 (Maj Touhid)
;::pal:: CHEM 107-A (Maj Palash)
;::naj:: CHEM 107-B (Maj Najrul)
;::mnw:: HUM 111 (Maj Manwar)
;::srj:: HUM 111 (Maj Seraj)
;::lasi:: MATH 129 (Lec Asif)
;::bra:: PHY 117 (Lt Col Brajalal)
;::mon2:: MATH 129 (Wg Cdr Monir)
;::raj2:: PHY 117 (Lec Rajan)
;::nhd:: CHEM 108 (Lec Nahida)
;::sf:: SHOP 112 (Lec Saif)
;::msrf:: SHOP 112 (Lec Mashrafee)
;::adri:: SHOP 112 (Lec Adri)
;::rdi:: AEAV 104 (Lec Hridi)
;-----------L-2 T-1---------------
::mij:: AEAS 201 (AP Mijanur Rahman)
;::naz:: AEAS 201 (AP Nazifa)

::dip:: AEAV 203 (Lec Dipto)
::snjd:: AEAV 203 (Capt Sanjida)
::rdi:: AEAV 204 (Lec Tanima Ahmed Hridi)

::evn:: AEAV 205 (Maj Evan)
::anas:: AEAV 206 (Lec Anas Aziz)
::msrf:: AEAV 206 (Lec Mashrafee)
;::trql:: AEAV 206 (Lec Tariqul)
;----------L-2 T-2----------
::thr:: AEAS 203 (Dr Taher Ali)
::naz:: AEAS 205 (AP Nazifa)
::trql:: AEAS 207 (Lec Tariqul)
::naf:: MATH 225 (Lec Nafisa)
::tah:: MATH 225 (Lec Tahia)
::zak:: AEAS 210 (Lec Zakaria)

::mah:: AEAS 215 (Air Cdre Mahbub)



::msd:: HUM 211 (AP Masud)
::swt:: HUM 211 (Maj Shakhwat)

::sul:: MATH 223 (Lt Col Tahmina Sultana) 
::mamir:: MATH 223 (Maj Amir)

:o:asnr::Asif Hasnayeen 202022004
::rl::202022004



;------------ Alt Codes------------

::upi:: ;for pi
	Send, {U+03C0} 
return 
 
::uplsmns:: ; for plus minus
	Send, {U+00B1} 
return

::uomega:: 
	Send, {U+03C9} 
return  

::uinfty:: 
	Send, {U+221E} 
return 

::umu:: 
	Send, {U+03BC} 
return   

::ulambda:: 
	Send, {U+03BB} 
return  

::utheta:: 
	Send, {U+03B8} 
return 

::ueta:: 
	Send, {U+03B7} 
return   

::udel::  ;for small delta
	Send, {U+03B4} 
return  

::ubeta:: 
	Send, {U+03B2} 
return  

::ualpha:: 
	Send, {U+03B1} 
return  

::udelta:: 
	Send, {U+0394} 
return 


::altpi:: 
	Send, {Alt down}{Numpad2}{Numpad2}{Numpad7}{Alt up} 
return 
;----------Key Replace------
;pause::@
;+pause::&
;Insert::Send, ()
;+Insert::$
#pause::#PrintScreen
`::Click
;`;::\
return


;----------mousebutton replacement-------------
RAlt::
{
   sendinput, {lbutton down}
   keywait, RAlt
   sendinput, {lbutton up}
}
return

;RCtrl::
;{
;   sendinput, {rbutton down}
;   keywait, RCtrl
;   sendinput, {rbutton up}
;}
;return



CapsLock & w::
 MouseClick,WheelUp,,,2,0,D,R
return

CapsLock & s::
 MouseClick,WheelDown,,,2,0,D,R
return
;-----------save pdf------------


!`::				
	
	{
		
		Click, 359, 120		
		Sleep, 5500		
		Click, 462, 222	
		Sleep, 1250			
        Click, 1181, 110
        Sleep, 700
        click, 464, 297
        Sleep, 5500
        Click, 1224, 56
		
	}
	
return


#c::
Run, L:\OneDrive - Military Institute of Science and Technology (MIST)\1.MIST\L-2 T-2
return

#2::
Run, C:\Program Files (x86)\Microsoft\Edge Beta\Application\msedge.exe
return


;------For Hotkeys------
;---------------------------------

    ;for Screen Recording--------
/*+v::
    WinActivate, Zoom Meeting, ahk_class ZPContentViewWndClass
sleep, 1000
!h:: 
send, Asif Hasnayeen 202022004

/*Run, "C:\Program Files (x86)\Digiarty\VideoProc\VideoProc.exe"
Sleep, 2500
MouseClick, left, 636, 236
Sleep, 1200
MouseClick, left, 175, 75 
Sleep, 1200
MouseClick, left, 1025, 646
*/



Return



~RButton & WheelUp:: ; Scroll left.
ControlGetFocus, control, A
SendMessage, 0x114, 0, 0, %control%, A ; 0x114 is WM_HSCROLL
return

~RButton & WheelDown:: ; Scroll right.
ControlGetFocus, control, A
SendMessage, 0x114, 1, 0, %control%, A ; 0x114 is WM_HSCROLL
return



;--------------------- RbM------------------

#If (WinActive("VideoProc"))
{
    ^!m::
    Send, {F2}
    Send, {Left}
    Send, RbM [
    Send, {End}
    Send, {Left}{Left}{Left}{Left}
    Send, ]
    Return
}
#If
Return

;------------- Program specific------------------

;----------Mvp Player--------------------------
#IfWinActive, ahk_exe mpv.exe
{
	WheelDown:: Send, {9}
	WheelUp::Send, {0}
	return
}

;---Foxit Reader(highlight)-------------------

#IfWinActive, ahk_class classFoxitReader
^h:: 
Send, !r
Sleep, 100
Send, di
Return
;-------------
;----------- use of Capslock----- :|

#IfWinActive, ahk_exe Code.exe
{
;CapsLock & i:: Send, {Up}
;CapsLock & k:: Send, {Down}
;CapsLock & j:: Send, {Left}
;CapsLock & l:: Send, {Right}

;CapsLock & e:: Send, {PgUp}
;CapsLock & d:: Send, {PgDn}

;CapsLock & u:: Send, {Home}
;CapsLock & o:: Send, {End}

;CapsLock & q:: Send, {=}
;CapsLock & a:: Send, {NumpadAdd}

;CapsLock & `;:: Send, {_}
;+CapsLock & a:: Send, {_} not working :(


;-------------new updated------------
CapsLock & i:: Send, {Up}
CapsLock & k:: Send, {Down}
CapsLock & j:: Send, {Left}
CapsLock & l:: Send, {Right}

;CapsLock & e:: Send, {PgUp}
;CapsLock & d:: Send, {PgDn}

CapsLock & w:: Send, {PgUp}
CapsLock & s:: Send, {PgDn}

CapsLock & u:: Send, {Home}
CapsLock & o:: Send, {End}

CapsLock & q:: Send, {=}
CapsLock & d:: Send, {NumpadAdd}
CapsLock & f:: Send, {-}
CapsLock & a:: Send, {_}
}

;------------------------



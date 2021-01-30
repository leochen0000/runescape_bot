#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author: Leo Chen
 Date: March 17, 2018

 Script Function:
	Oldschool Runescape Ardougne Knight AutoClicker

#ce ----------------------------------------------------------------------------

; Press 'Esc' to exit script
; Press 'Pause' to pause/unpause script

#include <AutoItConstants.au3>

Global $paused = True

HotKeySet("{ESC}","myExit")
HotKeySet("{PAUSE}", "TogglePause")

MsgBox(0, "Start", "Starting Script, Press Pause to start Clicking",2)

;AutoClicker
While(1)
	if $paused == False Then
		MouseClick($MOUSE_CLICK_LEFT)
		sleep(300)
	Endif
WEnd

;TogglePause
Func TogglePause()
    $paused = Not $paused

	If $paused == True Then
		MsgBox(0, "Paused", "Pausing Script",1)
	Else
		MsgBox(0, "Unpaused", "Unpausing Script",1)
	EndIf

    While $paused
		Sleep(100)
    WEnd
EndFunc

;myExit
Func myExit()
	MsgBox(0, "Exit", "Exiting Script",1)
	Exit
EndFunc

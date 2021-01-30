HotKeySet("{F1}", "myExit")

; F5 to run, F1 to quit

$x = WinActivate("RuneScape")

$travel_time = 6000
$mining_time = 5000

while(1)
;starting West Varrock Bank
ResetView()

;walk to  SW Varrock Mine
LC(1883, 83)
Antibot()

LC(1900, 109)

Antibot()

LC(1866, 161)

Antibot()

LC(1852, 175)

Antibot()

LC(1847, 174)

Antibot()

LC(1807, 165)

Antibot()


MsgBox(0,"","last location")
Sleep(5000)

;ready to start mining
$invent_full = False

While(Not($invent_full))
	; search copper
	$pixels = PixelSearch(592, 145,1297, 1019, 0x674325, 1)

	if NOT(@error) Then
		LC($pixels[0],$pixels[1])
		sleep($mining_time)
	EndIf

	;check if inventory full
	$pixels = PixelSearch(1863, 981, 11865, 983, 0xD56623, 1)
	if Not(@error) Then
		MsgBox(0,"","Inventory full!")
		$invent_full = True
	EndIf

WEnd


;Exit ;DONT LEAVE THIS HERE

WEnd


;Anitibot ResetView
Func Antibot()
	ResetView()
	ResetView()
	ResetView()
	ResetView()

EndFunc

;left click function
Func LC($x, $y)
	MouseClick("left", $x, $y, 1, 1)
EndFunc

;teleport to Lumbridge
Func Lumbridge()
	LC(1900, 719)
	Sleep(1000)
	LC(1727, 768)
	Sleep(18000)
EndFunc

;reset view
Func ResetView()
	LC(1761,45)
	Send("{UP down}")
	Sleep(2000)
	Send("{UP UP}")
	Sleep(2000)
EndFunc

HotKeySet("{F1}","myExit")
Func myExit()
	MsgBox(0, "Exiting", "Bot is quitting")
	Exit
	EndFunc
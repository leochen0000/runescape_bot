
; F5 to run, F1 to quit
;This bot buys needles from Al Kharid Craft shop in OSRS
;keep world switcher open and be in world 1 before running

$x = WinActivate("RuneScape")

HotKeySet("{Esc}","myExit")

;$travel_time = 6000

;$no_gold = False
$world_click = 600
$world_delay = 7000

;-------------------------MAIN----------------------------
MsgBox(0,"","Starting bot",1)
ResetView()
While(1)
	; search needle
	BuyNeedle()
	world8()
	BuyNeedle()
	world16()
	BuyNeedle()
	world26()
	BuyNeedle()
	world35()
	BuyNeedle()
	world82()
	BuyNeedle()
	world83()
	BuyNeedle()
	world84()
	BuyNeedle()
	world93()
	BuyNeedle()
	world94()
	BuyNeedle()
	world1()
	MsgBox(0,"","Main end!",1)
WEnd

;-----------------------------END--------------------------------

;search and buy needle
Func BuyNeedle()
	;MsgBox(0,"","Searching Trader",1)
	$success = False
	While NOT($success)
		$pixels = PixelSearch(600, 94,1508, 1018, 0x74451E, 2) ; search trader
		if NOT(@error) Then
			;Sleep(500)
			;MsgBox(0,"","Trader found!",0.3)
			RC($pixels[0],$pixels[1])	;RC trader
			sleep(500)
			LC($pixels[0],$pixels[1]+40)	;LC click trade
			Sleep(2500)

			$pixels = PixelSearch(818, 318,820, 320, 0xFF981F, 0) ; check if mis-click
			if NOT(@error) Then
				Sleep(1000)
				;MsgBox(0,"","G1",1)
				RC(855, 365)	;select needle
				sleep(600)
				LC(850, 415)	;LC buy
				sleep(800)
				LC(1060, 319)	;LC close window
				Sleep(1000)
				$success = True
			EndIf
		EndIf
		;MsgBox(0,"","looping",1)
	WEnd
	;MsgBox(0,"","Needle Bought",1)
EndFunc

;Change to worlds
Func world8()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1885, 796) ;click scroller
	Sleep($world_click)
	LC(1712, 880) ; click world 8
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world16()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1885, 822) ;click scroller
	Sleep($world_click)
	LC(1712,830) ; click world 16
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world26()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1885, 822) ;click scroller
	Sleep($world_click)
	LC(1712, 960) ; click world 26
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world35()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1887, 863) ;click scroller
	Sleep($world_click)
	LC(1712, 800) ; click world 35
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world82()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1887, 938) ;click scroller
	Sleep($world_click)
	LC(1712, 865) ; click world 82
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world83()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1887, 938) ;click scroller
	Sleep($world_click)
	LC(1712, 883) ; click world 83
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world84()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1887, 938) ;click scroller
	Sleep($world_click)
	LC(1712, 899) ; click world 84
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world93()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1887, 938) ;click scroller
	Sleep($world_click)
	LC(1712, 947) ; click world 93
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world94()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1887, 938) ;click scroller
	Sleep($world_click)
	LC(1712, 963) ; click world 94
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

Func world1()
	LC(1800, 1020) ; click logout
	Sleep($world_click)
	LC(1885, 787) ;click scroller
	Sleep($world_click)
	LC(1712, 785) ; click world 1
	Sleep($world_delay)
	MsgBox(0,"","World switched",1)
	ResetView()
EndFunc

;Anitibot ResetView
Func Antibot()
	ResetView()
	ResetView()
	ResetView()
	ResetView()

EndFunc

;left click function
Func LC($x, $y)
	MouseClick("left", $x, $y, 1, 0)
EndFunc

;right click function
Func RC($x, $y)
	MouseClick("right", $x, $y, 1, 0)
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

Func myExit()
	MsgBox(0, "Exiting", "Bot is quitting")
	Exit
	EndFunc
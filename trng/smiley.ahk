CoordMode, Mouse, Screen ; Use absolute screen coordinates

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
reload()
{
MsgBox,, Stupid Box, Reloaded!, 0.3
Reload
}
^!R::
reload()
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
smiley()
{
click 246 77
click 246 77
sleep 5
MouseMove, 16, 158,, ;Left eye
click
sleep 5
MouseMove, 2, 0,,R ;right eye
click
sleep 5
mousemove, -3, 2,,R ;L smirk
click
sleep 5
mousemove, 1, 1,,R ;straight1
click
sleep 5
mousemove, 1, 0,,R ;straight2
click
sleep 5
mousemove, 1, 0,,R ;straight3
click
sleep 5
mousemove, 1, -1,,R ;R Smirk
click
}
^!S::
smiley()
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; (l)ocation. Gives you the X, Y location of the cursor on screen with some additional info
; [TODO] Add cursor locations for both entire screen and active window (relative)
location() {
    MouseGetPos mouseX, mouseY
    PixelGetColor color, %mouseX%, %mouseY%
    MsgBox Cursor: (%mouseX%, %mouseY%) `nColor: %color%
}
^!L::;
location()
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timestamp() {
    timezone = HST
    FormatTime time,, yyyy.MM.dd.HHmm
    Send %time%.%timezone%
}
^!T::
timestamp()
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
typingtest() {
run notepad
sleep 10
Winactivate, Untitled - Notepad
sendraw Bryan has a small dick 
}
^!Y::
typingtest()
return
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MouseLoop() {
Mousemove, 0, 0, 0,
	Loop, 108{
		MouseMove, 10, 10, 0, R
	}
}
^!O::
MouseLoop()
return
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
RandomTest() {
	RanGen = 51
	;random, RanGen, 0, 99
	if (%RanGen% < 50) {
		Msgbox, 0, Luck Viewer, Your number is only %RanGen%, go fuck yourself, Hobo!
	}
	if (%RanGen% >= 50) {
		Msgbox, 0, Luck Viewer, Your number is %RanGen%, niiiiiiiice!
	}
}
^!K::
RandomTest()
return
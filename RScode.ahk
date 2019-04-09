reload() {
	MsgBox,,, Reloaded, 0.2
	Reload
    WinActivate, RuneScape
}
^!R::
reload()
return

; (l)ocation. Gives you the X, Y location of the cursor on screen with some additional info
location() {
    MouseGetPos mouseX, mouseY
    PixelGetColor color, %mouseX%, %mouseY%
    MsgBox Cursor: (%mouseX%, %mouseY%) `nColor: %color%
}
^!L::
location()
return

camera_reset() {
    CoordMode, Mouse, Window
    WinActivate, RuneScape
    random, inject, 1, 10
    map_x := 23 + inject
    map_y := 80 + inject
	w_wait = 1200 + 5 * inject
    Click %map_x%, %map_y%
    Send, {W down}
    Sleep %w_wait%
    Send, {W up}
    msgbox %map_x% %map_y%
}

find_epoch() {
	;
}

mine_ada() {
    camera_reset()
    find_epoch()
}
^!A::
mine_ada()
return
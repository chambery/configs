; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

SetCapsLockState("AlwaysOff")
DetectHiddenWindows(true)
SetTitleMatchMode("RegEx")
A_MaxHotkeysPerInterval := 200

; WheelUp::
; {
;     Send("{WheelDown}")
;     return
; }

; WheelDown::
; {
;     Send("{WheelUp}")
;     return
; }

; key remapping
CapsLock & /:: Send FormatTime(, 'M/d ddd')
CapsLock & ':: Send '1160268669'
CapsLock & p:: Send 'SUNCOM Systems Developers Summit'
; CapsLock & o:: FileDelete "\\wsl.localhost\Ubuntu-22.04\home\chambery\projects\suncom-todd-chambery\leaf2\local_keystore"
CapsLock & i:: Send "oasis_ens.alert_pkg.log_p('todd', ''');"

!Space:: Send("{RWin}")
CapsLock & l:: Send("^l")
CapsLock & h:: Send("^h")
!l:: Send("^l")
!v:: Send("^v")
!c:: Send("^c")
!x:: Send("^x")
; Switch Desktops
CapsLock & Right:: Send("#^{Right}")
CapsLock & Left:: Send("#^{Left}")
; Windows 11 screenshot
CapsLock & 2:: Send("#+s")

; Application shortcuts
CapsLock & r::
{
    if WinExist("Todd Chambery (DM) - Suncom - Slack")
        WinActivate()
    ; else
    ;       Run("C:\Users\chambet\AppData\Local\slack\slack.exe")
    return
}

#HotIf not WinActive("ahk_exe Code.exe") or not WinActive("ahk_exe datagrip64.exe") or not WinActive(
    "ahk_exe sqldeveloper64W.exe")
^d:: Send("{Del}")
^j:: Send("{Left}")
^+j:: Send("+{Left}")
!^j:: Send("^{Left}")
!^+j:: Send("^+{Left}")
^l:: Send("{Right}")
^+l:: Send("+{Right}")
!^l:: Send("^{Right}")
!^+l:: Send("^+{Right}")
^k:: Send("{Down}")
!^k:: Send("{Down}")
^+k:: Send("+{Down}")
!^+k:: Send("+{Down}")
^i:: Send("{Up}")
!^i:: Send("{Up}")
^+i:: Send("+{Up}")
!^+i:: Send("+{Up}")
^h:: Send("{Home}")
!^h:: Send("{Home}")
^+h:: Send("+{Home}")
!^+h:: Send("+{Home}")
^;:: Send("{End}")
!^;:: Send("{End}")
^+;:: Send("+{End}")
!^+;:: Send("+{End}")
#HotIf

CapsLock & a::
{
    if WinExist("ahk_exe sublime_text.exe")
        WinActivate()
    else
        Run("C:\Users\chambet\zApps\sublime_text_4\sublime_text.exe")
    return
}

CapsLock & q::
{
    if WinExist("ahk_exe msedge.exe")
        WinActivate()
    else
        Run("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe")
    return
}

CapsLock & s::
{
    if WinExist("ahk_class CabinetWClass")
        WinActivate()
    else
        Run("explorer.exe")
    return
}

CapsLock & x::
{
    if WinExist("Hyper")
        WinActivate()
    else
        Run("C:\Users\chambet\AppData\Local\Programs\Hyper\Hyper.exe")
    return
}

CapsLock & d::
{
    if WinExist("ahk_exe Cursor.exe")
        WinActivate()
    else
        Run("C:\Users\chambet\AppData\Local\Programs\Cursor\Cursor.exe")
;     Run("C:\Users\chambet\AppData\Local\Programs\Microsoft VS Code\Code.exe")
    return
}

CapsLock & e::
{
    if WinExist("ahk_exe Obsidian.exe")
        WinActivate()
    else
        Run("C:\Users\chambet\AppData\Local\Programs\Obsidian\Obsidian.exe")
}

; CapsLock & f::
CapsLock & c::
{
    if WinExist("ahk_exe datagrip64.exe")
        WinActivate()
    else
        Run("C:\Users\chambet\AppData\Local\JetBrains\DataGrip 2023.1.2\bin\datagrip64.exe")
    return
}

; CapsLock & w::
; {
; if WinExist("ahk_exe Arc.exe")
;  WinActivate
; else
;  Run ("C:\Users\chambet\AppData\Local\Microsoft\WindowsApps\Arc.exe")
; return
; }

CapsLock & t::
{
    WinSetAlwaysOnTop(-1, "A")
    return
}

CapsLock & z::
{
    if WinExist("ahk_exe slack.exe")
        WinActivate()
    else
        Run("C:\Users\chambet\AppData\Local\slack\slack.exe")
    return
} 

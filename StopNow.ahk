#Persistent
#MaxHotkeysPerInterval 10000

scriptActive := true
leftMouseDown := false

$^b::
scriptActive := !scriptActive
return

$z::
$q::
$s::
$d::
if (scriptActive && leftMouseDown) {
    return
}
if (!scriptActive || !leftMouseDown  && scriptActive) {
    hotkeyName := StrReplace(A_ThisHotkey, "$", "")
    Send, %hotkeyName%
}
return

~LButton::
leftMouseDown := true
return

~LButton Up::
leftMouseDown := false
return

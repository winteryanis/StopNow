#Persistent
#MaxHotkeysPerInterval 10000

scriptActive := true
leftMouseDown := false

$^b::
    scriptActive := !scriptActive
    return

~LButton::
    leftMouseDown := true
    return

~LButton Up::
    leftMouseDown := false
    return

#If (scriptActive && leftMouseDown)
    *z::return
    *q::return
    *s::return
    *d::return
#If

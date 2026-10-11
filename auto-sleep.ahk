#Requires AutoHotkey v2.0
#SingleInstance Force
CoordMode("Mouse", "Screen")

; ===== Settings =====
targetWindow := "ahk_exe Schedule I.exe"
bedKey       := "e"

sleepX := 957,  sleepY := 594
nextX1 := 958,  nextY1 := 721
nextX2 := 958,  nextY2 := 721
nextX3 := 958,  nextY3 := 721         ; cases where the advanced customer group screen is displayed

waitBeforeSleepClick := 2000          
waitAfterSleepClick  := 4000          
waitBetweenClicks    := 1000          
waitBeforeLookDown   := 20000         
lookDownDistance     := 3000

sleepInterval := 1263000              ; 21 min 03 s
; ====================

isRunning := false

F8:: {
    global isRunning
    isRunning := !isRunning
    if isRunning {
        ToolTip("Auto-sleep : ON")
        SetTimer(RunSleepCycle, sleepInterval)
        RunSleepCycle()  ; first cycle starts immediately
    } else {
        ToolTip("Auto-sleep : OFF")
        SetTimer(RunSleepCycle, 0)
    }
    SetTimer(() => ToolTip(), -1500)
}

RunSleepCycle() {
    if !WinExist(targetWindow)
        return
    WinActivate(targetWindow)
    WinWaitActive(targetWindow, , 3)
    Sleep(500)

    Send("{" bedKey " down}")
    Sleep(100)
    Send("{" bedKey " up}")
    Sleep(waitBeforeSleepClick)

    ClickAt(sleepX, sleepY)
    Sleep(waitAfterSleepClick)

    ClickAt(nextX1, nextY1)
    Sleep(waitBetweenClicks)

    ClickAt(nextX2, nextY2)
    Sleep(waitBetweenClicks)

    ClickAt(nextX3, nextY3)

    Sleep(waitBeforeLookDown)
    LookDown(lookDownDistance)
}

ClickAt(x, y) {
    MouseMove(x, y)
    Sleep(150)
    Click("down")
    Sleep(80)
    Click("up")
}

LookDown(total) {
    Loop Floor(total / 10) {
        DllCall("mouse_event", "UInt", 0x0001, "Int", 0, "Int", 10, "UInt", 0, "UPtr", 0)
        Sleep(5)
    }
}

F9::ExitApp
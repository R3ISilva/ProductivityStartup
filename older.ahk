;Presets KeychronK14
+Z::<
+X::>

PgDn::F9
PgUp::F7
Home::F8
End::F5


!Space::
{
    ChatJDPT := "ChatJDPT"
    OpenNewChat :=  "^+o"
    Copy := "^c"
    Paste := "^v"

    if WinExist(ChatJDPT)
    {
        if (WinActive(ChatJDPT))
        {
            WinActivate(ChatJDPT)
            Send OpenNewChat
        }

        Send Copy

        WinActivate(ChatJDPT)

        Sleep 300
        Send Paste
    }
    else
    {
        Run("C:\Users\joao.reis\Documents\ChatJDPT.lnk")
    }
}


~Shift Up::
{
    static lastShift := 0
    current := A_TickCount
    Discord := "Discord"
    Chrome := "Chrome"

    if (current - lastShift < 300 && (WinActive(Discord) or WinActive(Chrome)))
    {
        Send "^t"   
    }

    lastShift := current
}

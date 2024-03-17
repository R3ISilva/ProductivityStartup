toggle := false  ; Initialize the toggle variable, for some reason this globar variable is not working

#n:: ; Defines the hotkey to be the 'windows + n' key
{
    toggle := !toggle

    if toggle
    {
        MsgBox "The variable is now True."
        return
    }
    else
    {
        MsgBox "The variable is now False."
        return
    }
}  
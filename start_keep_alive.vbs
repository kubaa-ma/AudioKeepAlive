Set WshShell = CreateObject("WScript.Shell")
Set WMI = GetObject("winmgmts:\\.\root\cimv2")

Set Processes = WMI.ExecQuery("SELECT * FROM Win32_Process WHERE Name='mpv.exe'")

If Processes.Count = 0 Then
    WshShell.Run _
    """C:\Program Files\MPV Player\mpv.exe"" --loop-file=inf --no-video --force-window=no --really-quiet ""C:\AudioKeepAlive\keep_alive_pink_noise_-79dBFS_48kHz.wav""", _
    0, False
End If
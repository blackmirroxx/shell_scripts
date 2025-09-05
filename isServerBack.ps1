# usefull for checking availability 
function Watch-RemoteServer {
    param (
        [string]$TargetHost
    )

    for ($i = 0; $i -lt 1000; $i++) {
        $result = Test-NetConnection -ComputerName $TargetHost -Port 22

        if ($result.TcpTestSucceeded) {
            Write-Host "✅ $TargetHost is online (SSH reachable)" -ForegroundColor Green
        } else {
            Write-Host "❌ $TargetHost is offline or SSH unreachable" -ForegroundColor Red
        }

        Start-Sleep -Seconds 5
    }
}
# .\isServerBack.ps1 -TargetHost "myserver.example.com"
# capy paste -> then -> Watch-RemoteServer <ip>

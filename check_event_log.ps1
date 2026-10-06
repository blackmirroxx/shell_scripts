# check the event log aka Ereignis Protokoll for errors
Get-WinEvent -LogName Sysreated -gt (Get-Date).AddDays(-14) } \
	| Where-Object {$_.Message -match "(Secure|Boot)"}tem \
	| Where-Object {$_.LevelDisplayName -eq 'Error' -and $_.TimeC

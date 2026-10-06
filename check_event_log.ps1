# check the event log aka Ereignis Protokoll for errors
Get-WinEvent -LogName System \ 
	| Where-Object {$_.LevelDisplayName -eq 'Error' -and $_.TimeCreated -gt (Get-Date).AddDays(-14) } \
	| Where-Object {$_.Message -match "(Secure|Boot)"}

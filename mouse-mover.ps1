param(
    [int]$Interval = 30
)

if ($Interval -lt 1) {
    Write-Host "L'intervalle doit etre >= 1 seconde." -ForegroundColor Red
    exit 1
}

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

Write-Host "Mouse mover demarre. Intervalle : $Interval seconde(s)."
Write-Host "Appuyez sur Ctrl+C pour arreter."

while ($true) {
    $pos = [System.Windows.Forms.Cursor]::Position
    $newPos = New-Object System.Drawing.Point(($pos.X + 1), $pos.Y)
    [System.Windows.Forms.Cursor]::Position = $newPos
    Start-Sleep -Milliseconds 50
    [System.Windows.Forms.Cursor]::Position = $pos
    $timestamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$timestamp] Souris bougee."
    Start-Sleep -Seconds $Interval
}

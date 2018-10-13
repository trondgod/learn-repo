$duration = Get-Random -Minimum 1 -Maximum 6
$sleepTimeEachIteration = 1
$finish = $false

Write-Host "Do until loop example. Iterate"$duration" times when waiting "$sleepTimeEachIteration"s in each iteration"
Write-Host ""

$iteration = 1
$startTime = Get-Date

do {
    Write-Host "Iteration "$iteration
    $iteration = $iteration + 1

    Start-Sleep $sleepTimeEachIteration
    $currentTime = Get-Date
    $actualDuration = New-TimeSpan $startTime $currentTime

    if ($actualDuration.TotalSeconds -ge $duration) {
        $finish = $true
        Write-Host "It's time to exit the loop"
    }

} until ($finish)

Write-Host "We are out of the loop :-)"
#Write-Host -NoNewLine 'Press any key to continue...';
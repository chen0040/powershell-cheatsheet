$jobs = Get-Job

foreach($job in $jobs){
    if($job.State -eq "Completed") {
        Write-Host "Remove Job "$job.Id
        Remove-Job $job.Id
    }
}

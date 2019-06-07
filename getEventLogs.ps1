$LogStartDate = (get-date).AddDays(-30).ToString("M/dd/yyy hh:mm:ss")
Get-EventLog -List

$EventLogTypes = ("Application", "HardwareEvents", "System", "Security")

foreach ($EventLog in $EventLogTypes) {
    Write-Host "[ Windows Event Log ]: $EventLog"
    Get-EventLog -LogName $EventLog -EntryType Error -After $LogStartDate
    }

$REGPATH = "HKCR:\ms-msdt"
$HOSTNAME = [System.Net.Dns]::GetHostName()
New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT -ErrorAction SilentlyContinue

if (get-item -path $REGPATH -ErrorAction SilentlyContinue) {
	reg export HKEY_CLASSES_ROOT\ms-msdt c:\tools\ms-msdt-backup.reg
        Write-host "Registry key backed up for $HOSTNAME"
        reg delete HKEY_CLASSES_ROOT\ms-msdt /f
        Write-host "Registry Key Successfully Deleted For $HOSTNAME"
    }
    
    else {
        write-host "Registry Key Doesnt Exist for $HOSTNAME"
        }
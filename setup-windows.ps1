# Check Admin
$admin = [Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544'

if ($admin) {
    # Installing choco
    try {
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        choco feature enable -n=allowGlobalConfirmation
        Write-Host "`nStep 1/5 Completed!`n" -ForegroundColor Green
    }
    catch {
        Write-Host "`nStep 1/5 Failed!`nError:`n" -ForegroundColor Red
        Write-Error $_
    }
    try {
        choco install vagrant
        Write-Host "`nStep 2/5 Completed!`n" -ForegroundColor Green
    } catch {
        Write-Host "`nStep 2/5 Failed!`nError:`n" -ForegroundColor Red
        Write-Error $_
    }
    try {
        choco install virtualbox
        Write-Host "`nStep 3/5 Completed!`n" -ForegroundColor Green
    } catch {
        Write-Host "`nStep 3/5 Failed!`nError:`n" -ForegroundColor Red
        Write-Error $_
    }
    Set-Location .\src
    vagrant up
    Write-Host "If everyting went well till now, you can SSH into your debian VM by running" -ForegroundColor blue
    Write-Host "vagrant ssh" -ForegroundColor green
    Write-Host "`nHelpful commands:`n"
    Write-Host "To Restart the VM    vagrant reload" -ForegroundColor blue
    Write-Host "To Delete the VM and it's data    vagrant destroy" -ForegroundColor blue
    Write-Host "To start/create the VM    vagrant up" -ForegroundColor blue
    Write-Host "To shutdown the VM    vagrant halt" -ForegroundColor blue
} else {
    write-host "You're not Administrator. Please Run as administrator." -ForegroundColor red
}


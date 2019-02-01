#initialisation variable date
$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")
# créer un dossier log_variable date
New-Item -Name "log_$date" -ItemType directory 

#Vérifie si le fichier LIVRAISON existe 
If ((Test-Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\LIVRAISON.csv") -eq $True) {
#créer un fichier logpresent.txt
Start-Transcript -Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\log_$date\logpresent.txt" -NoClobber
# dire le fichier LVRAISON.csv est présent dans le fichier log
If ((Test-Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\LIVRAISON.csv") -eq $True) {Write-Host "Present"}
Stop-Transcript
}

#Vérifie si le fichier LIVRAISON existe
If ((Test-Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\LIVRAISON.csv") -eq $False) {
#créer un fichier logabsent.txt
Start-Transcript -Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\log_$date\logabsent.txt" -NoClobber
# dire le fichier LVRAISON.csv est absent dans le fichier log
If ((Test-Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\LIVRAISON.csv") -eq $False) {Write-Host "Absent"}
Stop-Transcript
}
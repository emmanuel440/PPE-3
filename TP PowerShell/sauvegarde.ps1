#Variable date
$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")
#Vérifie si le fichier log.present existe
If ((Test-Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\log_$date\logpresent.txt") -eq $True)
{

Set-Location "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\SAUVEGARDES\"
# créer un dossier variable date 
New-Item -Name "$date" -ItemType directory 
# copie le fichier livraison.csc dans le répertoire $date
Copy-Item "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\LIVRAISON.csv" -Destination "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\SAUVEGARDES\$date"
}
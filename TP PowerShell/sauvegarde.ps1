#Variable date
$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")
#V�rifie si le fichier log.present existe
If ((Test-Path "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\log_$date\logpresent.txt") -eq $True)
{

Set-Location "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\SAUVEGARDES\"
# cr�er un dossier variable date 
New-Item -Name "$date" -ItemType directory 
# copie le fichier livraison.csc dans le r�pertoire $date
Copy-Item "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\LIVRAISON.csv" -Destination "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\SAUVEGARDES\$date"
}
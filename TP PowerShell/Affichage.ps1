﻿Set-location "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell"

$csv=Import-Csv "LIVRAISON.csv" #fichier csv
$path1 = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\Dormeuil\a_livrer.csv"
$path2 = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\Hubert\a_livrer.csv"
$path3 = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\Perrin\a_livrer.csv"

ForEach ($item in $csv)

{

$Livreur = $item.Livreur


$Adresse = $item.Adresse

$Commande = $item.Commande

$Date = $item.Date

$MyLine = $Livreur + "," +" "+ $Adresse + "," +" "+ $Commande + "," +" "+  $Date + ","

If($Livreur -eq "Dormeuil") {
Add-Content $path1 $MyLine
}
If($Livreur -eq "Hubert") {
Add-Content $path2 $MyLine
}
If($Livreur -eq "Perrin") {
Add-Content $path3 $MyLine
}
}

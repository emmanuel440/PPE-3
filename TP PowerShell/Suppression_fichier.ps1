Set-location "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell"

#$csv=Import-Csv "LIVRAISON.csv" #fichier csv
$path1 = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\Dormeuil\a_livrer.csv"
$path2 = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\Hubert\a_livrer.csv"
$path3 = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\Perrin\a_livrer.csv"

If ((Test-Path $path1) -eq $true) {
Remove-Item "$path1"
}

If ((Test-Path $path2) -eq $true) {
Remove-Item "$path2"
}

If ((Test-Path $path3) -eq $true) {
Remove-Item "$path3"
}


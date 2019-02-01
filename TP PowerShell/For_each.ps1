Set-location "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell"

$P=Import-Csv "USERSLIVRAISON.csv" #fichier csv

ForEach ($item in $P) #Pour chaque ligne du fichier USERLIVRAISON.csv

{

$Nom = $item.Nom

$Prénom = $item.Prenom

$Path = "C:\Users\MARDE-ALAGAMA\Desktop\TP PowerShell\"+ $item.Nom #emplacement du dossier à créer
If(!(test-path $path))
{
    New-Item -ItemType Directory -Force -Path  $path #Création du dossier

}

}



$b=[IO.File]::ReadAllBytes('C:\Users\jorgeflordelis\Downloads\entry_1_0\kowh4o5e.rxk'); # Ruta del binario
$s=[Text.Encoding]::UTF8.GetString($b, 39606, 1200); # Decodificamos la parte que interesa
Write-Host ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($s)));
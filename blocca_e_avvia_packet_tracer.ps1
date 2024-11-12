# Definisci i parametri della regola
$RuleName = "Packet Tracer Offline - NO LOGIN"
$ProgramPath = "C:\Program Files\Cisco Packet Tracer 8.2.2\bin\PacketTracer.exe"

# Crea una nuova regola per bloccare la connessione in uscita
New-NetFirewallRule -DisplayName $RuleName -Direction Outbound -Program $ProgramPath `
-Action Block -Profile Domain,Private,Public

Write-Output "Regola Firewall creata: $RuleName"

# Avvia Cisco Packet Tracer
Start-Process -FilePath $ProgramPath

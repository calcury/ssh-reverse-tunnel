while ($true) {
    ssh -N -R 2222:localhost:22 `
        -o "ServerAliveInterval 30" `
        -o "ServerAliveCountMax 3" `
        -o "ExitOnForwardFailure yes" `
        -o "StrictHostKeyChecking accept-new" `
        username@hostname
    Start-Sleep -Seconds 5
}
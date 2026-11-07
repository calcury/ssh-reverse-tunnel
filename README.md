```bash
ssh-keygen
.\OpenSSH-Win64\sshd.exe -f .\OpenSSH-Win64\sshd_config_default
```

replace your username and hostname in ps1
```
while ($true) {
    ssh -N -R 2222:localhost:22 `
        -o "ServerAliveInterval 30" `
        -o "ServerAliveCountMax 3" `
        -o "ExitOnForwardFailure yes" `
        -o "StrictHostKeyChecking accept-new" `
        username@hostname
    Start-Sleep -Seconds 5
}
```

```bash
powershell -ExecutionPolicy Bypass -File .\tunnel.ps1
```
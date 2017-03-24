### Get disk UUID
    diskutil info /Volumes/Fuji

### Disable SIP(system integrity projection)
    Restart computer and hold down Command-R (Recovery Mode)
    Utilities -> Terminal, input: csrutil disable
    Reboot


### Show ".file" in Finder
    defaults write com.apple.finder AppleShowAllFiles YES
    or
    defaults write com.apple.finder AppleShowAllFiles -bool true

    killall Finder

### SSH auto login without password
    avoid input passphrase(temperary):
        ssh-add ~/.ssh/id_rsa
    avoid input passphrase(parmanent):
        #### add these lines to ~/.ssh/config
        Host *
            UseKeychain yes
            AddKeysToAgent yes
            IdentityFile ~/.ssh/id_rsa

    on local:
        scp ~/.ssh/id_rsa.pub  user@remote:/tmp/
    on remote:
        cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys
        chmod 600 ~/.ssh/authorized_keys

### SSH host alias
    $ cat ~/.ssh/config
    Host  elk
        HostName 192.168.1.168
        User jiapj

    $ ssh elk

### Kerberos login
    ktutil -k user.keytab add  -p user@server -e des3-cbc-sha1 -V9
    kinit -k -t user.keytab user@server
    klist --list-all

### Crontab -> Launchctl
    15 6 * * * /path/to/run

    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>6</integer>
        <key>Minute</key>
        <integer>15</integer>
    </dict>

### Download Documents
    wget -c -r -np -k -L -p  /path/to/index.html
    

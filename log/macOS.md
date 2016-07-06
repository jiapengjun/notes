### Get disk UUID
    diskutil info /Volumes/Fuji

### Disable SIP(system integrity projection)
    Restart computer and hold down Command-R (Recovery Mode)
    Utilities -> Terminal, input: csrutil disable
    Reboot

### Split & Merge big size file
    split -b 1024m big_file
    cat xa*  > new_big_file

### Show ".file" in Finder
    defaults write com.apple.finder AppleShowAllFiles YES

### SSH auto login without password
    on client:
        scp ~/.ssh/id_rsa.pub  user@server:/tmp/
    on server:
        cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys
        chmod 600 ~/.ssh/authorized_keys

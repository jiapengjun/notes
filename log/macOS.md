### Get disk UUID
    diskutil info /Volumes/Fuji

### Disable SIP(system integrity projection)
    Restart computer and hold down Command-R (Recovery Mode)
    Utilities -> Terminal, input: csrutil disable
    Reboot

### Split & Merge big size file
    split -b 1024m big_file
    cat xa*  > new_big_file


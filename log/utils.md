### reverse lines of a file
    rev file_name

### console matrix
    brew install cmatrix
    cmatrix -C red

### list processes as a tree
    brew install pstree
    pstree

### Split & Merge big size file
    split -b 1024m big_file
    cat xa*  > new_big_file

### Base64 encode/decode
    base64 readme.MD > /tmp/output.b64
    base64 -D /tmp/output.b64

### list all application using port 80
    sudo lsof -i :80

### rainbows and unicorns in your console
    brew install lolcat
    lolcat ./readme.MD

### SMTP command
    telnet localhost 25
    mail from: my@mail.addr
    rcpt to: your@mail.addr
    data
    this is a test
    .
    quit

### Send mail
    echo "this is content" | mail -s "this is title" EMAIL_ADDR

### Modify recipient address
    /etc/postfix/main.cf: smtp_generic_maps = hash:/etc/postfix/generic
    /etc/postfix/generic: his@localdomain.local  hisaccount@hisisp.example
    sudo postmap generic
    sudo postfix reload

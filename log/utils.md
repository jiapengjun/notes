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

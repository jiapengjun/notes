Brew:
    brew update
    brew upgrade --cleanup

    brew search PKG
    brew info --installed
    brew deps --tree --installed

    brew leaves

MacPort:
    port selfupdate
    port -u upgrade outdated
    
    port search --line --glob PKG
    port info pkg
    port deps pkg

    port list requested
    port contents PKG

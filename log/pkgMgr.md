Brew(macOS):
    brew update
    brew upgrade --cleanup

    brew search PKG
    brew deps --tree --installed
    brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"

    brew leaves

MacPort(macOS):
    port selfupdate
    port -u upgrade outdated
    
    port search --line --glob PKG
    port info pkg
    port deps pkg

    port list requested
    port contents PKG

apt-get(linux):
yum(linux):

pip(python):
gem(ruby):
npm(node):

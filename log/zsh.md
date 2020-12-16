### Emulate sh or ksh
    if [ -n "$ZSH_VERSION" ]; then emulate -L ksh; fi

### For word in strings
    #!/bin/zsh
    setopt shwordsplit

    days="Monday Tuesday Wednesday Thursday Friday"
    for day in ${days}
    do
        echo ${day}
    done


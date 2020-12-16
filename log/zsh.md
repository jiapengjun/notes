### Emulate sh or ksh
    if [ -n "$ZSH_VERSION" ]; then emulate -L ksh; fi

### For word in string
    #!/bin/zsh
    setopt SHWORDSPLIT
    days="Monday Tuesday Wednesday Thursday Friday"
    for day in ${days}
    do
        echo ${day}
    done

    unsetopt SHWORDSPLIT
    days="Monday Tuesday Wednesday Thursday Friday"
    for day in ${days}
    do
        echo ${day}
    done

    days=(Monday Tuesday Wednesday Thursday Friday)
    for day in ${days}
    do
        echo ${day}
    done

### run shell step by step
    trap read debug

### set default value
    name=${1:-"default"}
    echo $name

    # or assign if not set
    name=$1
    echo $name ${name:="default"} $name

### num compare
    if [ $num -eq 10 ]; then ...
    if ((num == 10)); then ...
    
### pattern check
    pattern="^[0-9]{8}$"
    if [[ $date =~ $pattern ]] ;then
        ...
    fi

### read password
    read -sp "Enter your password:" passwd
    echo $passwd

### string replace
    str="white horse is not horse"
    echo ${str//horse/cow}

### convert number base.
    echo $((16#FF))         ## 255
    bc <<<"obase=16;255"    ## FF
    echo $((36#AZ))         ## 395
    bc <<<"obase=36;395"    ## 10 35

### float calculate
    bc <<< "scale=3; 2/3"

### read multiple values from one line
    while IFS=$':' read name _ id gid fullName home shell
    do
        echo $name, $fullName, $home
    done < /etc/passwd

### read lines from multiple files
    while read line
    do
        echo $line
    done < <(cat *.sh)

### for in range(n)
    for ((i=1; i<=10; i++)) # variable supported
    for i in $(seq 1 10)    # variable supported
    for i in {1..10}        # variable not supported
    do
        echo $i
    done 

### Interact with user
    PS3='Please choose the train: '
    options=("Azul" "AzulSeed" "Hunter" "HunterSeed")
    select opt in "${options[@]}"
    do
        case $opt in
            "Azul"|"AzulSeed"|"Hunter"|"HunterSeed")
                train=${opt}
                break
                ;;
            *)echo "Invalid $REPLY, try again"
        esac
    done

    PS3='Please choose the override mode: '
    options=("upgrade" "erase")
    select opt in "${options[@]}"
    do
        case $opt in
            "upgrade"|"erase")
                override=$((REPLY - 1))
                break
                ;;
            *) echo "Invalid $REPLY, try again"
        esac
    done

    read -p "Enter version [latest]: " version
    version=${version:-latest}

    echo $train $override $version

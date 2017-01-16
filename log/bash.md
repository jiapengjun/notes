### run shell step by step
    trap read debug

### set default value
    name=${1:-"default"}
    echo $name

    # or assign if not set
    name=$1
    name=${name:="default"}
    echo $name

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

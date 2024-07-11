#setopt vi       ## set -o vi;  set +o vi, setopt novi, unsetopt vi;
bindkey -v

#autoload -Uz promptinit
#promptinit
#prompt -s elite
export PS1='%F{cyan}┌┌%F{blue}(%F{cyan}%n%F{red} %F{yellow}%m%F{blue})%F{cyan}-%F{blue}(%F{cyan}%D{%a %b %d %H:%M:%S} %F{red}%D{%Z}%F{blue})%F{cyan}┌-%F{blue}¨%F{cyan}-¨¨%F{blue}˙
%F{cyan}└┌%F{green} %d %F{cyan}%#%f '

#setopt autocd
#setopt correct

export HISTSIZE=8080  #session hist
export SAVEHIST=8000  #file hist
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt extended_history
alias history='history 1'   #list all the entries, instead of only 15

alias ls='ls -GF'

export VISUAL=nvim 
# Use Neovim instead of Vim or Vi 
alias vi=nvim 
alias vim=nvim 

alias grep='grep --color=auto'
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;32'

#alias ppj='python -m json.tool'
alias ppj='python -c'"'"'import fileinput, json; print(json.dumps(json.loads("".join(fileinput.input())),sort_keys=True, indent=4, ensure_ascii=False))'"'"''

alias blv='brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"'

alias glg='git log --oneline --abbrev-commit --all --graph --decorate --color'
alias gpl='git pull; git submodule foreach git pull origin main'
alias gph='git add .; git commit -m"quick commit"; git push'

# ctags -R --exclude=.git --exclude=log *
alias ctags="`brew --prefix`/bin/ctags"

function plan()
{
    if [ $# -eq 1 ] && ([[ $1 = 'e' ]] || [[ $1 = '-e' ]]) ;then
        vi ~/.zshrc
        source ~/.zshrc
    else
        echo -e '\033[00;36m'  # Can use "printf" to replace "echo -e"
        echo 'todo list:'
        echo '  Share: TA, XCTest'
        echo '  Auto: Mac, Vision Pro'
        echo -e '\033[00m'
    fi
}
plan

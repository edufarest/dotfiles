export PATH=$PATH:/usr/local/mysql/bin

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source ~/.profile

# Git branch in prompt.
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }
    
export PS1="\[\033[01;32m\]\u@\h \W\[\033[22m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


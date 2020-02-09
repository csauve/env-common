# do nothing if not interactive
[[ $- == *i* ]] || return

# try loading bash completions
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
[ -r /usr/local/etc/bash_completion.d/git-completion.bash ] && . /usr/local/etc/bash_completion.d/git-completion.bash
[ -r /usr/share/git-core/contrib/completion/git-prompt.sh ] && . /usr/share/git-core/contrib/completion/git-prompt.sh
[ -r /usr/local/etc/bash_completion.d/git-prompt.sh ] && .  /usr/local/etc/bash_completion.d/git-prompt.sh
[ -r /etc/bash_completion.d/git ] && . /etc/bash_completion.d/git
[ -r /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f ~/.ssh/known_hosts ]; then
  complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
fi

shopt -s histappend
export HISTTIMEFORMAT=`echo -e "[\033[90m%Y-%m-%d %T\033[37m]\033[0m "`
export HISTSIZE=2000
export HISTFILESIZE=2000
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'
#http://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt
export PS1='\e[90m$(date "+%H:%M:%S") \e[0m\u@\h \e[95m\W\e[33;1m$(__git_ps1) \e[0m\$ '
export EDITOR="vim"
export PATH="$PATH:~/bin"

alias l="ls"
alias ll="ls -lh"
alias lla="ls -lah"
alias rld=". ~/.bashrc"
alias psg="ps -ef | grep -i"
alias hist="history | grep -i"
alias wat="cat"
alias oops='sudo $(history -p \!\!)'
alias acki="ack -i"
alias mcint="mvn clean -DskipTests install"
alias mci="mvn clean install"
alias rgi="rg -i"
alias hr='printf "%*s" "$(tput cols)" | tr " " "-"'
alias here='echo "$(whoami)@$(hostname):$(pwd)"'
alias pullall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'


source /home/csauve/.config/broot/launcher/bash/br

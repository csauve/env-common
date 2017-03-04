# need to update this submodule
if [ -f ~/env-common/fasd/fasd ]; then
  source ~/env-common/fasd/fasd
fi

eval "$(fasd --init auto)"
alias j="z"
alias v='f -e vim'
alias le='f -e less'

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

if [ -f /etc/bash_completion.d/git ]; then
  source /etc/bash_completion.d/git
fi

if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

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
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
#http://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt

export ps1_color="$((0x$(hostname -s | md5sum | cut -f1 -d' ' | tr -d '\n' | tail -c2)))"
export PS1='\[\033[48;5;235m\]\[\033[38;5;249m\] $(date "+%H:%M:%S") \[\033[48;5;${ps1_color}m\]\[\033[38;5;16m\] (╯°□°)╯︵ $(hostname -s) \[\033[01;48;5;81m\]\[\033[38;5;16m\] \W$(__git_ps1) \[\033[90m\]\[\033[0m\] '
export EDITOR="vim"
export AUTOJUMP_AUTOCOMPLETE_CMDS="$EDITOR"
export AUTOJUMP_IGNORE_CASE=1
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig #libcairo needed this
SYSTEM_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$SYSTEM_PATH:~/bin"

command -v launchctl >/dev/null 2>&1 && launchctl setenv PATH "$PATH"

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

# $1 = pattern; $2 = file to append
appendToAll() {
  for i in $1; do cat $2 >> $i; done
}
alias appendto=appendToAll

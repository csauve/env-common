source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/Cellar/autojump/21.7.1/etc/autojump.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

shopt -s histappend
export HISTTIMEFORMAT=`echo -e "[\033[90m%Y-%m-%d %T\033[37m]\033[0m "`
export HISTSIZE=2000
export HISTFILESIZE=2000
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
export PS1='[\[\033[90m\]$(date "+%H:%M:%S")\[\033[37m\]] \[\033[32m\]┐(´_｀)┌ ~ \[\033[33m\]\W$(__git_ps1)\[\033[0m\] \$ '
export EDITOR="vim"
export AUTOJUMP_AUTOCOMPLETE_CMDS="$EDITOR"
export AUTOJUMP_IGNORE_CASE=1
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig #libcairo needed this
SYSTEM_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$SYSTEM_PATH:~/bin"

launchctl setenv PATH "$PATH"

alias l="ls"
alias ll="ls -lh"
alias lla="ls -lah"
alias rld=". ~/.bashrc"
alias psg="ps -ef | grep -i"
alias hsg="history | grep -i"
alias wat="cat"
alias oops='sudo $(history -p \!\!)'
alias acki="ack -i"
alias mcint="mvn clean -DskipTests install"
alias mci="mvn clean install"

# $1 = pattern; $2 = file to append
appendToAll() {
  for i in $1; do cat $2 >> $i; done
}
alias appendto=appendToAll

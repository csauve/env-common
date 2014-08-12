export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'
export PS1='\[\033[32m\]┐(´_｀)┌ ~ \[\033[33m\]\W$(__git_ps1)\[\033[0m\] \$ '
export EDITOR=vim

alias l="ls"
alias ll="ls -lh"
alias lla="ls -lah"
alias rld=". ~/.bashrc"
alias bashrc="$EDITOR ~/.bashrc; rld"
alias gitconfig="$EDITOR ~/.gitconfig"
alias mcint="mvn clean -DskipTests install"
alias mci="mvn clean install"

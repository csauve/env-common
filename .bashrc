# do nothing if not interactive
[[ $- == *i* ]] || return

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

if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
  source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

if [ -f ~/.ssh/known_hosts ]; then
  complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
fi

command_exists() {
  type "$1" &> /dev/null ;
}

md5command=md5
if command_exists md5sum ; then
  md5command=md5sum
fi

abs() {
  [ $1 -lt 0 ] && echo $((-$1)) || echo $1
}

rng_colors=(076 077 078 079 080 081 153 152 151 150 149 148 220 221 222 223 224 225)
hostname_hash=$(hostname | $md5command)
hostname_rng=$((0x${hostname_hash%% *}))
color_index=$(abs $(expr $hostname_rng % ${#rng_colors[@]}))
ps1_color=${rng_colors[$color_index]}

shopt -s histappend
export HISTTIMEFORMAT=`echo -e "[\033[90m%Y-%m-%d %T\033[37m]\033[0m "`
export HISTSIZE=2000
export HISTFILESIZE=2000
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'
#http://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt
export PS1='\[\033[48;5;235m\]\[\033[38;5;249m\]$(date "+%H:%M:%S") \[\033[38;5;${ps1_color}m\](╯°□°)╯︵ $(whoami)@$(hostname -s) \[\033[01;38;5;81m\]\W$(__git_ps1)\[\033[90m\]\[\033[0m\] '
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
alias here='echo "$(whoami)@$(hostname):$(pwd)"'
alias pullall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'
alias win32='WINEPREFIX=~/win32 WINEARCH=win32'
alias win64='WINEPREFIX=~/win64'

# $1 = pattern; $2 = file to append
appendToAll() {
  for i in $1; do cat $2 >> $i; done
}
alias appendto=appendToAll

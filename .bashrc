source /usr/local/Cellar/autojump/21.7.1/etc/autojump.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'
export PS1='[$(date "+%H:%M:%S")] \[\033[32m\]┐(´_｀)┌ ~ \[\033[33m\]\W$(__git_ps1)\[\033[0m\] \$ '
export EDITOR="atom -w"
export M2_HOME="/usr/local/Cellar/maven/3.2.3/libexec"
export M2="$M2_HOME/bin"
export MAVEN_OPTS='-Xms256m -Xmx1024m'
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export GROOVY_HOME="/usr/local/opt/groovy/libexec"
export PATH="~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export AUTOJUMP_AUTOCOMPLETE_CMDS="vim atom"
export AUTOJUMP_IGNORE_CASE=1
#required for libcairo:
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

launchctl setenv M2 "$M2"
launchctl setenv M2_HOME "$M2_HOME"
launchctl setenv JAVA_HOME "$JAVA_HOME"
launchctl setenv GROOVY_HOME "$GROOVY_HOME"
launchctl setenv PATH "$PATH"

alias l="ls"
alias ll="ls -lh"
alias lla="ls -lah"
alias rld=". ~/.bashrc"
alias bashrc="$EDITOR ~/.bashrc; rld"
alias gitconfig="$EDITOR ~/.gitconfig"
alias mcint="mvn clean -DskipTests install"
alias mci="mvn clean install"
alias psg="ps -ef | grep -i"

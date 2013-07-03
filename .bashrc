alias l='ls'
alias ll='ls -l'
alias lla='ls -la'

#alias pullreq='"/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" `<something>`...`git rev-parse --abbrev-ref @{u} | tr "/" "\n" | sed -n "2p"`'

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose git'

export PS1='\[\033[32m\]┐( °_°)┌ ~ \[\033[33m\]\W$(__git_ps1)\[\033[0m\] \$ '


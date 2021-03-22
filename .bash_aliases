# bash
alias cat='batcat $*'
alias nano='micro $*'
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# navigation
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias p='cd ~/Projects'

# network
alias globalip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='hostname -I'

# ls pimp
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git
alias develop='git checkout develop'
alias gg='git gui'
alias gpd='git pull origin develop'
alias gs='git status'
alias master='git checkout main 2>/dev/null || git checkout master'

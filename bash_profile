
# MACMINI bash profile

#   Set Paths
#   ------------------------------------------------------------
#   Ensure user-installed binaries like Homebrew take precedence

    export PATH=/usr/local/bin:$PATH

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/nano

#   Set architecture flags
    export ARCHFLAGS="-arch x86_64"

#   Load .bashrc if it exists
#   test -f ~/.bashrc && source ~/.bashrc

    if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
     . $(brew --prefix)/share/bash-completion/bash_completion
    fi

    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# start fresh
clear

#   -----------------------------
#   CHANGE PROMPT
#   -----------------------------

# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export PS1="___________________  | \u@\h | \w \n| => "
export PS2="| => "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------
    alias cp='cp -iv'                       # Preferred 'cp' implementation
    alias ..='cd ../'                       # Go back 1 directory level
    alias ~="cd ~"                          # ~:            Go Home
    alias ll='ls -FGlAhp'                   # Preferred 'ls' implementation
    cd() { builtin cd "$@"; ll; }           # Always list directory contents upon 'cd'
    alias mv='mv -iv'                       # Preferred 'mv' implementation
    alias c='clear'                         # c:       Clear terminal display
    alias which='type -all'                 # which:   Find executables
    alias path='echo -e ${PATH//:/\\n}'     # path:    Echo all executable Paths
    alias grep='ggrep'
    alias sed='gsed'
    alias path='echo -e ${PATH//:/\\n}'     # path:         Echo all executable Paths
    alias getmyip='dig +short myip.opendns.com @resolver1.opendns.com'
    alias clean='sudo periodic daily weekly monthly'
    alias proj='cd ~/Dropbox/PROJECTS'

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }
    
#   httpDebug:  Download a web page and show info on what took time
#   -------------------------------------------------------------------
    httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }
    
#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
    alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
    alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

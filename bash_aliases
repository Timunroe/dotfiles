# via imac
alias l='gls -GFh'
alias sed='gsed'
alias grep='ggrep'
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias which='type -all'                     # which:        Find executables
alias code='/Applications/Editors/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias clean='sudo periodic daily weekly monthly'
alias brewup='brew update && brew upgrade'
alias cdproj='cd ~/Documents/PROJECTSLOCAL/'

# via laptop
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
alias cddrop='cd ~/Dropbox/PROJECTS'

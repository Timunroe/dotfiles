# via imac
#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Paths
#   ------------------------------------------------------------
#  Ensure user-installed binaries take precedence
   export PATH=/usr/local/bin:$PATH
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad
#  Set architecture flags
   export ARCHFLAGS="-arch x86_64"
   export HISTCONTROL=ignoredups
   export HOMEBREW_GITHUB_API_TOKEN=edc96feb9e1c75559ec66a9e46207767f0c95f42
   export RBENV_ROOT=/usr/local/var/rbenv

#  Change Prompt
#  ------------------------------------------------------------
      
   PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
   PS1="$PS1\n"
   export PS1

#  Enable programmable completion features.
   if [ -f $(brew --prefix)/etc/bash_completion ]; then
     source $(brew --prefix)/etc/bash_completion
   fi
   
# Ruby versions
   if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

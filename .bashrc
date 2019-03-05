# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi



# Source all the bash profiles for the apps
for f in ./apps/*/.bashrc; do source $f; done

# Get to the code quickly - set $DEV_ROOT in host system .bashrc 
alias d="cd $DEV_ROOT"

# Common aliases
alias cat="highlight $1 -q --force --out-format=xterm256 --base16 -s $THEME_NAME"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -la --color=auto'
alias ls='ls --color=auto'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias c='clear'
alias x='exit'

# cd shortcuts
# todo: cdf should accept an optional root dir arg
# todo: cdf shouldn't cd if fzf returns a non zero exit code
alias cdf='cd $(fd -t d --hidden | fzf --preview-window=right:hidden)'
alias cd..='cd ..'
alias .='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias .7='cd ../../../../../../../'
alias .8='cd ../../../../../../../../'
alias .9='cd ../../../../../../../../../'
alias .10='cd ../../../../../../../../../../'

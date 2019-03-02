# terminal colour scheme
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
eval "base16_$THEME_NAME"

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

# git
source $DEV_ENV_ROOT/.git-completion.sh

# vim
alias vim='PYENV_VERSION=3.6.8 nvim'

# fzf
bind -x '"\C-f": fzf'

# Screensaver
alias ssp="pipes.sh -p 10 -r 0 -R && base16_$THEME_NAME"
alias ssm='cmatrix -abs -u 2 -C blue'
alias ss='ssm'

# Rez
source $DEV_ENV_ROOT/rez/completion/complete.sh

alias cat='hlcat'
alias icat='kitty +kitten icat'

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

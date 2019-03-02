# terminal colour scheme
export TERM='xterm-256color'
export THEME_NAME='snazzy'
export BASE16_SHELL="$DEV_ENV_ROOT/base16-shell/"

# prefer dev env binaries
export PATH=$DEV_ENV_ROOT/bin:$PATH

# prefer system libs
export LD_LIBRARY_PATH=/lib64:$LD_LIBRARY_PATH:$DEV_ENV_ROOT/lib

# Acceptable ls colors
export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=01;36:*.au=01;36:*.flac=01;36:*.mid=01;36:*.midi=01;36:*.mka=01;36:*.mp3=01;36:*.mpc=01;36:*.ogg=01;36:*.ra=01;36:*.wav=01;36:*.axa=01;36:*.oga=01;36:*.spx=01;36:*.xspf=01;36:"

# git
export GIT_EXEC_PATH=$DEV_ENV_ROOT/libexec/git-core
export GIT_TEMPLATE_DIR=$DEV_ENV_ROOT/share/git-core/templates


# go
export PATH=$DEV_ENV_ROOT/go/bin:$PATH
export GOPATH=$DEV_ENV_ROOT/go/vendor:$GOPATH

# rust
export PATH=$DEV_ENV_ROOT/rust/bin:$PATH

# fzf
export FZF_DEFAULT_OPTS="--height=70% --preview=\"hlcat {}\" --preview-window=right:70% --bind up:preview-up,down:preview-down"
export FZF_DEFAULT_COMMAND='ag -l -g "" --no-color --silent --hidden --ignore-dir .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Highlight
export HIGHLIGHT_DATADIR=$DEV_ENV_ROOT/.highlight/

# Kitty Terminal
export PATH=$DEV_ENV_ROOT/kitty/bin:$PATH

# Rez
export PATH=$DEV_ENV_ROOT/rez/bin/rez:$PATH

# nvm
export NVM_DIR="$DEV_ENV_ROOT/nvm"

# pyenv
export PYENV_ROOT=$DEV_ENV_ROOT/pyenv/
export PATH=$PYENV_ROOT/bin:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

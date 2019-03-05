export DEV_ENV_PATH=$DEV_ENV_PATH:$DEV_ENV_ROOT/apps/fzf/bin
export DEV_ENV_LIB_PATH=$DEV_ENV_LIB_PATH:$DEV_ENV_ROOT/apps/fzf/lib

export FZF_DEFAULT_OPTS="--height=70% --preview=\"hlcat {}\" --preview-window=right:70% --bind up:preview-up,down:preview-down"
export FZF_DEFAULT_COMMAND='ag -l -g "" --no-color --silent --hidden --ignore-dir .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

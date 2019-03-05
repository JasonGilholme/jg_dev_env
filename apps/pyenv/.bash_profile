export PYENV_ROOT=$DEV_ENV_ROOT/apps/pyenv/
export DEV_ENV_PATH=$PYENV_ROOT/bin:$DEV_ENV_PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

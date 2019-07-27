echo "PYENV BASHRC"

SCRIPT=$(readlink -f $0)
JG_DEV_APP_ROOT=`dirname $SCRIPT`

export PYENV_ROOT=$JG_DEV_APP_ROOT/../apps/pyenv
export PATH=$PYENV_ROOT/bin:$PATH

echo $PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

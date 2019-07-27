echo "NVIM BASHRC"

SCRIPT=$(readlink -f $0)
JG_DEV_APP_ROOT=`dirname $SCRIPT`

export PATH=$PATH:$JG_DEV_APP_ROOT/../apps/nvim/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JG_DEV_APP_ROOT/../apps/nvim/lib


runjgvim() {
    # Update the python path with content from the .pythonrc file.
    for r in `find . -name .pythonrc`; do
        echo $r
        for p in `cat $r`; do
            echo $p
            export PYTHONPATH=$PYTHONPATH:`pwd`/$p
        done
    done

    echo $PYTHONPATH

    export PYENV_VERSION=3.7.4
    $JG_DEV_ENV_ROOT/apps/nvim/bin/nvim -u $JG_DEV_ENV_ROOT/apps/nvim/config/init.vim $@
}

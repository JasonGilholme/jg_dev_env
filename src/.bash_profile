# .bash_profile

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export OG_PATH=$PATH
export OG_LIB_PATH=$LD_LIBRARY_PATH

# Source all the bash profiles for the apps
for f in $DEV_ENV_ROOT/apps/*/.bash_profile; do source $f; done

# Source the base bash_profile for the dev env
source $DEV_ENV_ROOT/scripts/.bash_profile

# Set the main path vars from the dev env path vars
export PATH=$DEV_ENV_PATH:$OG_PATH
export LD_LIBRARY_PATH=/lib64:$OG_LIB_PATH:$DEV_ENV_LIB_PATH

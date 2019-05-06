# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# Source all the bash profiles for the apps
for f in $DEV_ENV_ROOT/apps/*/.bashrc; do source $f; done

# Source the base bashrc for the dev env
source $DEV_ENV_ROOT/scripts/.bashrc

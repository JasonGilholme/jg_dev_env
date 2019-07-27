export BASE16_SHELL="$JG_DEV_ENV_ROOT/apps/base16-shell/"
HELPER_SCRIPT=`realpath $BASE16_SHELL/profile_helper.sh`
eval "$("$HELPER_SCRIPT")"
eval "base16_$THEME_NAME"

if [[ -n "$1" && -n "$2" ]]; then
  git config --global user.email $2
  git config --global user.name $1
  git config --global --unset-all credential.helper
  git config --global --add credential.helper "cache --timeout 30000"
  git config --global credential.helper osxkeychain
  # Fall back to 8 hours cache if not iOS
  git config --global push.default simple
  git config --list
else
  echo "
  Git Configure
  Description: This script initializes your global configuration.

  Usage: $0 <name> <github-email>
  "
fi

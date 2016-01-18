# Git Initialize
# Description: This script sets your default git email to <github-email>,
#   username to <username> and saves your password in osxkeychain to save you
#   precious time.
# Usage: ./init.sh <github-email> <username>
if [[ -n "$1" && -n "$2" ]]; then
  git config --global user.email $1
  git config --global user.name $2
  git config --global credential.helper osxkeychain
  git config --global push.default simple
  git config --list
else
  echo "Check the usage in $0"
fi

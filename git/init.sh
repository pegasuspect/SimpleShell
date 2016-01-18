# Git Initialize
# Description: This script sets your default git email to <github-email> and
#   caches your password on your next login to save you time.
# Usage: ./gitInit.sh <github-email>
if [[ -n "$1" ]]; then
  git config --global user.email “$1”
  git config --global credential.helper cache
else
  echo "Check the usage in $0"
fi

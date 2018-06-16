if [[ -n "$1" && -n "$2" && -n "$3"  ]]; then
  if [[ -n "$3" ]]; then
    git config --global user.email $2@users.noreply.github.com
  else
    git config --global user.email $1
  fi
  git config --global user.name $2
  git config --global credential.helper osxkeychain
  git config --global push.default simple
  git config --list
else
  echo "
  Check usage below:

  Git Initialize
  Description: This script sets your default git email to <github-email>,
    username to <username> and saves your password in osxkeychain to save you
    precious time.
  Usage: ./init.sh <github-email> <username> <isEmailPrivate>
  "
fi

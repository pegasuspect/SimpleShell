if [[ -n "$1" && -n "$2" ]]; then
  if [[ "$1" = "no" ]]; then
    if [[ -n "$3" ]]; then
      git config --global user.email $3
    else
      echo "You did not provide a 3rd argument as your email."
      exit 1
    fi
  else
    git config --global user.email $2@users.noreply.github.com
  fi
  git config --global user.name $2
  git config --global credential.helper osxkeychain
  git config --global --add credential.helper "cache --timeout 30000"
  # Fall back to 8 hours cache if not iOS
  git config --global push.default simple
  git config --list
else
  echo "
  Git Configure
  Description: This script initializes your global configuration.

  Usage: $0 <isEmailPrivate> <username> [github-email]

  Options:
    isEmailPrivate = yes|no

  If your email is not private then provide it as the 3rd option/argument.
  "
fi

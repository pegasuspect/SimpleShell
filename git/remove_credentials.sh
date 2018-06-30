if [[ $1 = "please" ]]; then
  git config --global --remove-section user
  git config --global --remove-section credential
  git config --global --list
else
  echo "
  Remove Git Credentials
  Description: This script removes your default git email, username and your
    cached password on key chain.

  Usage: $0 \"please\"
  "
fi

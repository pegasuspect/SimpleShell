# argument validation, prevent accidental uses.
if [[ $1 = "please" ]]; then
  git add .
  git commit --amend --no-edit
  git rebase --continue
else
  echo "
  Rebase Continue without Changing Commit Message
  Description: Adds all changed files ie. edit on interactive Rebase
    and continues rebase.

  Usage: $0 \"please\"
  "
fi

if [[ -n "$1" ]]; then
  git rebase -i --committer-date-is-author-date HEAD~$1
else
  echo "
  Git Modify Commit History
  Description: You have to select one of the options on the list of commmits.
  Change 'pick' in front of each line with;
    - 'edit' edit to add or remove files from commit tree
    - 'squash' to merge the commit with the one above it
    - 'drop' to remove it
    - 'reword' to just change the commit message

  Usage: ./modifyHistory.sh <howManyCommitsBack>
  "
fi

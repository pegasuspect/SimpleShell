# Git Reset
# Description: Warning! This script removes your last <howManyCommitsBack>
#   commits. Your local files will also be reverted or even REMOVED! So take 
#   extra care using this script.
# Usage: ./gitReset.sh <howManyCommitsBack>
if [[ -n "$1" ]]; then
  git reset --hard HEAD~$1
  git push origin HEAD --force
else
  echo "Check the usage in $0"
fi

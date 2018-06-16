if [[ $1 = "please" ]]; then
  git gc
  git fsck --full
  git gc --prune=all
else
  echo "
  Git Garbage Collector
  Description: Removes dangling blobs and commits in your .git folder.

  Usage: ./gitGarbageCollect.sh \"please\"
  "
fi

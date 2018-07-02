if [[ ! -d '.git' ]]; then
  echo Not a git repository.
elif type xdg-open &> /dev/null; then
  # ubuntu
  xdg-open $(git config -l | grep url | cut -d= -f2 | cut -d. -f1,2)/commits/$(git branch | grep \* | cut -d' ' -f2)
elif type open &> /dev/null; then
  # mac
  open $(git config -l | grep url | cut -d= -f2 | cut -d. -f1,2)/commits/$(git branch | grep \* | cut -d' ' -f2)
fi

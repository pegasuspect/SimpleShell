# argument validation, prevent accidental uses.
if [[ $1 = "please" ]]; then
  # Code here
else
  echo "
  [Title]
  Description: [Desctiption]

  Usage: $0 \"please\"
  "
fi

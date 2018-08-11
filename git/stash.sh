# argument validation, prevent accidental uses.
stash_cut(){
    git stash list | cut -d: -f2,3
}
if [[ ! -d '.git' ]]; then
    echo Not a git repository.
elif [[ $1 = "+=" && ! -z $2 && ! -z $3 ]]; then
    git stash push -m $2 $3
elif [[ $1 = "+=" && ! -z $2 ]]; then
    git stash push -m "$2"
elif [[ $1 = "-=" && ! -z $2 ]]; then
    git stash pop $(git stash list | grep "$2" | head -1 | cut -d: -f1 | tr -d ' ')
elif [[ $1 = "list" && ! -z $2 ]]; then
    stash_index=$(git stash list | grep "$2" | head -1 | cut -d: -f1 | tr -d ' ')
    if [[ -z $stash_index ]]; then
        return 0
    fi
    stash_cut | grep "$2" --color=auto
    stash_cut | grep "$2" --color=auto | tr -C "*" "-"
    echo
    git stash show $stash_index
elif [[ $1 = "list" ]]; then
    stash_cut
else
    echo "
    Git Stash with Keywords
    Description: Using git-stash with keywords instead of indexes.

    Usage: $0 [+= <keyword> [-p <path/to/file>]] [-= <keyword>] [list [<part-of-the-keyword>]]

    $0 += <keyword>
    To stash your all of your changes.

    $0 += <keyword> [-p <path/to/file>]
    To stash spesific file(s) with stash.

    $0 -= <keyword>
    Extract a stash and remove it from the list.

    $0 list
    List the stash.

    $0 list <part-of-the-keyword>
    List what changes extracting a stash will make.
    "
fi
unset -f stash_cut

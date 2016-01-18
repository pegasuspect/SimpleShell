# Remove Git Credentials
# Description: This script removes your default git email, username and your
#   cached password on key chain.
# Usage: ./removeGitCredentialsOnThisMac.sh
echo "host=github.com
protocol=https

 copy and paste 3 lines above and press [return]"
git credential-osxkeychain erase

git config --global user.email ""
git config --global user.name ""
git config --global credential.helper "cache timeout--3600"
git config --list

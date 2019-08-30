# aliases
alias context="kubectl config current-context"
alias ls="ls -lart"

# export path
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=~/Library/Python/3.6/bin:$PATH
export CLICOLOR=1
export LSCOLOR='LSCOLORS=GxFxCxDxBxegedabagaced'
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# long bash history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=200000                   # big big history
export HISTFILESIZE=200000               # big big history

# vs code to work
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# local chef
export CHEF_USER=tnguyen                #chef username without _cf
export CHEF_SSH_KEY=$HOME/.ssh/id_rsa   #Path to keys
export C2_PATH=$HOME/git/c2             # Path to C2 Repo
export ORGNAME=cloud
export ORGNAME=crowdflower


# setting path for python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

#AWS configs
export AWS_CONFIG_FILE="${HOME}/.aws/config"
export AWS_CREDENTIALS_FILE="${HOME}/.aws/credentials"
export AWS_ACCESS_KEY_ID="$(grep '^aws_access_key_id' "$AWS_CREDENTIALS_FILE" --max-count 1 | cut -d= -f2 | tr -d ' ')"
export AWS_SECRET_ACCESS_KEY="$(grep '^aws_secret_access_key' "$AWS_CREDENTIALS_FILE" --max-count 1 | cut -d= -f2 | tr -d ' ')"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Gam
gam() { "/Users/tnguyen/bin/gam/gam" "$@" ; }
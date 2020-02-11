# aliases
alias context="kubectl config current-context"
alias ls="ls -lart"

# export path
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="~/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export CLICOLOR=1
export LSCOLOR='LSCOLORS=GxFxCxDxBxegedabagaced'
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export BUNDLE_GITHUB__COM="t0mmynguyen:97eff14f995821e036a7b04ca6d8c2109b8df94a"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
eval "$(rbenv init -)"

# long bash history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=200000                   # big big history
export HISTFILESIZE=200000               # big big history

# vs code to work
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# local chef
export CHEF_USER=tnguyen                 #chef username without _cf
export CHEF_SSH_KEY=$HOME/.ssh/id_rsa    #Path to keys
export C2_PATH=$HOME/git/c2              #Path to C2 Repo
export ORGNAME=cloud
export ORGNAME=crowdflower

# setting path for python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# aws configs
export AWS_CONFIG_FILE="${HOME}/.aws/config"
export AWS_CREDENTIALS_FILE="${HOME}/.aws/credentials"
export AWS_ACCESS_KEY_ID="$(grep '^aws_access_key_id' "$AWS_CREDENTIALS_FILE" --max-count 1 | cut -d= -f2 | tr -d ' ')"
export AWS_SECRET_ACCESS_KEY="$(grep '^aws_secret_access_key' "$AWS_CREDENTIALS_FILE" --max-count 1 | cut -d= -f2 | tr -d ' ')"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# aws ecr
[ -f "${HOME}/.aws/ecr-last-auth" ] || echo "0" > ${HOME}/.aws/ecr-last-auth
lastauth=$(cat ${HOME}/.aws/ecr-last-auth)
now=$(date +%s)
# Reauth every 6 hr
# 60 sec/min * 60 min/hr * 6 hr = 21600s
if [[ ${now} > $[${lastauth} + 21600] ]] | [[ ${lastauth} == 0 ]]; then
  # Log into AWS ECR without having to type it >:|
  eval "$(aws ecr get-login --no-include-email | sed 's|https://||') &>/dev/null" && \
  echo ${now} > ${HOME}/.aws/ecr-last-auth
fi

# gam
gam() { "/Users/tnguyen/bin/gam/gam" "$@" ; }
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tnguyen/google-cloud-sdk/path.bash.inc' ]; then . '/Users/tnguyen/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/tnguyen/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/tnguyen/google-cloud-sdk/completion.bash.inc'; fi

# Created by ssmall for 5.4.2

# BEGIN zplug
# Load zplug
source ~/.zplug/init.zsh

# Other zplug plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "peterhurford/up.zsh"
zplug "jimeh/zsh-peco-history"

# Load the spaceship prompt
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Configure spaceship prompt
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always
SPACESHIP_KUBECONTEXT_PREFIX="with k8s "
SPACESHIP_HG_SHOW=false

# vi mode
#bindkey -v
export KEYTIMEOUT=1

# History
export HISTSIZE=2000000
export SAVEHIST=200000
export HISTFILE=~/.zsh_history
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP

# END zplug
zplug load

export GOPATH=~/.go
export PATH=$PATH:~/Library/Python/3.7/bin:~/Library/Python/2.7/bin
export PATH=/usr/local/tflint/bin:$PATH

#OktaAWSCLI
if [[ -f "$HOME/.okta/bash_functions" ]]; then
    . "$HOME/.okta/bash_functions"
fi
if [[ -d "$HOME/.okta/bin" && ":$PATH:" != *":$HOME/.okta/bin:"* ]]; then
    PATH="$HOME/.okta/bin:$PATH"
fi

alias tree=alder
alias ls="exa -l"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/steve.small/.sdkman"
[[ -s "/Users/steve.small/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/steve.small/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

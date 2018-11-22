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
bindkey -v
export KEYTIMEOUT=1

# History
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

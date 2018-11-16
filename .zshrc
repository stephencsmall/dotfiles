# Created by ssmall for 5.4.2

# BEGIN zplug
# Load zplug
source ~/.zplug/init.zsh

# Other zplug plugins
zplug "zsh-users/zsh-history-substring-search"

# Load the spaceship prompt
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Configure spaceship prompt
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always

# END zplug
zplug load

# vi mode
bindkey -v
export KEYTIMEOUT=1


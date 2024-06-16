alias c='clear'
alias h='history | cut -c 8-'

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# why not save everything?
HISTSIZE=999999
HISTFILESIZE=999999

# this is for reverse ctrl r
stty -ixon

# this is for mv hidden files as well https://askubuntu.com/a/259386/1078877
shopt -s dotglob

# remove sound https://superuser.com/a/1331067/1080263
bind 'set bell-style none'

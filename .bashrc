# Fast bash config with case-insensitive and autosuggestions
# Enable bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
    # Case-insensitive completion
    bind 'set completion-ignore-case on'
fi

# Fuzzy completion (better than zsh-autosuggestions)
if [ -f /usr/share/fzf/completion.bash ]; then
    . /usr/share/fzf/completion.bash
fi

# Fuzzy key bindings (better than zsh-autocomplete)
if [ -f /usr/share/fzf/key-bindings.bash ]; then
    . /usr/share/fzf/key-bindings.bash
fi

# Bash syntax highlighting (equivalent to zsh-syntax-highlighting)
[[ -f /usr/share/blesh/ble.sh ]] && source /usr/share/blesh/ble.sh --attach=none

# Minimal prompt [ | ]
PS1='[ | ] '

# Basic aliases
alias ls='ls --color=auto'
alias ll='ls --la'
alias la='ls -a'
alias grep='grep --color=auto'
alias shyt='python /home/xena/shyt2.py'

# History settings
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# Case-insensitive everything
shopt -s nocaseglob

# Auto cd (like zsh)
shopt -s autocd

# Start X if on tty1
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi
# .bashrc

#aliases
alias ex='exit'
alias ll='eza -l -all --icons --sort=type --group-directories-first --group'
alias ls='eza --icons --sort=type'
alias tree='eza -al --tree --icons'
alias sysupdate='sudo dnf update'
alias i='sudo dnf install'
alias s='sudo dnf search'
alias rmp='sudo dnf5 remove'
alias vim='nvim'
alias ..='cd ..'
alias cat='bat'
#Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

colorscript random

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

PATH="$HOME/.cargo/bin${PATH:+:${PATH}}"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#bash-autocompletion

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

#starship
eval "$(starship init bash)"

#fuzyfinder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

###Fetches###
# nerdfetch
#fastfetch -c ~/.git/fastfetch/presets/examples/13.jsonc


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

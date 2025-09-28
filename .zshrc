# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=1000
unsetopt beep
# End of lines configured by zsh-newuser-install

#----------Fetch----------#
# nerdfetch
#fastfetch -c ~/.git/fastfetch/presets/examples/13.jsonc
colorscript random
#----------Starship----------#
eval "$(starship init zsh)"
#-----Zoxide-----#
eval "$(zoxide init zsh)"

#aliasrc
# if [ -f ~/.aliasrc ]; then
#     source ~/.aliasrc
# fi

source ~/.dotfiles/.aliasrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

#Leia isso aqui poha!! Se seu zsh estiver dando problemas com o teclado dnv use os comandos abaixo e seja feliz#

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey '5~' kill-word

#-----Zsh-plugins-----#
source /home/jg/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -U compinit; compinit
source ~/git/fzf-tab/fzf-tab.plugin.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:"/home/jg/.local/bin"
#-----VI-Mode-----#
# # bindkey -v
# bindkey '\e ' autosuggest-accept

#Completion styling
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'
zstyle ':fzf-tab:complete:__zoxide_z:*'fzf-preview 'ls --color $realpath'
source /home/jg/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#---GEMINI API KEY---#
export GEMINI_API_KEY="AIzaSyCydXcJ0zVd0kqwoPZnOixY9fkFwvp8bHc"
#---Editor---#
export EDITOR="/usr/bin/nvim"

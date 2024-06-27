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

#aliasrc
if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Leia isso aqui poha!! Se seu zsh estiver dando problemas com o teclado dnv use os comandos abaixo e seja feliz#

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey '5~' kill-word

#-----Zsh-plugins-----#
source /home/jg/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:"/home/jg/.local/bin"
export JAVA_COMPILER="/usr/bin/javac"

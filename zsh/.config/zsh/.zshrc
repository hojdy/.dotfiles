# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#ZSH_THEME="gianu"
autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

# This will set the default prompt to the walters theme
plugins=(colored-man-pages git sudo zsh-syntax-highlighting zsh-completions zsh-autosuggestions you-should-use zsh-vimode-visual zsh-autocomplete)



source /home/hojdy/.config/broot/launcher/bash/br
source /home/hojdy/.config/zsh/plugins/colored-man-pages.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/vi-mode/vi-mode.zsh
source /home/hojdy/.config/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias v='nvim'
alias vim='nvim'
alias fm='vifm'
alias cat="bat"
alias ls="exa"
alias find="fd"
#void linux update and query repo
alias xi='sudo xbps-install -Suy '
alias xq='sudo xbps-query -Rs '


#initialize Z (https://github.com/rupa/z)
. ~/z.sh


source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
unsetopt HIST_SAVE_NO_DUPS       # Write a duplicate event to the history file

bindkey -v
export KEYTIMEOUT=1

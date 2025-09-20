#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt EXTENDED_HISTORY

#alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Load Starship config
eval "$(/usr/bin/starship init zsh --print-full-init)"

alias diff='kitten diff'
alias icat='kitten icat'
alias c='clear'
alias cd='z'
alias ls='eza --icons --group-directories-first -1'
alias la='ls -a'
alias ll='la --no-user --long'
alias tree='eza --icons --tree --group-directories-first'
alias ssh='kitten ssh'

alias gb='git branch'
alias gs='git status'
alias gw='git switch'
alias gd='git diff'
alias ga='git add'
alias gm='git commit -m'
alias gp='git push'
alias gl='git log'
alias gr='git restore'

# Palette (Catppuccin Frappé)
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
eval "$(fzf --zsh)"

PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init zsh)"

PATH="$PATH:$HOME/idea-IU-242.20224.300/bin/"
export DENO_INSTALL="/home/sushi/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export EDITOR="micro"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

bindkey "^[[3~" delete-char
bindkey "^[[3;5~" kill-word
bindkey "^H" backward-delete-word

export "MICRO_TRUECOLOR=1"
export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"
export PGPORT="5432"
alias vim='hyprlock'

# bun completions
[ -s "/home/sushi/.bun/_bun" ] && source "/home/sushi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


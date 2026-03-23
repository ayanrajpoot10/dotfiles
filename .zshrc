# Instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Exports
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"
export EDITOR='nvim'

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
    extract
    fzf
    fzf-tab
    sudo
    zsh-autopair
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="lsd"
alias ff="fastfetch"
alias matrix="cmatrix -C cyan"
alias dots="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias task="wails3 task"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Proxy
# export HTTP_PROXY="http://127.0.0.1:2080"
# export HTTPS_PROXY="$HTTP_PROXY"

# Zoxide
eval "$(zoxide init zsh)"


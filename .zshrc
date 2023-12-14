# Auto start tmux
if [ -z "$TMUX" ] && tmux has-session -t=root 2> /dev/null; then
  tmux a -t root
elif [ -z "$TMUX" ] && ! tmux has-session -t=root 2> /dev/null; then
	tmux new -s "root" -c "~"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/junhyungchang/.oh-my-zsh"

# Zsh style
ZSH_THEME=""
TYPEWRITTEN_SYMBOL=">"
TYPEWRITTEN_PROMPT_LAYOUT="singleline"
TYPEWRITTEN_RELATIVE_PATH="adaptive"

# IDK
plugins=(git)

source $ZSH/oh-my-zsh.sh

export GOROOT=/usr/local/go

export GOPATH=/Users/junhyungchang/go
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.bin:$PATH:$GOPATH/bin:$GOROOT/bin"

export TERM=xterm-256color
source /Users/junhyungchang/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export DOTFILES="$HOME/dotfiles2/dotfile"

# Variables
dark_theme="seoul256"
light_theme="seoul256-light"

# Aliases
alias python='python3'
alias dotfiles='/usr/bin/git --git-dir=/Users/junhyungchang/.dotfiles/ --work-tree=/Users/junhyungchang'
alias vim='nvim'

# Startup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# pfetch

#[ -f "/Users/junhyungchang/.ghcup/env" ] && source "/Users/junhyungchang/.ghcup/env" # ghcup-env
[ -f "/Users/junhyungchang/.ghcup/env" ] && source "/Users/junhyungchang/.ghcup/env" # ghcup-env

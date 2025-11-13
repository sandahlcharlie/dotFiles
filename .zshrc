# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set Zsh options
setopt hist_ignore_all_dups # Ignore duplicate commands in history
setopt hist_save_no_dups # Do not write duplicate commands to history file
setopt inc_append_history # Append history as commands are entered
setopt share_history # Share history between all sessions
setopt autocd # Automatically change to a directory if its name is typed
setopt extendedglob # Enable extended globbing
setopt nomatch # Prevent errors for unmatched globs
setopt prompt_subst # Enable parameter expansion in prompt
export EDITOR="nvim"
export VISUAL="nvim"
# Configure history file
HISTFILE=~/.zshhistory/$(hostname)history
HISTSIZE=100000
SAVEHIST=100000
# Load plugins
ZSH_PLUGINS_DIR=$HOME/.zsh/plugins
# powerlevel10k
if [ -d "$ZSH_PLUGINS_DIR/powerlevel10k" ]; then
source "$ZSH_PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme"
fi
# zsh-autocomplete
if [ -d "$ZSH_PLUGINS_DIR/zsh-autocomplete" ]; then
source "$ZSH_PLUGINS_DIR/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
fi
# zsh-completions
if [ -d "$ZSH_PLUGINS_DIR/zsh-completions" ]; then
fpath+=( "$ZSH_PLUGINS_DIR/zsh-completions" )
autoload -U compinit && compinit
fi
# zsh-syntax-highlighting
if [ -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
source "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi
# zsh-syntax-highlighting
if [ -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]; then
source "$ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
# Enable completions
autoload -Uz compinit
compinit
# Keybindings
bindkey '^R' history-incremental-search-backward # Enable search in history
# Prompt customization
autoload -U colors && colors
PS1='%F{green}%n@%m%f:%F{blue}%~%f %# '
# Aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias cls='clear'
alias h='history'
alias config='git --git-dir=$HOME/.config/ --work-tree=$HOME'
alias configpub='git --git-dir=$HOME/.config-public/ --work-tree=$HOME'
alias homeon='wg-quick up ~/wireguard/wg0.conf'
alias homeoff='wg-quick down ~/wireguard/wg0.conf'
cheat() {
if [ "$1" = "nvim" ]; then
nvim ~/.config/nvim/cheatsheet.md
else
echo "Cheatsheet for '$1' not found"
fi
if [ "$1" = "tmux" ]; then
nvim ~/.tmux/tmux_cheatsheet.md
else
echo "Cheatsheet for '$1' not found"
fi
}
# Enable auto-correction
setopt correct
# Improve performance of compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*'
# Path modifications
export PATH="$HOME/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.local/neovim/nvim-macos-arm64/bin:$PATH"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# enable vim keystrokes
bindkey -v


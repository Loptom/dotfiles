# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias n="nvim"
alias sunvim="sudo -E -s nvim"
alias ff="fastfetch"
alias cdwm="rm -f ~/dwm/config.h; sudo make -C ~/dwm install clean"
alias cdwmblocks="rm -f ~/dwmblocks/blocks.h; sudo make -C ~/dwmblocks install clean"
alias cst="rm -f ~/st/config.h; sudo make -C ~/st install clean"
alias discord="vesktop"

BinDirs=$(find -L "$HOME"/.local/bin -type d)
path+="${BinDirs//$'\n'/:}"

# PURE theme
fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit
prompt pure

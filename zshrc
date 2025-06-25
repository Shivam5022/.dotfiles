# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# Some aliases
alias cd='z'
alias cl='clear'
alias lg='lazygit'
alias ldc='lazydocker' 
alias ls="eza --icons=always"
alias fj="hx"
alias fjj="hx ."


# Function to query cheat.sh and display results with less
cheat() {
    if [ -z "$1" ]; then
        echo "Usage: cheat <topic>"
        echo "Example: cheat grep"
        return 1
    fi

    local topic="$1"

    # Fetch the cheat sheet from cheat.sh
    echo "https://www.cheat.sh/${topic}" 
    curl -s "https://www.cheat.sh/${topic}" | less -R
}

# showing neofetch
# neofetch
export HELIX_RUNTIME=~/helix/runtime

# Created by `pipx` on 2025-06-23 05:05:33
export PATH="$PATH:/Users/shivamverma/.local/bin"

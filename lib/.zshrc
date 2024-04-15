# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH" 
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$PATH:/.npm/bin:$PATH"

eval "$(pyenv init -)"
# ZSH_THEME="robbyrussell"
# ZSH_THEME=sunrise
# ZSH_THEME="random"
ZSH_THEME="candy"

#use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

#enable command auto-correction.
ENABLE_CORRECTION="false"

#display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew npm docker kubectl z)

# use custom dotfiles this is commented out because it is being sourced by .bashrc
for file in ~/.{exports,aliases,functions,profile,path}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='code'
 fi

if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# source <(kubectl completion zsh)pakk

source ~/.nvm/nvm.sh

source $ZSH/oh-my-zsh.sh

# source ~/.bash_profile
# pnpm
export PNPM_HOME="/Users/valborg/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias pushup="git push --set-upstream origin $(git branch --show-current)"
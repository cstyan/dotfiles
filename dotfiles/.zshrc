source ~/git/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

wd() {
  . /home/callum/bin/wd/wd.sh
}

eval "$(direnv hook zsh)"

export EDITOR="vim"

export NVM_DIR="/home/callum/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

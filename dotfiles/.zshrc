source ~/git/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply

wd() {
  . /home/callum/bin/wd/wd.sh
}

export EDITOR="vim"

# aliases
alias rsdunst='killall dunst;notify-send foo'

# prompt settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_DEFAULT_PREFIX=test
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECONTEXT_COLOR=blue
SPACESHIP_GOLANG_SYMBOL="go "
SPACESHIP_HOST_SHOW=true
SPACESHIP_DIR_TRUNC=
SPACESHIP_GIT_PREFIX="branch "

export PATH=/home/callum/go/bin:$PATH

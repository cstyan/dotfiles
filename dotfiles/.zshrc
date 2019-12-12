source ~/git/dotfiles/antigen/antigen.zsh
export SPACESHIP_ROOT=/home/callum/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-denysdovhan-SLASH-spaceship-zsh-theme
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting


antigen apply

wd() {
  . /home/callum/bin/wd/wd.sh
}

tk() {
  PAGER=cat /home/callum/go/bin/tk $@
}

export EDITOR="vim"

# aliases
alias rsdunst='killall dunst;notify-send foo'

# prompt settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_DEFAULT_PREFIX=
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECONTEXT_COLOR=blue
SPACESHIP_KUBECONTEXT_SYMBOL=☸
SPACESHIP_GOLANG_SYMBOL="go "
SPACESHIP_HOST_SHOW=true
SPACESHIP_DIR_TRUNC=
SPACESHIP_GIT_PREFIX="branch "

export PATH=/home/callum/google-cloud-sdk/bin:/home/callum/go/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

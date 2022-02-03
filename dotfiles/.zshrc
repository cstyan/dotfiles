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
  PAGER=bat /usr/bin/tk $@
}

export EDITOR="vim"

# aliases
alias rsdunst='killall dunst;notify-send foo'

# prompt settings
SPACESHIP_AWS_SHOW=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_DEFAULT_PREFIX=
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_PREFIX=""
SPACESHIP_KUBECTL_SUFFIX=""
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_PREFIX="["
SPACESHIP_KUBECONTEXT_SUFFIX="]"
SPACESHIP_KUBECONTEXT_COLOR="blue"
SPACESHIP_KUBECTL_SYMBOL=
SPACESHIP_GOLANG_SYMBOL="go "
SPACESHIP_HOST_SHOW=true
SPACESHIP_DIR_TRUNC=
SPACESHIP_GIT_PREFIX="branch "

SPACESHIP_PROMPT_ORDER=(
  dir
  git
  golang
  kubectl
  char
)

export PATH=/home/callum/google-cloud-sdk/bin:/home/callum/go/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/callum/.cargo/bin

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/callum/google-cloud-sdk/path.zsh.inc' ]; then . '/home/callum/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/callum/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/callum/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$PATH:/home/callum/bin

source '/home/callum/lib/azure-cli/az.completion'

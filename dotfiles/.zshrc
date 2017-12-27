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

eval "$(direnv hook zsh)"

export EDITOR="vim"

export NVM_DIR="/home/callum/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/callum/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/home/callum/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/callum/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/callum/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source <(kubectl completion bash)

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

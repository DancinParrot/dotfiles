# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kai/.zshrc'

autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit

# End of lines added by compinstall

alias ls='ls --color=auto'
alias vi='vim'
export CHROME_EXECUTABLE='/usr/bin/chromium'
export PATH=$PATH:$CHROME_EXECUTABLE
export PATH=$PATH:~/.cargo/bin

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User Aliases
alias vi='nvim'

# Google Cloud Platform
export GCP_BUCKET_NAME=knobby_maple
export GCP_PROJECT_ID=cloudlabs-387310
export GCP_PROJECT_ZONE=asia-southeast1-b
export GCP_PROJECT_REGION=asia-southeast1
export GCP_PROJECT_VPC=cloudlabs-staging
export GCP_SIGNING_SERVICE_ACCOUNT=signer@cloudlabs-387310.iam.gserviceaccount.com


# CloudLabs Keystore
export PRIVATE_KEY_PASSPHRASE="Pa\$\$w0rd"
export KEYSTORE_PASSWORD="Pa\$\$w0rd"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

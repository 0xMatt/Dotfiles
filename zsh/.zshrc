export TERM="xterm-256color"
source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-extras
antigen bundle command-not-found
antigen bundle arialdomartini/oh-my-git
antigen bundle history
antigen bundle laravel



# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle mafredri/zsh-async
antigen bundle HeroCC/LS_COLORS
# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
#antigen theme bhilburn/powerlevel9k powerlevel9k

# Powerlevel9k
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator context php_version time)
#POWERLEVEL9K_MODE='awesome-fontconfig'

# Tell Antigen that you're done.
antigen apply

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/matthew/Apps/google-cloud-sdk/path.zsh.inc' ]; then source '/home/matthew/Apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/matthew/Apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/matthew/Apps/google-cloud-sdk/completion.zsh.inc'; fi

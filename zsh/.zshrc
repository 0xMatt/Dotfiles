export TERM="xterm-256color"
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
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
antigen bundle chrissicool/zsh-256color

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle mafredri/zsh-async
antigen bundle HeroCC/LS_COLORS
# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme abaykan/Mine abaykan

# Powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)
POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_OS_ICON_BACKGROUND="237"
#POWERLEVEL9K_OS_ICON_FOREGROUND="255"
#POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
#POWERLEVEL9K_DIR_HOME_BACKGROUND="068"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"

# Tell Antigen that you're done.
antigen apply

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/matthew/Apps/google-cloud-sdk/path.zsh.inc' ]; then source '/home/matthew/Apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/matthew/Apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/matthew/Apps/google-cloud-sdk/completion.zsh.inc'; fi

# [Read when interactive]
#
# I put here everything needed only for interactive usage:
#
# prompt,
# command completion,
# command correction,
# command suggestion,
# command highlighting,
# output coloring,
# aliases,
# key bindings,
# commands history management,
# other miscellaneous interactive tools (auto_cd, manydots-magic)...

# This line is used for the bare git repo dot files (https://www.atlassian.com/git/tutorials/dotfiles)
alias config='/usr/bin/git --git-dir=/Users/ben/.cfg/ --work-tree=/Users/ben'









# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(
#   git colored-man-pages colorize pip python brew osx aws pyenv rsync yarn
# )


# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"


# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"




# This is standard script from Forklift app for setting as default instead of Finder: https://binarynights.com/manual#fileviewer
#-------------------------------------------------------------------------------------------------------------------------------
# defaults write -g NSFileViewer -string com.binarynights.ForkLift-3;
# defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add # '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.binarynights.ForkLift-3";}'
# # ...Then run the following after reboot:
# defaults delete -g NSFileViewer
# defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.apple.finder";}'

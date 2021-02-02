# 'brew tap'
# tap "homebrew/cask"
# tap Homebrew/cask-fonts
tap "romkatv/powerlevel10k"

# set arguments for all 'brew cask install' commands
cask_args appdir: "~/Applications", require_sha: true


# Install packages through brew...
cask "iterm2"
brew "mas"                         # Install apps from Mac App Store
cask "1password"

# Install Oh-my-zsh extensions
brew "zsh-autosuggestions"
brew "zsh-syntax-highlighting"
brew "zsh-history-substring-search"
brew "romkatv/powerlevel10k/powerlevel10k"

## Languages....
#brew install rust                 # I installed this manually (following Doug Milford's guide with VS Code)
brew "node"
brew "yarn"
brew "aws-shell"
#brew "awscli"                      # Old version. Better to download here: https://awscli.amazonaws.com/AWSCLIV2.pkg
brew "minikube"						# Kubernetes for local clusters
cask "docker"						# Docker Desktop (can be used as driver for minikube once Docker has been running)

# Install apps from Mac Store...
mas "Todoist", id: 585829637       # Todoist
mas "Spark", id: 1176895641        # Spark email client
mas "Amphetamine", id: 937984704   # Amphetamine - keep computer awake
mas "Gestimer", id: 990588172      # Quick countdown timer
mas "LiquidText", id: 922765270    # Research tool for collating documents with annotations/references
mas "Day one", id: 1055511498      # Day One diary

## Browsers....
cask "firefox"
cask "google-chrome"

## Install VS Code (extensions I use are configured after in config_dotfiles.sh)
cask "visual-studio-code"


## My utils...
cask "notion"
cask "appcleaner"
cask "Alfred"
cask "bartender"
cask "slack"
cask "sublime-text"
cask "vlc"
cask "WhatsApp"
cask "Inkscape"
cask "google-drive-file-stream"
cask "handbrake"
cask "fantastical"
cask "gemini"
cask "paragon-ntfs"                # For this to work, you have to do a manual step to navigate to and open the .app (otherwise just download and installl manually!)
cask "signal"
cask "adobe-creative-cloud"
cask "postman"
cask "cardhop"
# cask "flotato"
cask "quicken"
cask "daisydisk"
cask "dropbox"
# cask "Spotify"
cask "pock"                        # Mac touchbar dock (https://github.com/pigigaldi/Pock)
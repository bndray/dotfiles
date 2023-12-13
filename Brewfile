# set arguments for all 'brew cask install' commands
cask_args appdir: "/Applications/Brew", require_sha: true


# Install packages through brew...
brew "wget"
cask "iterm2"
brew "mas"                         # Install apps from Mac App Store
cask "1password"

# Install Oh-my-zsh extensions
# brew "powerlevel10k"


brew "zsh-autosuggestions"
#brew "zsh-syntax-highlighting"
#brew "zsh-history-substring-search"

## Languages....
# brew install rust                 # I installed this manually (following Doug Milford's guide with VS Code)
# brew "node"                       # !! Disabled for good reason - node somehow blocks graphql explorer working (think through bad install of sqlite possibly?)
# brew "yarn"                         # Not needed as it can be installed with `npm install -g yarn`
# brew "poetry"                       # Python poetry 
brew "aescrypt"
brew "awscli"
#brew "minikube"						# Kubernetes for local clusters
#brew "ffmpeg"
cask "docker"						# Docker Desktop (can be used as driver for minikube once Docker has been running)


# Mac Appstore installations...
mas "Todoist", id: 585829637       # Todoist
mas "Spark", id: 1176895641        # Spark email client
mas "Amphetamine", id: 937984704   # Amphetamine - keep computer awake
mas "Gestimer", id: 990588172      # Quick countdown timer
mas "LiquidText", id: 922765270    # Research tool for collating documents with annotations/references
mas "DaisyDisk", id: 411643860     # Disk storage analyser

# password manager
cask "1password"

## Browsers....
cask "firefox"
# cask "google-chrome"

## Install VS Code (extensions I use are configured after in config_dotfiles.sh)
cask "visual-studio-code"


## My utils...
cask "appcleaner"
cask "Alfred"
# cask "bartender"            # Disabled as this only uses Bartender 3 (whereas need Bartender 4 on Bigsur)
# cask "sublime-text"
cask "vlc"
cask "WhatsApp"
# cask "Inkscape"
# cask "google-drive-file-stream"  # This seems to be retired as Google has a new centralised app as of Aug 2021
cask "handbrake"
cask "fantastical"
cask "gemini"
# cask "paragon-ntfs"                # For this to work, you have to do a manual step to navigate to and open the .app (otherwise just download and installl manually!)
cask "signal"
cask "adobe-creative-cloud"
cask "cardhop"
# cask "flotato"                   # Turns web apps into desktop Mac apps (but needs some payment)
cask "dropbox"
cask "postman"                     # API platform for testing GET/POST methods etc
cask "nordvpn"
# cask "folx"


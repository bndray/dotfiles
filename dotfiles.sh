#!/bin/zsh
## NOTE: Mac fresh OS has ZSH and python3 by default.
echo "*** Starting dotfiles ***"



# Define an array of files to process
files=("zlogin" "zlogout" "zprofile" "zshenv" "p10k.zsh" "zshrc")

# Loop through each file in the array to backup and create symbolic links for
for file in "${files[@]}"; do
    # Backup existing file
    mv ~/.${file} ~/.${file}_backup

    # Create a symbolic link
    ln -sf ~/.dotfiles/.${file} ~/.${file}
done
ln -sf ~/.dotfiles/custom_plugins.zsh ~/.oh-my-zsh/custom/plugins/custom_plugins.zsh



# Install Node.js  (NOT through brew as it has caused problems in graphql serverless in the past)
which node
if [[ $? != 0 ]] ; then
    curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"
    #npm install -g yarn
fi




# Install Brew and then run it over my ~/Brewfile...
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ben/.zprofile       # disabled these two lines as they are in the symlinked .zprofile already
    # eval "$(/opt/homebrew/bin/brew shellenv)"
else
    brew update
    brew outdated
    brew upgrade
fi

# Disable brew analytics (google analytics + tracking/user ID and more)
brew analytics off

## Run Brewfile...
brew bundle install


## Load personalised settings for ITerm from $HOME/.dotfiles/iterm
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$HOME/.dotfiles/iTerm"  # Cntl+cmd+down arrow --> Guake-style pull down terminal instance
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true


## Install VS Code extensions I use...
echo "*** Installing VS Code extensions..."
extensions=(
    "amazonwebservices.aws-toolkit-vscode" 
    "dbaeumer.vscode-eslint" 
    "esbenp.prettier-vscode" 
    "eamodio.gitlens" 
    "redhat.vscode-yaml"
    "ms-python.python"
)

for extension in "${extensions[@]}"; do
    if ! code --list-extensions 2>/dev/null | grep -q "$extension"; then
        echo "Installing $extension..."
        code --install-extension "$extension"
    else
        echo "$extension is already installed"
    fi
done




echo "*** Fresh install of oh-my-zsh... ***"
#rm -rf $ZSH
unset ZSH
[[ ! -f $HOME/.oh-my-zsh ]] || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc



# Powerlevel10k fonts.... this would only be needed if the shell doesn't offer to install during the p10k configure stage)
# mkdir -p ~/Library/Fonts
# curl -L -o ~/Library/Fonts/MesloLGS_NF_Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
# curl -L -o ~/Library/Fonts/MesloLGS_NF_Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
# curl -L -o ~/Library/Fonts/MesloLGS_NF_Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
# curl -L -o ~/Library/Fonts/MesloLGS_NF_Boud_Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf



# Configure some non-default macOS preferences
sh -c "$(defaults write com.apple.finder AppleShowAllFiles true; killall Finder)"   # Updates Finder settings to show all files by default


source ~/.zshrc

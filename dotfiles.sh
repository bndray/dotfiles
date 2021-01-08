#!/bin/zsh
## NOTE: A fresh install of everything below (on Big Sur) will only take 50GB on the hard drive

# Install Brew and then run it over my ~/Brewfile...
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

## Run Brewfile...
brew bundle install

# Install Oh-my-zsh (remove any existing directory of oh-my-zsh if exists)...
rm -rf ~/.oh-my-zsh 
unset ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc



## Load config for ITerm...
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$HOME/.dotfiles/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true


## Install VS Code extensions I use...
code --install-extension rust-lang.rust         # Intsalll Rust language support in VSCode
code --install-extension vadimcn.vscode-lldb    # Installs Rust debugger extension in VSCode
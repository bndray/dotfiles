#!/bin/zsh
## NOTE: A fresh install of everything below (on Big Sur) will only take 50GB on the hard drive

# Install Brew and then run it over my ~/Brewfile...
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh-my-zsh (remove any existing directory of oh-my-zsh if exists)...
rm -rf $HOME/.Oh-my-zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## Run Brewfile...
brew bundle install


## Install VS Code extensions I use...
code --install-extension rust-lang.rust         # Intsalll Rust language support in VSCode
code --install-extension vadimcn.vscode-lldb    # Installs Rust debugger extension in VSCode
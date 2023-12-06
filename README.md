# My .dotfiles

## Orientation
This contains a script (`dotfiles.sh`) which when executed will some initialization by creating symlinks from for zsh files (e.g. `.zshrc` and `.zshenv`) to instead point to the files of the same name in this repository. After this initialization, the script them calls the brewfile (`Brewfile`). This brewfile then installs/updates all applications defined in there in sequence. After this the script continues by installing some final touches such as installing VS Code extensions and oh-my-zsh with powerlevel10k.


## Installation
1. Clone this repo into a new `.dotfiles` folder under your $HOME (i.e. `~/.dotfiles`)
2. from that folder, execute the command: `./dotfiles.sh`


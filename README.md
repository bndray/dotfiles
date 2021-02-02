# Overview of my git bare repo in my home directory
*This is based on the workflow detailed here: https://www.atlassian.com/git/tutorials/dotfiles*


## Quick start:
0. This step shouldn't be needed as it is already in the zsh config in the repo: 
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

1. Clone this repo as a bare git repository into your `$HOME/.cfg` directory: 
`git clone --bare https://github.com/bndray/dotfiles.git $HOME/.cfg`

2. Assign this alias temporarily (ie just for the current terminal session):
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

(3). Delete .`.zshrc` in home directory (if it exists) because it will get over written in step 4:
`rm ~/.zshrc`

4. Run the folllowing command to 'checkout' the contents of the repo into your home directory:
`config checkout`

5. Run `./dotfiles.sh` to start the set up (it will take around 10 minutes on a fresh system and p10K and rust installations will both require manual steps)


## Notes:
- `.zshrc` is under version control and so can be customised. However, the following files are generated during `./dotfiles.sh`:
  - `.oh-my-zsh/oh-my-zsh.zsh`
  - `.p10k.zsh`
- You can interact with the version control exactly the same as you would with git (just replace `git` with `config`):
- To see a list of files under version control "in the wild" run the following:
`config ls-tree --name-only -r HEAD`
- To see a `git status` of just files that are under version control:
`config status -uno`
- If required, execute `p10k configure` to customise the terminal





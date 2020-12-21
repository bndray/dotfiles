# Overview of my git bare repo in my home directory
This is based on the following workflow:

https://www.atlassian.com/git/tutorials/dotfiles

## Quick start:
`.zshrc` is under version control and so can be customised. However, the following files are generated during `./dotfiles.sh`:
- `.oh-my-zsh/oh-my-zsh.zsh`
- `.p10k.zsh`

1. Run `./dotfiles.sh`
2. If required, execute `p10k configure` to customise the terminal


## Working with the repo:
- You can interact with the version control exactly the same as you would with git... just replace `git` with `config`
- To see a list of files under version control "in the wild" run the following:
`config ls-tree --name-only -r HEAD`


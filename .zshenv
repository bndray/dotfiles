# [Read every time]
# This file is always sourced, so it should set environment variables which need
# to be updated frequently. PATH (or its associated counterpart path) is a good example
# because you probably don't want to restart your whole session to make it update.
# By setting it in that file, reopening a terminal emulator will start a new Zsh
# instance with the PATH value updated.

# But be aware that this file is read even when Zsh is launched to run a single
# command (with the -c option), even by another tool like make. You should be very
# careful to not modify the default behavior of standard commands because it may 
# break some tools (by setting aliases for example).

if [[ "$(uname -m)" == "arm64" ]]; then
    # For Apple Silicon Macs
    export PATH="/opt/homebrew/bin:$PATH"
else
    # For Intel Macs
    export PATH="/usr/local/bin:$PATH"
fi

export HOMEBREW_NO_ANALYTICS=1

brew update
brew outdated 
brew upgrade
echo "Brew updated 👍"
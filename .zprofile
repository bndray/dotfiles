# [Read at login]
#
# I personally treat that file like .zshenv but for commands and variables which
# should be set once or which don't need to be updated frequently:
# 
# environment variables to configure tools (flags for compilation, data folder location, etc.)
# configuration which execute commands (like SCONSFLAGS="--jobs=$(( $(nproc) - 1 ))")
# as it may take some time to execute.
# If you modify this file, you can apply the configuration updates by running a login shell:
# exec zsh --login

# The below is the best place it update the PATH dependent on whether running on a computer with silicon or intel CPU

if [[ "$(uname -m)" == "arm64" ]]; then
    # For Apple Silicon Macs
    echo "Adding /opt path for silicon CPU path"
    export PATH="/opt/homebrew/bin:$PATH"
else
    # For Intel Macs
    export PATH="/usr/local/bin:$PATH"
fi
# Set environment variables
set -x PATH /usr/local/bin $PATH

# Set the default editor to nvim
set -x EDITOR nvim

# Alias definitions
alias ll 'ls -la'
alias gs 'git status'

# Source any additional configurations if they exist
if test -f "$HOME/Library/Application Support/amazon-q/shell/bash_profile.pre.fish"
    source "$HOME/Library/Application Support/amazon-q/shell/bash_profile.pre.fish"
end

# Homebrew
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/sbin $PATH


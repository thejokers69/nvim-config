#  ~/.config/fish/config.fish

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

abbr -a p pnpm

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda3/bin/conda
    eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda3/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


# Auto-Warpify
printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish", "uname": "Darwin" }}œ' 

# Auto-Warpify
printf P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish", "uname": "$(uname)" }}œ 

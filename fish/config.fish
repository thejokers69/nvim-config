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
abbr -a f fnm
abbr -a n npm
abbr -a e exit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda3/bin/conda
    eval /opt/anaconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/opt/anaconda3/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /opt/anaconda3/bin $PATH
    end
end
# <<< conda initialize <<<

# Auto-Warpify
printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish", "uname": "%s" }}' (uname)

fnm env --use-on-cd | source
set -gx FNM_COREPACK_ENABLED true

# Cursor-specific configurations
set -gx CURSOR_SHELL_INTEGRATION true

# Enable true color support for Cursor
set -gx COLORTERM truecolor

# Set terminal type for better compatibility
set -gx TERM xterm-256color

# Add Cursor-specific aliases
abbr -a c code .
abbr -a cr 'code -r .'

# Enable fish_greeting only in interactive shells
if status is-interactive
    set -g fish_greeting "Welcome to Fish in Cursor!"

    # Check which machine we're on and store in a local variable
    set -l machine_name (hostname)

    # NVM configuration
    if functions -q nvm
        # Set default Node version
        if not test -e .nvmrc
            nvm use lts
        end
    end

    # Machine-specific configurations
    switch $machine_name
        case "MacBook-Pro*"
            # MacBook Pro specific settings
            set -gx NODE_PATH ~/.nvm/(nvm current)/lib/node_modules
        case "Mac-mini*"
            # Mac Mini specific settings
            set -gx NODE_PATH ~/.nvm/(nvm current)/lib/node_modules
    end

    # Common configuration for both machines
    if test -d ~/.nvm
        set -gx NVM_DIR ~/.nvm
    end
end

# # pnpm
# set -gx PNPM_HOME "/Users/thejokers69ml/Library/pnpm"
# if not string match -q -- $PNPM_HOME $PATH
#   set -gx PATH "$PNPM_HOME" $PATH
# end
# # pnpm end

# pnpm
set -gx PNPM_HOME /Users/thejokers69ml/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set -gx SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
source /Users/thejokers69ml/.config/op/plugins.sh
source ~/.config/op/plugins.sh

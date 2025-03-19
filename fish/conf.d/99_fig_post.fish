test -x ~/.local/bin/q; and eval (~/.local/bin/q init fish post --rcfile 99_fig_post | string split0)
function fish_prompt
    # Capture the last command's exit status
    set -l last_status $status

    # Set color based on status
    if test $last_status -eq 0
        set_color green # Success (command exists and ran fine)
    else
        set_color red # Failure (command not found or errored)
    end

    # Print a simple prompt (e.g., "> ")
    echo -n "> "

    # Reset color to normal
    set_color normal
end

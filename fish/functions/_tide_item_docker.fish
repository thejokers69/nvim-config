function _tide_item_docker
    # Check if Docker daemon socket exists
    if test -e /Users/thejoker/.docker/run/docker.sock
        # Check if Docker daemon is running
        if docker info > /dev/null 2>&1
            # If daemon is running, fetch and display the current context
            docker context inspect --format '{{.Name}}' | read -l context
            contains -- "$context" $tide_docker_default_contexts ||
                _tide_print_item docker $tide_docker_icon' ' $context
        end
    end
end


if status is-interactive
    # Commands to run in interactive sessions can go here

    # Pyenv Initialization
    status is-interactive; and pyenv init --path | source
    pyenv init - | source
    
    # Rbenv Initialization
    status --is-interactive; and source (rbenv init -|psub)

    # Jenv Initialization
    status --is-interactive; and source (jenv init -|psub)
    
end

starship init fish | source

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# 1. disable greeting
set -U fish_greeting

# 2. starship
starship init fish | source
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# 3. perl (used by vscode latex formatter)
. ~/perl5/perlbrew/etc/perlbrew.fish

# 4. $PATH
# 4.1 Set PATH for Rust
set -gx PATH $PATH $HOME/.cargo/bin
# 4.2 Python
set -gx PATH $PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin"
set -gx PATH $PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin"
set -gx PATH $PATH "/Library/Frameworks/Python.framework/Versions/3.13/bin"
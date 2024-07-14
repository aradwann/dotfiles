if status is-interactive
    # Commands to run in interactive sessions can go here
end
# golang 
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/aradwan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -gx EDITOR hx

# aliases
alias dnf dnf5
alias u "sudo dnf5 upgrade --refresh -y"
alias i "sudo dnf5 install"

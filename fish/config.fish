if status is-interactive
    # Commands to run in interactive sessions can go here
end
# golang 
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx GOPROXY https://proxy.golang.org,direct

# pnpm
set -gx PNPM_HOME "/home/aradwan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -gx EDITOR hx

# aliases
alias ur "sudo dnf upgrade --refresh -y"
alias u "sudo dnf upgrade -y"
alias i "sudo dnf install"

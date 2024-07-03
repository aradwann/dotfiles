if status is-interactive
    # Commands to run in interactive sessions can go here
end
# golang 
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/aradwan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

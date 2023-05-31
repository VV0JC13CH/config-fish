fish_add_path -m ~/.local/bin
fish_add_path -m ~/go/bin
zoxide init fish | source
alias v="vim"
alias rg="rgrep"
if status is-interactive
    # Commands to run in interactive sessions can go here
    trap _trap_exit_tmux EXIT
end

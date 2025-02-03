fish_add_path -m ~/.local/bin
fish_add_path -m ~/.golang/go/bin
fish_add_path -m ~/go/bin
fish_add_path -m ~/.dotnet
fish_add_path -m /home/linuxbrew/.linuxbrew/bin
zoxide init fish | source
alias v="vim"
alias k="kubectl"
alias rg="rgrep"
alias lg="lazygit"
alias leetcode="nvim leetcode.nvim"
set OLLAMA_MODELS "/home/wojciech/Projects/LLM/ollama_models"
# Start gnome-keyring as the SSH agent
if not pgrep -u (id -u) gnome-keyring-daemon >/dev/null
   set (gnome-keyring-daemon --start | string split "=")
end
if status is-interactive
    # Commands to run in interactive sessions can go here
    trap _trap_exit_tmux EXIT
end

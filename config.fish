fish_add_path -m ~/.local/bin
fish_add_path -m ~/AppImages
# Go
fish_add_path -m ~/.golang/go/bin
fish_add_path -m ~/go/bin
# C# .NET
fish_add_path -m ~/.dotnet
fish_add_path -m ~/.dotnet/tools
set DOTNET_ROOT "~/.dotnet"
# Python
set -x PYENV_VIRTUALENV_DISABLE_PROMPT 1 #exclude pyenv from system apps
status --is-interactive; and pyenv init - | source #enable pyenv in interactive shell
fish_add_path -m /home/linuxbrew/.linuxbrew/bin
zoxide init fish | source
alias v="nvim"
alias vim="nvim"
alias k="kubectl"
alias rg="rgrep"
alias lg="lazygit"
alias leetcode="nvim leetcode.nvim"
set OLLAMA_MODELS "/home/wojciech/Projects/LLM/ollama_models"
# Start gnome-keyring as the SSH agent
if not pgrep -f -u (id -u) gnome-keyring-daemon >/dev/null
   set (gnome-keyring-daemon --start | string split "=")
end
if status is-interactive
    # Commands to run in interactive sessions can go here
    trap _trap_exit_tmux EXIT
end

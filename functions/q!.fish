# Kills all tmux sessions and default os terminal
function q!
    set programs tmux x-terminal-emul
    for i in $programs
        pkill $i
    end
end

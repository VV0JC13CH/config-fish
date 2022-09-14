# Kills default os terminal, but leaves tmux running, so it's possible to return
function wq
    pkill x-terminal-emul
end

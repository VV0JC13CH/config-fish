# Source: https://carlosbecker.com/posts/tmux-sessionizer/
function _trap_exit_tmux
	test (tmux list-windows | wc -l) = 1 || exit
	test (tmux list-panes | wc -l) = 1 || exit
	tmux switch-client -t default
end

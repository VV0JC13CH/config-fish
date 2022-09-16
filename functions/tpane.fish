function tpane 
	set command tmux capture-pane -pS -15000
	$command
	echo Output gained by: $command
end

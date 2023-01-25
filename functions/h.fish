# Wrapper for "cd" command in home dir
function h --argument-names 'path'
    if test -n "$path"
        if test "$argv" = "proj"
			cd ~/Projects	
		else if test "$argv" = "sand"
			cd ~/Sandbox
		else if test "$argv" = "docs"
			cd ~/Documents
		else if test "$argv" = "down"
			cd ~/Downloads
		else if test "$argv" = "pics"
			cd ~/Pictures
		else if test "$argv" = "vid"
			cd ~/Videos
		else
			cd ~/$argv 
		end

    else
        echo "Follow the white rabbit!"
    end
end

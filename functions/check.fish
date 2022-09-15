function check --argument-names 'thing'
    if test -n "$thing"
        if test "$argv" = "sound"
			speaker-test -t wav -c 6
		else if test "$argv" = "speedtest"
						curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
		else
			echo "Nothing to-do"
		end

    else
        echo "Nothing to-do. Argument was not provided."
    end
end

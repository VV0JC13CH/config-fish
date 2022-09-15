function check --argument-names 'thing'
    if test -n "$thing"
        if test "$argv" = "sound"
			set command speaker-test -t wav -c 6
			echo $command
			$command
		else if test "$argv" = "speedtest"
			if not test -e /tmp/speedtest_cli/speedtest.py
				git clone https://github.com/sivel/speedtest-cli.git /tmp/speedtest_cli
			end
			python3 /tmp/speedtest_cli/speedtest.py
		else
			echo 404. No such thing as $argv! 
		end

    else
        echo "Nothing to-do. Argument was not provided."
    end
end

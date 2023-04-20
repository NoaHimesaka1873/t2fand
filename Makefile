t2fand: 
	echo "Nothing to compile!"

install: t2fand 
	cp t2fand /usr/bin
	cp t2fand.service /usr/lib/systemd/system
	chmod 644 /usr/lib/systemd/system/t2fand.service
	chmod 700 /usr/bin/t2fand


install:
	#cp he-cron /etc/cron.d/
	-useradd -d /var/lib/he -m -s /bin/false/ -U he
	cp he-ddns-update /usr/local/bin/
	cp he.conf /etc/
	cp he.timer /etc/systemd/system/
	cp he.service /etc/systemd/system/

uninstall:
	#rm -f /etc/cron.d/he-cron
	rm -f /usr/local/bin/he-ddns-update
	rm -f /etc/systemd/system/he.timer
	rm -f /etc/systemd/system/he.service
	echo "Keeping: /etc/he.conf"

INGN
====

Irssi Notification Growl Nodejs

Get desktop notifications from irssi using irssi script, nodejs and growl.
Works when irssi is running locally or on remote machine.

Requirements
------------

Server: libwww-curl-perl 
Desktop: libnotify-bin, nodejs
Nodejs modules: growl, qs

Installation
------------

	git clone git://github.com/Kuraturpa/INGN.git
	npm install
	install notificate.pl to irssi and load it

How to use
----------

	node index.js
	ssh -R 19999:localhost:19999 user@example.com
	irssi

use strict;
use warnings;
use WWW::Curl::Easy;

use Irssi;


our $VERSION = '1.00';
our %IRSSI = (
	authors     => 'Author Name(s)',
	contact     => 'author_email@example.com another_author@example.com',
	name        => 'Script Title',
	description => 'Longer script description',
	license     => 'Public Domain',
);

sub msg_private {
	my ($server, $msg, $nick, $address) = @_;
	my $curl = WWW::Curl::Easy->new;
	$curl->setopt(CURLOPT_URL, 'http://localhost:19999');
	$curl->setopt(CURLOPT_POST,1);
	$curl->setopt(CURLOPT_POSTFIELDS,'msg=' . $msg . '&nick=' . $nick . '&server=' . $server . '&address=' . $address);
	my $val = $curl->perform;
}
Irssi::signal_add('message private', 'msg_private');

#!/usr/bin/perl -w

use strict;
use Test::More tests => 6;

BEGIN { use_ok('Audio::FLAC') };

#########################

{
	my $flac = Audio::FLAC->new('data/test.flac');

	ok $flac;

	my $info = $flac->info();

	ok $info;

	ok($flac->info('SAMPLERATE') == 44100);

	my $tags = $flac->tags();

	ok $tags;

	is($flac->tags('ARTIST'), 'Wolfman');
}

__END__

use 5.00503;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> 'Audio::FLAC',
	VERSION_FROM	=> 'lib/Audio/FLAC.pm', # finds $VERSION
	PREREQ_PM	=> {}, # e.g., Module::Name => 1.1
	($] >= 5.005 ?	## Add these new keywords supported since 5.005
	(ABSTRACT_FROM	=> 'lib/Audio/FLAC.pm', # retrieve abstract from module
	AUTHOR		=> 'Dan Sully <dsully@cpan.org>') : ()),
);

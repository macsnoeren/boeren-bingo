#!/usr/bin/perl

# Convert all the wav sound files to mp3 using lame

use strict;
use warnings;

use Data::Dumper;

my @files = <*.wav>;

foreach my $file (@files) {
    my $mp3 = substr($file, 0, -3) . "mp3";
    my $output = `lame $file $mp3`;
    print($output);
}

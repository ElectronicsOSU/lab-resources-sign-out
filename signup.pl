#! /usr/bin/perl -w

use warnings;
use strict;

system('clear');

my $line;

print "Enter your last name.#: ";

while (<>) {
    my $name = $_;
    chomp($name);

    if ($name =~ m/\A\w+\.\d+\z/xms) {
        open(NAMES, '>>names.txt');
        print NAMES $name, '@osu.edu', "\n";
        close NAMES;

	system('clear');
        print "Okay $name, thanks for signing up!\n";
    } else {
        print "Sorry, try again!\n";
    }

    print "Enter your name.#: ";
}

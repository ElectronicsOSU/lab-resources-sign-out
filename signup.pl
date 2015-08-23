#! /usr/bin/perl -w

use warnings;
use strict;

my $line;

print "Enter your name.#: ";

while (<>) {
    my $name = $_;
    chomp($name);

    if ($name =~ m/\A\w+\.\d+\z/xms) {
        open(NAMES, '>>names.txt');
        print NAMES $name, "\n";
        close NAMES;

        print "Okay $name, thanks for signing up!\n";
    } else {
        print "Sorry, try again!\n";
    }

    print "Enter your name.#: ";
}

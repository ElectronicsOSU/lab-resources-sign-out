#! /usr/bin/perl -w

use warnings;
use strict;

system('clear');

print "Enter your last name.#: ";

while (<>) {
    my $name = $_;
    chomp($name);

    if ($name =~ m/\A\w+\.\d+\z/xms) {

      print "Enter the Inventory Number: ";
      my $num = <STDIN>;
      chomp($num);

        if ($num =~ m/\d+\z/xms) {
            open(NAMES, '>>names.txt');
            print NAMES $name, '@osu.edu', " | Inventory #: ", $num, "\n";
            close NAMES;

            system('clear');
            print "Thanks";

          } else {
            print "Sorry, try again. Are you sure you entered a valid integer?\n";
            }
          } else {
          print "Sorry, try again!\n";
        }

    print "Enter your last name.#: ";
  }

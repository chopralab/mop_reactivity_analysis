#!/usr/bin/perl

use warnings;
use strict;

my $name = "";

while (<>) {
    if ($_ =~ m/chk=(\S+)\.chk/i) {
        $name = $1;
    }
    if ($_ =~ m/Frequencies --\s+(\S+)\s+(\S+)\s+(\S+)/i) {
        if ( $1 < 0.0) {
            print "$1 in $name is negative\n";
        }
        if ( $2 < 0.0) {
            print "$2 in $name is negative\n";
        }
        if ( $3 < 0.0) {
            print "$3 in $name is negative\n";
        }
        next;
    }
    if ($_ =~ m/Frequencies --\s+(\S+)\s+(\S+)/i) {
        if ( $1 < 0.0) {
            print "$1 in $name is negative\n";
        }
        if ( $2 < 0.0) {
            print "$2 in $name is negative\n";
        }
        next;
    }
    if ($_ =~ m/Frequencies --\s+(\S+)/i) {
        if ( $1 < 0.0) {
            print "$1 in $name is negative\n";
        }
        next;
    }


}


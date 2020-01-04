#!/usr/bin/env perl

use warnings;
use strict;

my $literature_reference = shift;

sub get_energy {

    my $e = "";

    while(<>) {
        if ($_ =~ m/Sum of electronic and thermal Free Energies\s*=\s+(\S+)\s+/i) {
            $e = $1;
        }

        last if eof;
    }

    return $e;
}

my $reference_1 = get_energy();
my $reference_2 = get_energy();

my $analyte_1 = get_energy();
my $analyte_2 = get_energy();

my $reference_affinity = 627.509 * ($reference_1 - $reference_2);
my $error = $literature_reference - $reference_affinity;

my $analyte_affinity = 627.509 * ($analyte_1 - $analyte_2) + $error;

print "$analyte_affinity\n";


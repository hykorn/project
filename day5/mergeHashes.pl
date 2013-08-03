#!/usr/bin/perl

# Some CORE & CPAN modules:-
use List::Util;
use Algorithm::Diff qw( LCS LCS_length LCSidx
                        diff sdiff compact_diff
                        traverse_sequences traverse_balanced );

# perldoc Algorithm::Diff
%hash1 = ('North' => 10,
          'South' => 20,
          'East'  => 30,
          'West'  => 40);

%hash2 = ('First' => 50,
          'Second' => 60,
          'Third'  => 70,
          'Fourth'  => 80);

%hash3 = (%hash1, %hash2);

print %hash3;
print "\n";

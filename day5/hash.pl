#!/usr/bin/perl

# Hashes are a 2 col table:-
# First col-> KEY, Second col-> VAL
# Key @ Value is a scalar.
# key should be unique.
# un-ordered DATA STRUCTURE.

# perldoc perlcheat

# Declare:-
%encodes = ('North' => 10,
            'South' => 20,
            'East'  => 30,
            'West'  => 40);
# OR
%encodes = ('North', 10,
            'South', 20,
            'East',  30,
            'West',  40);

# Element:-
print "$encodes{South}\n";

# Slice:-
print "@encodes{North, South}\n";

# Whole:-   (will not be interpolated)
print "%encodes \n"; # will not be interpolated
print %encodes; # will work
print "\n";



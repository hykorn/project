#!/usr/bin/perl

# - List is surrounded by round braces
# - Separated by comma
# - Homo/hetrogeneous data

my ($a,$b) = (10,20);
($a,$b) = ($b,$a);
print "$a $b\n"   #swapped

# Single worded list:-
# ====================
# Quoted words list:-
# ====================
$ss = ('mon', 'tue', 'wed', 'thu');
$qq = qw(mon tue wed thu);


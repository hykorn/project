#!/usr/bin/perl

use strict;     # Speeds up execution (force scoping)
use warnings;
#use diagnostics;
# - default scoping is "our", i.e. GLOBAL
# - all variables should have a scoping i.e my/our
# - symbolic references are disabled:
   my $name = 'Jack';
   my $ref = 'name';
   print "$$ref\n"; 

my @first = (10,20,30,40);
my @second = (50,60,70,80);

# Call a function, pass this array as args - by value
# within the subroutine print only the first array elements
# print num of elements in first array
# print num of elements in second array

sub printArray
{
  # Perl can only pass array by reference ->
  my ($args1,$args2) = (shift,shift);

  print "First array = @$args1\n";

  my $len1 = $#$args1+1; # @$args1
  print "Num elements in first = $len1\n";
  my $len2 = $#$args2+1;
  print "Num elements in first = $len2\n";
}

# Perl can only pass array by reference ->
printArray(\@first,\@second);

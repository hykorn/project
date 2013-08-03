#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;   # core module to debug complex data structs

open(EMPS, "emp.lst") or die("$!");

my %hash;
while(<EMPS>)
{
  chomp;
  my ($code, $name, $dept, $sal) = split(/ +/);

  $hash{$code}{name} = $name;
  $hash{$code}{dept} = $dept;
  $hash{$code}{sal} = $sal;
}

print Dumper(\%hash);

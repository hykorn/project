#!/usr/bin/perl

sub fun($$\@)
{
  ($a,$b,$c) = @_;
  print "Yes $a $b $c\n";   
}

#fun(10);       # Not enough arguments
#fun(10,20,30); # Too many arguments

my @arr = (50,60,70);

fun(10,20,@arr);
